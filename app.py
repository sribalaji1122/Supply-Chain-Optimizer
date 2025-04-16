import streamlit as st
import pandas as pd
import numpy as np
import mysql.connector
import joblib
import bcrypt
import networkx as nx
from sklearn.preprocessing import LabelEncoder
from tensorflow.keras.models import load_model
import folium
from streamlit_folium import folium_static
from logistics_optimizer import load_data, build_graph, get_optimal_route, calculate_metrics

# --- Streamlit Config ---
st.set_page_config(page_title="Inventory & Logistics Optimizer", layout="wide")

# --- DB Connection ---
def connect_db():
    return mysql.connector.connect(
        host="localhost",
        port=3306,
        user="root",
        password="SriBalaji123.",
        database="logistics_system"
    )

# --- User Authentication ---
def register_user(email, password):
    conn = connect_db()
    cursor = conn.cursor()
    password_hash = bcrypt.hashpw(password.encode(), bcrypt.gensalt())
    try:
        cursor.execute("INSERT INTO users (email, password_hash) VALUES (%s, %s)", (email, password_hash))
        conn.commit()
        return True
    except mysql.connector.errors.IntegrityError:
        return False
    finally:
        conn.close()

def verify_user(email, password):
    conn = connect_db()
    cursor = conn.cursor()
    cursor.execute("SELECT password_hash FROM users WHERE email=%s", (email,))
    result = cursor.fetchone()
    conn.close()
    if result:
        return bcrypt.checkpw(password.encode(), result[0].encode())
    return False

# --- Load Models & Data ---
def load_all_resources():
    supplier_model = joblib.load('models/supplier_model.pkl')
    inventory_model = load_model('models/inventory_model.keras')
    logistics_model = joblib.load('models/logistics_model.pkl')

    supplier_data = pd.read_csv('data/supplier_data.csv')
    sales_data = pd.read_csv('data/sales_data.csv')

    return supplier_model, inventory_model, logistics_model, supplier_data, sales_data

# --- Dashboard Modules ---
def supplier_selection(supplier_model, supplier_data):
    st.subheader("Top 5 Suppliers")
    supplier_data['predicted_score'] = supplier_model.predict(supplier_data[['cost', 'quality', 'lead_time', 'reliability']])
    top_suppliers = supplier_data.nlargest(5, 'predicted_score')
    st.dataframe(top_suppliers[['name', 'predicted_score']])

def inventory_optimization(inventory_model, sales_data):
    st.subheader("Predicted Demand & Required Quantity")
    X = np.array(sales_data[['past_sales', 'seasonality', 'trend']])
    sales_data['predicted_demand'] = inventory_model.predict(X)
    sales_data['required_quantity'] = sales_data['predicted_demand'] * 1.2
    st.dataframe(sales_data[['product', 'predicted_demand', 'required_quantity']])

def logistics_optimization():
    st.subheader("📍 Logistics Route Estimator")
    df = load_data()
    G = build_graph(df)
    cities = sorted(set(df["source"]).union(set(df["destination"])))

    source = st.selectbox("Select Source", cities)
    destination = st.selectbox("Select Destination", cities)
    fuel_cost = st.number_input("Fuel Cost (₹ per litre)", value=100)
    weather = st.selectbox("Weather Condition", ["Sunny", "Winter", "Rain", "Air"])
    weather_factor = {"Sunny": 0.9, "Winter": 1.2, "Rain": 1.5, "Air": 1.3}

    if st.button("Optimize Route"):
        if source == destination:
            st.warning("Source and destination cannot be the same.")
        else:
            route = get_optimal_route(G, source, destination)
            if route:
                dist, eta, cost = calculate_metrics(G, route, fuel_cost, weather_factor[weather])
                st.success(f"✅ Route Found: {' ➡️ '.join(route)}")
                st.write(f"**Total Distance:** {dist} km")
                st.write(f"**Estimated Time of Arrival (ETA):** {eta} hours")
                st.write(f"**Estimated Fuel Cost:** ₹{cost}")

                # Route map
                m = folium.Map(location=[23.5937, 80.9629], zoom_start=5)
                for city in route:
                    city_data = df[df['source'] == city].iloc[0]
                    folium.Marker([city_data.get('lat', 23.5), city_data.get('lon', 80.9)], popup=city).add_to(m)
                folium.PolyLine([(df[df['source'] == city].iloc[0].get('lat', 23.5),
                                  df[df['source'] == city].iloc[0].get('lon', 80.9)) for city in route],
                                color="blue", weight=3).add_to(m)
                st.subheader("📍 Route Map")
                folium_static(m)
            else:
                st.error("❌ No route found between the selected cities.")

def purchase_orders(sales_data):
    st.subheader("📦 Low Stock Alerts & Purchase Orders")

    # ✅ Calculate reorder_quantity if not already present
    if 'reorder_quantity' not in sales_data.columns:
        sales_data['reorder_quantity'] = sales_data['reorder_threshold'] - sales_data['current_stock']
        sales_data['reorder_quantity'] = sales_data['reorder_quantity'].apply(lambda x: max(x, 0))

    # ✅ Filter products that need restocking
    low_stock = sales_data[sales_data['current_stock'] < sales_data['reorder_threshold']].copy()

    if not low_stock.empty:
        # ✅ Add supplier name column
        low_stock['supplier'] = "Supplier A"  # Replace with dynamic logic if needed

        # ✅ Display reorder information
        st.dataframe(low_stock[['product', 'current_stock', 'reorder_threshold', 'reorder_quantity', 'supplier']])

        # ✅ Prepare downloadable CSV
        csv = low_stock[['product', 'reorder_quantity', 'supplier']].to_csv(index=False)
        st.download_button(
            label="⬇️ Download Purchase Orders CSV",
            data=csv,
            file_name="purchase_orders.csv",
            mime="text/csv"
        )
    else:
        st.success("✅ Inventory is sufficient. No purchase orders needed.")


# --- Main Dashboard ---
def show_dashboard():
    st.title("📦 Inventory Auto-Replenishment & Logistics System")
    supplier_model, inventory_model, logistics_model, supplier_data, sales_data = load_all_resources()
    menu = ["Supplier Selection", "Inventory Optimization", "Logistics Optimization", "Purchase Orders"]
    choice = st.sidebar.selectbox("Select Module", menu)

    if choice == "Supplier Selection":
        supplier_selection(supplier_model, supplier_data)
    elif choice == "Inventory Optimization":
        inventory_optimization(inventory_model, sales_data)
    elif choice == "Logistics Optimization":
        logistics_optimization()
    elif choice == "Purchase Orders":
        purchase_orders(sales_data)

# --- Login and Signup Page ---
def login_signup():
    st.title("🔐 Login / Register")
    tab1, tab2 = st.tabs(["Login", "Register"])

    with tab1:
        email = st.text_input("Email", key="login_email")
        password = st.text_input("Password", type="password", key="login_password")
        if st.button("Login"):
            if verify_user(email, password):
                st.session_state["logged_in"] = True
                st.session_state["user_email"] = email
                st.success(f"Welcome {email}!")
            else:
                st.error("Invalid email or password.")

    with tab2:
        new_email = st.text_input("New Email", key="register_email")
        new_password = st.text_input("New Password", type="password", key="register_password")
        if st.button("Register"):
            if register_user(new_email, new_password):
                st.success("User registered successfully! Please login.")
            else:
                st.error("Email already exists!")

# --- Main App ---
def main():
    if "logged_in" not in st.session_state:
        st.session_state["logged_in"] = False
    if st.session_state["logged_in"]:
        show_dashboard()
    else:
        login_signup()

if __name__ == "__main__":
    main()