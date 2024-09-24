# Music Recommendation App

Welcome to the Music Recommendation App! This Node.js and Express project allows users to discover new songs. It provides personalized music recommendations based on user input of genre and artist.

## Project Structure

- `public/`: Folder containing static files such as images, CSS, and JS files.
    - `index.html`: Main HTML file for the application home page.
- `views/`: Folder containing ejs files
- `app.js`: Server file containing the main logic for handling HTTP requests, integrating with the MySQL Database, and serving static files.
- `songs.json`: A JSON file containing song data exported from the MongoDB database.
- `import_songs.py`: A Python script to import songs from `songs.json` into a user-provided MongoDB database.

## Files Included

- `app.js`: This file contains the main application logic. It sets up the Express.js server, handles routes, connects to the MySQL database, and renders EJS templates.
- `songs.json`: This JSON file contains the schema definition and sample data for songs, including title, artist, genre, release date, duration, album, and Spotify link.
- `personalizedMusic.ejs`: This EJS template file contains the HTML markup for the personalized music recommendation form. It allows users to select a genre and artist to get recommendations.
- `recommendations.ejs`: This EJS template file contains the HTML markup for displaying the music recommendations. It dynamically generates Spotify iframes for each recommended song.
- `index.html`: This HTML file contains the landing page for the application. It provides links to different genres of music.
- `import_songs.py`: A Python script for importing songs from the `songs.json` file into a specified MongoDB database.

## Features

- **User Input**: Users can specify their preferred genre and artist to get personalized music recommendations.
- **Database:** The app uses a MySQL database to store and retrieve song information.
- **Responsive Design**: The application is designed to work on various devices.

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/sabhisharma-ise/MUCE_app.git 
   cd MUCE_app
   ```

2. **Install dependencies:**

    ```bash
    npm i
    npm i mongoose express dotenv ejs
    ```

3. **Configure the `import_songs.py` file:**

- Update the DESTINATION_DB_URL to point to your local or remote MongoDB instance.

4. **Run the `import_songs.py` script:**

    ```bash
    python import_songs.py
    ```
    This script will transfer songs data from the `songs.json` to your provided local or remote MongoDB instance.

5. **Configure the database connection:**

- Create a new file `.env` in the same directory
- Add the database connection details in the .env file
    ```bash
    MONGO_URI=your-mongodb-uri
    ```

6. **Run the application:**

    ```bash
    node app.js
    ```

The app will be accessible at http://localhost:3000.

