import pandas as pd
from sklearn.preprocessing import MinMaxScaler
from sklearn.ensemble import RandomForestRegressor
import joblib

# Load supplier data
supplier_data = pd.read_csv('data/supplier_data.csv')

# Normalize features
scaler = MinMaxScaler()
features = ['cost', 'quality', 'lead_time', 'reliability']
supplier_data[features] = scaler.fit_transform(supplier_data[features])

# AI Model (Random Forest)
model = RandomForestRegressor(n_estimators=100, random_state=42)
X = supplier_data[features]
y = supplier_data['supplier_score']
model.fit(X, y)

# Save model
joblib.dump(model, 'models/supplier_model.pkl')

# Predict supplier scores
supplier_data['predicted_score'] = model.predict(X)
top_suppliers = supplier_data.nlargest(5, 'predicted_score')

# Output top 5 suppliers
print(top_suppliers[['name', 'predicted_score']])
