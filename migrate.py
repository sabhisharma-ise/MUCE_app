from pymongo import MongoClient

SOURCE_DB_URL = "mongodb+srv://admin-sabhi:Test123@cluster0.7jeavzk.mongodb.net/"
DESTINATION_DB_URL = "mongodb://127.0.0.1:27017/"

# Connect to the source database
source_client = MongoClient(SOURCE_DB_URL)
source_db = source_client['songDB']
source_collection = source_db['songs']

# Connect to the destination database
destination_client = MongoClient(DESTINATION_DB_URL)
destination_db = destination_client['songD']
destination_collection = destination_db['songs']

# Fetch data from the source collection
data_to_transfer = source_collection.find()

if data_to_transfer:
    # Transfer data to the destination collection
    destination_collection.insert_many(data_to_transfer)
    print("Database users' data transferred.")
else:
    print("Database data not found & No data to transfer.")

# Close the database connections
source_client.close()
destination_client.close()