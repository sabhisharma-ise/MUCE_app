# Music Recommendation App

Welcome to the Music Recommendation App! This Node.js and Express project allows users to discover new songs. It provides personalized music recommendations based on user input of genre and artist.

## Project Structure

- `public/`: Folder containing static files such as images, CSS, and JS files.
    - `index.html`: Main HTML file for the application home page.
- `views/`: Folder containing ejs files
- `app.js`: Server file containing the main logic for handling HTTP requests, integrating with the MySQL Database, and serving static files.
- `migrate.py`: Python script for migrating songs from my MongoDB Atlas to your local MongoDB instance or another MongoDB Atlas instance.

## Files Included

- `app.js`: This file contains the main application logic. It sets up the Express.js server, handles routes, connects to the MySQL database, and renders EJS templates.
- `migrate.py`: This Python script transfers song data from my MongoDB Atlas database to any specified MongoDB instance, whether local or remote.
- `personalizedMusic.ejs`: This EJS template file contains the HTML markup for the personalized music recommendation form. It allows users to select a genre and artist to get recommendations.
- `recommendations.ejs`: This EJS template file contains the HTML markup for displaying the music recommendations. It dynamically generates Spotify iframes for each recommended song.
- `index.html`: This HTML file contains the landing page for the application. It provides links to different genres of music.

## Features

- **User Input**: Users can specify their preferred genre and artist to get personalized music recommendations.
- **Database:** The app uses a MySQL database to store and retrieve song information.
- **Responsive Design**: The application is designed to work on various devices.
- **Data Migration**: The `migrate.py` script allows for easy transfer of song data from my MongoDB Atlas to any MongoDB instance.

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/sabhisharma-ise/MUCE_app.git 
   cd MUCE_app
   ```

2. **Install dependencies:**

    ```bash
    npm i
    npm i express dotenv ejs
    pip install pymongo
    ```

3. **Configure the `migrate.py` file:**

- Update the DESTINATION_DB_URL to point to your local or remote MongoDB instance.

4. **Run the migration script:**

    ```bash
    python migrate.py
    ```
    This script will transfer song data from the specified MongoDB Atlas database to your provided local or remote MongoDB instance.

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

