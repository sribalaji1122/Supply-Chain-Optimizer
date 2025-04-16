import os
import pandas as pd
import joblib
from sklearn.ensemble import RandomForestRegressor

# Ensure the 'models' directory exists
os.makedirs("models", exist_ok=True)

# ✅ Sample training data (Replace with real logistics data)
data = {
    "distance": [5, 10, 15, 20, 25, 30],
    "traffic_level": [1, 2, 3, 2, 1, 3],
    "weather_conditions": [0, 1, 0, 1, 0, 1],  # 0 = Clear, 1 = Rainy
    "ETA": [10, 20, 30, 40, 50, 60]  # Target variable (Estimated Time of Arrival)
}

df = pd.DataFrame(data)

# Prepare training data
X = df.drop(columns=["ETA"])
y = df["ETA"]

# Train a simple model
model = RandomForestRegressor()
model.fit(X, y)

# ✅ Save the trained model
joblib.dump(model, "models/logistics_model.pkl")

print("✅ Logistics Model trained and saved successfully as 'models/logistics_model.pkl'!")
