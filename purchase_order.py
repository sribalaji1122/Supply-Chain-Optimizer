import pandas as pd
import os

# === Configuration ===
INVENTORY_CSV_PATH = "data/inventory_data.csv"

# === Step 1: Load Inventory Data ===
def load_inventory_data(filepath: str) -> pd.DataFrame:
    if not os.path.exists(filepath):
        raise FileNotFoundError(f"❌ Error: File '{filepath}' not found.")
    
    df = pd.read_csv(filepath, encoding="utf-8")
    df.columns = df.columns.str.strip().str.lower()  # Normalize column names
    return df

# === Step 2: Validate Required Columns ===
def validate_columns(df: pd.DataFrame, required: set):
    missing = required - set(df.columns)
    if missing:
        raise KeyError(f"❌ Error: Missing required columns: {missing}")

# === Step 3: Calculate Reorder Quantity ===
def calculate_reorder_quantity(df: pd.DataFrame):
    # Ensure that 'current_stock' and 'reorder_threshold' columns exist
    if 'current_stock' not in df.columns or 'reorder_threshold' not in df.columns:
        raise KeyError("❌ Error: Missing 'current_stock' or 'reorder_threshold' column.")
    
    # Calculate reorder quantity
    df['reorder_quantity'] = df['reorder_threshold'] - df['current_stock']
    df['reorder_quantity'] = df['reorder_quantity'].apply(lambda x: x if x > 0 else 0)  # No negative reorder quantities
    
    return df

# === Step 4: Generate Purchase Orders ===
def generate_purchase_orders(df: pd.DataFrame) -> pd.DataFrame:
    return df[df['current_stock'] < df['reorder_threshold']]

# === Step 5: Display Purchase Orders ===
def display_purchase_orders(purchase_orders: pd.DataFrame):
    if purchase_orders.empty:
        print("✅ Inventory is sufficient. No purchase orders needed.")
    else:
        print("\n🛒 Purchase Orders Generated:")
        for _, row in purchase_orders.iterrows():
            print(f"🔹 Order {row['reorder_quantity']} units of {row['product']} from Supplier A")

# === Main Execution ===
def main():
    required_columns = {'product', 'current_stock', 'reorder_threshold'}
    
    try:
        # Step 1: Load inventory data
        inventory_df = load_inventory_data(INVENTORY_CSV_PATH)
        
        # Step 2: Validate necessary columns
        validate_columns(inventory_df, required_columns)
        
        # Step 3: Calculate reorder quantity
        inventory_df = calculate_reorder_quantity(inventory_df)
        
        # Debugging: Check if reorder_quantity is added correctly
        print(inventory_df.head())  # Print the first few rows to check
        
        # Step 4: Generate and display purchase orders
        purchase_orders = generate_purchase_orders(inventory_df)
        display_purchase_orders(purchase_orders)
        
    except (FileNotFoundError, KeyError) as e:
        print(e)

if __name__ == "__main__":
    main()
