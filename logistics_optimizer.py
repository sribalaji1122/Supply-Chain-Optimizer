# logistics_optimizer.py
import pandas as pd
import networkx as nx

# Load dataset
def load_data():
      # 200 records of Indian cities
    df = pd.read_csv ("data/logistics_data.csv")

    return df

# Build graph
def build_graph(df):
    G = nx.DiGraph()
    for _, row in df.iterrows():
        src = row['source']
        dest = row['destination']
        distance = row['distance']
        traffic = row['traffic_level']
        weather = row['weather_conditions']
        weight = distance + traffic + weather  # Adjust for better prediction
        G.add_edge(src, dest, weight=weight, distance=distance, traffic=traffic, weather=weather)
    return G

# Find optimal route using Dijkstra
def get_optimal_route(G, src, dest):
    try:
        path = nx.dijkstra_path(G, source=src, target=dest, weight='weight')
        return path
    except nx.NetworkXNoPath:
        return None

# Calculate total metrics
def calculate_metrics(G, path, fuel_cost_per_liter, weather_condition_factor):
    total_distance = 0
    total_traffic = 0
    total_weather = 0
    for i in range(len(path) - 1):
        edge = G[path[i]][path[i + 1]]
        total_distance += edge['distance']
        total_traffic += edge['traffic']
        total_weather += edge['weather']
    
    avg_speed = 40 / (1 + 0.1 * total_traffic + 0.1 * total_weather * weather_condition_factor)
    eta_hours = total_distance / avg_speed
    fuel_consumption_per_km = 0.12  # 12km per litre average
    total_fuel_cost = (total_distance / (1 / fuel_consumption_per_km)) * fuel_cost_per_liter

    return total_distance, round(eta_hours, 2), round(total_fuel_cost, 2)
