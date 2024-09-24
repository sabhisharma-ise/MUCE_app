from pymongo import MongoClient
import json

SOURCE_FILE = "songs.json"  # File containing the exported songs
DESTINATION_DB_URL = ("mongodb://127.0.0.1:27017/")  # User-provided MongoDB URL
DESTINATION_DB_NAME = ("songDB")  # User-defined database name
DESTINATION_COLLECTION_NAME = "songs"  # The destination collection name

# Connect to the destination database
destination_client = MongoClient(DESTINATION_DB_URL)
destination_db = destination_client[DESTINATION_DB_NAME]
destination_collection = destination_db[DESTINATION_COLLECTION_NAME]

# Load data from the JSON file
with open(SOURCE_FILE, 'r') as file:
    data_to_import = json.load(file)

# Insert data into the destination collection
if data_to_import:
    destination_collection.insert_many(data_to_import)
    print(f"Imported {len(data_to_import)} songs to {DESTINATION_DB_NAME}.{DESTINATION_COLLECTION_NAME}.")
else:
    print("No data found to import.")

# Close the database connection
destination_client.close()
