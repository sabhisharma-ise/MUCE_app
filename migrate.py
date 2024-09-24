#!/usr/bin/python
# migrate.py
# Author: Anirudh Parui (anirudh@ambab.com)
# Date: Dec 11, 2014
# Version: 1.0.1
# Purpose: Migrate Songs from MySQL to Mongo
# Dependencies: python-pip, pymongo, mysqlclient

import MySQLdb as mydb  # Import MySQL Library
import pymongo as mondb  # Import MongoDB Library
import multiprocessing as mp  # Import Multiprocessing


# MySQL Config
myConfig = {
    'host': 'localhost',
    'username': 'root',
    'password': 'sabhi',
    'db': 'wt_project',
    'port': 3306
}

# MongoDB Connection
moncon = mondb.MongoClient('mongodb+srv://admin-sabhi:Test123@cluster0.7jeavzk.mongodb.net/songDB')
mongo_db = moncon.songDB.songs

# Number of threads is 3 times the CPU on the machine, i.e., 3 threads per CPU
threads = 3 * mp.cpu_count()


# Insert songs into MongoDB
def index(song):
    # Create a MongoDB client inside the worker process
    try:
        moncon = mondb.MongoClient('mongodb+srv://admin-sabhi:Test123@cluster0.7jeavzk.mongodb.net/songDB')
        mongo_db = moncon.songDB.songs
        
        print(f"Processing song: {song}")  # Debugging line
        
        # Check if the song already exists by title (or song_id if you prefer)
        songExist = mongo_db.find_one({'title': song[1]})

        if songExist is None:
            # Create a new song entry
            new_song = {
                'song_id': int(song[0]),  # Assuming song_id is the first element
                'title': song[1],          # Title of the song
                'artist': song[2],         # Artist name
                'genre': song[3],          # Genre
                'duration': str(song[4]),   # Duration as a string
                'album': song[5],          # Album name
                'spotify_link': song[6]    # Spotify link
            }

            mongo_db.insert_one(new_song)
            print(f'Song: {song[1]} indexed')  # Confirm insertion
        else:
            print(f'Song: {song[1]} already exists')  # Confirm existence
    except Exception as e:
        print(f"Error inserting song {song[1]}: {e}")  # Catch and display any error

    return True


# Fetch songs from MySQL
def fetchSongs():
    mycon = mydb.connect(
        host=myConfig['host'],
        user=myConfig['username'],
        passwd=myConfig['password'],
        db=myConfig['db'],
        port=myConfig['port']
    )
    
    try:
        cur = mycon.cursor()
        cur.execute("""
            SELECT song_id, title, artist, genre, duration, album, spotify_link 
            FROM songs
        """)
        songs = cur.fetchall()
        print(f"Fetched songs: {songs}")  # Debugging line
        return songs
    finally:
        mycon.close()


# Main function
def main():
    songs = fetchSongs()

    pool = mp.Pool(threads)
    for song in songs:
        pool.apply_async(index, args=(song,))
    pool.close()
    pool.join()


if __name__ == "__main__":
    main()
