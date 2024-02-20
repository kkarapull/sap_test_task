from flask import Flask, jsonify
import requests
import schedule
import time
import sqlite3
import json

app = Flask(__name__)
aqi_data = {"AQI": None, "last_update": None}

# Create SQLite connection
conn = sqlite3.connect('air_quality.db')
c = conn.cursor()

# Create a table if it doesn't exist
c.execute('''CREATE TABLE IF NOT EXISTS air_quality (id INTEGER PRIMARY KEY AUTOINCREMENT, data JSON)''')

def fetch_aqi_data():
    api_url = "https://api.waqi.info/feed/stuttgart/?token=9dac69ea73278fa083eeb92fd25dc88cfc411d8d"
    response = requests.get(api_url)
    
    if response.status_code == 200:
        data = response.json()
        aqi = data['data']['aqi']
        time_str = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
        aqi_data["AQI"] = aqi
        aqi_data["last_update"] = time_str
        
        # Store the JSON data in the database
        c.execute("INSERT INTO air_quality (data) VALUES (?)", (json.dumps(data),))
        conn.commit()
        
    else:
        print("Failed to fetch AQI data")
    return jsonify(data)

schedule.every(15).minutes.do(fetch_aqi_data)

# Endpoint for status
@app.route('/status', methods=['GET'])
def get_status():
    return jsonify({"status": "Application is running"})

# Endpoint to get current AQI
@app.route('/aqi', methods=['GET'])
def get_aqi():
    return jsonify(aqi_data)

# Endpoint to refresh
@app.route('/refresh', methods=['GET'])
def refresh_aqi_data():
    api_url = "https://api.waqi.info/feed/stuttgart/?token=9dac69ea73278fa083eeb92fd25dc88cfc411d8d"
    response = requests.get(api_url)
    
    if response.status_code == 200:
        data = response.json()
        aqi = data['data']['aqi']
        time_str = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
        aqi_data["AQI"] = aqi
        aqi_data["last_update"] = time_str
    else:
        print("Failed to refresh AQI data")
    return jsonify(data)

if __name__ == '__main__':
    app.run(debug=False)

    # Start the scheduler
    while True:
        schedule.run_pending()
        time.sleep(1)