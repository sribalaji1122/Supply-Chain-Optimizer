import os
import pandas as pd
import numpy as np
from tensorflow.keras.models import Sequential, load_model
from tensorflow.keras.layers import LSTM, Dense

# Define file paths
model_path = "models/inventory_model.keras"
sales_data_path = "data/sales_data.csv"

# ✅ Ensure the 'models' directory exists
os.makedirs("models", exist_ok=True)

# ✅ Ensure the 'data' directory exists
os.makedirs("data", exist_ok=True)

# ✅ Check if the model exists, if not, create & save it
if not os.path.exists(model_path):
    print("⚠️ Model not found! Training a new model...")

    # Sample LSTM model (Replace with actual training process)
    model = Sequential([
        LSTM(50, return_sequences=True, input_shape=(10, 1)),  # Adjust input shape
        LSTM(50),
        Dense(1)
    ])

    # Save the model
    model.save(model_path)
    print(f"✅ Model trained and saved at {model_path}")

# ✅ Load the pre-trained LSTM model
model = load_model(model_path)
print("✅ Model loaded successfully!")

# ✅ Check if sales data exists
if not os.path.exists(sales_data_path):
    raise FileNotFoundError(f"❌ Sales data file not found: {sales_data_path}")

# ✅ Load sales data
sales_data = pd.read_csv(sales_data_path)

# ✅ Check if required columns exist
required_columns = ['past_sales', 'seasonality', 'trend', 'product']
missing_columns = [col for col in required_columns if col not in sales_data.columns]

if missing_columns:
    raise KeyError(f"❌ Missing required columns in sales_data.csv: {missing_columns}")

# ✅ Prepare input features
X = np.array(sales_data[['past_sales', 'seasonality', 'trend']])

# ✅ Predict demand
predicted_demand = model.predict(X)

# ✅ Add predictions to DataFrame
sales_data['predicted_demand'] = predicted_demand.flatten()
sales_data['required_quantity'] = sales_data['predicted_demand'] * 1.2  # 20% buffer

# ✅ Output product-wise prediction
output = sales_data[['product', 'predicted_demand', 'required_quantity']]
print(output)
