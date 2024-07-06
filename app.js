// Load environment variables
require('dotenv').config();

// Import dependencies
const express = require('express');
const mysql = require('mysql');
const path = require('path');

// Create and configure Express app
const app = express();
const PORT = process.env.PORT || 3000;

app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'public')));

// Create MySQL connection
const createConnection = () => mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: process.env.DB_PORT
});

// Route handlers
app.get('/', (req, res) => {
  res.sendFile('index.html', { root: path.join(__dirname, 'public') });
});

app.get('/getRecommendations', (req, res) => {
  res.render('personalizedMusic');
});

app.post('/getRecommendations', (req, res) => {
  const { genre, artist } = req.body;

  const con = createConnection();
  con.connect(err => {
    if (err) {
      console.error('Error connecting to the database:', err);
      return res.status(500).send('Database connection error');
    }

    console.log("Connected to the database");

    const query = `
      SELECT title AS Title, artist AS Artist, genre AS Genre, release_date AS 'Release Date', duration AS Duration, album AS Album, 
      spotify_link AS Spotify 
      FROM songs 
      WHERE artist = ? AND genre = ?;
    `;

    // Used parameter binding (? placeholders) in the SQL query to prevent SQL injection.
    con.query(query, [artist, genre], (err, result) => {
      if (err) {
        console.error('Error executing query:', err);
        return res.status(500).send('Query execution error');
      }

      // Converting spotify link to embed link
      const recommendations = result.map(song => {
        const parts = song.Spotify.split('?si=');
        const baseLink = parts[0];
        const newLink = `${baseLink.replace('/track/', '/embed/track/')}?utm_source=generator`;

        return {
          ...song,
          'Spotify Embed': newLink
        };
      });

      res.render('recommendations', { recommendations });
    });

    con.end(err => {
      if (err) console.error('Error ending the connection:', err);
    });
  });
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});

module.exports = app;
