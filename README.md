# Music Recommendation App

Welcome to the Music Recommendation App! This Node.js and Express project allows users to discover new songs based on their preferred genre and artist.

## Project Structure

- `public/`: Folder containing static files such as images, CSS, and JS files.
    - `index.html`: Main HTML file for the application home page.
- `views/`: Folder containing ejs files
- `app.js`: Server file containing the main logic for handling HTTP requests, integrating with the MySQL Database, and serving static files.

## Features

- **User Input**: Users can specify their preferred genre and artist to get personalized music recommendations.
- **Database:** The app uses a MySQL database to store and retrieve song information.
- **Responsive Design**: The application is designed to work on various devices.

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/your-music-recommendation-app.git 
   cd your-music-recommendation-app
   ```

2. **Install dependencies:**

    ```bash
    npm install
    ```

3. **Set up the MySQL database:**

- Create a MySQL database named *my-project*.
- Import the songs.sql file into the *my-project* database.

4. **Configure the database connection:**

- Open the app.js file.
- Update the database connection details:
```bash
const con = mysql.createConnection({
  host: 'localhost',
  user: 'your-username',
  password: 'your-password',
  database: 'my-project',
  port: 'port-no'
});
```

5. **Run the application:**

```bash
npm run dev
```

The app will be accessible at http://localhost:3000.

