# Music Recommendation App

Welcome to the Music Recommendation App! This Node.js and Express project allows users to discover new songs. It provides personalized music recommendations based on user input of genre and artist.

## Project Structure

- `public/`: Folder containing static files such as images, CSS, and JS files.
    - `index.html`: Main HTML file for the application home page.
- `views/`: Folder containing ejs files
- `app.js`: Server file containing the main logic for handling HTTP requests, integrating with the MySQL Database, and serving static files.

## Files Included

- `app.js`: This file contains the main application logic. It sets up the Express.js server, handles routes, connects to the MySQL database, and renders EJS templates.
- `songs.sql`: This SQL script file contains the schema definition and sample data for the `songs` table, which stores information about songs including title, artist, genre, release date, duration, album, and Spotify link.
- `personalizedMusic.ejs`: This EJS template file contains the HTML markup for the personalized music recommendation form. It allows users to select a genre and artist to get recommendations.
- `recommendations.ejs`: This EJS template file contains the HTML markup for displaying the music recommendations. It dynamically generates Spotify iframes for each recommended song.
- `index.html`: This HTML file contains the landing page for the application. It provides links to different genres of music.

## Features

- **User Input**: Users can specify their preferred genre and artist to get personalized music recommendations.
- **Database:** The app uses a MySQL database to store and retrieve song information.
- **Responsive Design**: The application is designed to work on various devices.

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/music-recommendation-app.git 
   cd music-recommendation-app
   ```

2. **Install dependencies:**

    ```bash
    npm install
    npm install express mysql dotenv ejs
    ```

3. **Set up the MySQL database:**

- Create a MySQL database called as `wt_project`
- Run the `songs.sql` queries in a MySQL command-line client

4. **Configure the database connection:**

- Create a new file `.env` in the same directory
- Add the database connection details in the `.env` file
```bash
DB_HOST = 'localhost'
DB_USER = 'root'
DB_PASSWORD = 'your-password'
DB_NAME = 'wt_project'
DB_PORT = 3306
```

5. **Run the application:**

```bash
node app.js
```

The app will be accessible at http://localhost:3000.

