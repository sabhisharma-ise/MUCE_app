const express = require('express');
const mysql = require('mysql');

require('dotenv').config();

var con = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: process.env.DB_PORT
});

const app = express();
const PORT = process.env.PORT || 3000;

app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: true }));
app.use(express.static( __dirname + "/public/" ));

app.get('/', (req, res) => {
  res.sendFile('index.html', {root: path.join(__dirname, 'public')});
});

app.get('/getRecommendations', (req, res) => {
  res.render('personalizedMusic');
});

app.post('/getRecommendations', (req, res) => {
  const inputGenre = req.body.genre;
  const inputArtist = req.body.artist;

  con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");

    query = `SELECT title AS Title, artist AS Artist, genre AS Genre, release_date AS 'Release Date', duration AS Duration, album AS Album, 
    spotify_link AS Spotify FROM songs WHERE artist = '${inputArtist}' AND genre = '${inputGenre}';`

    // SQL Query
    con.query(query, async function (err, result, fields) {
      if (err) throw err;

      // Function to manipulate Spotify link to resemble the embed link
      // const link = result[0].Spotify;
      // const parts = link.split('?si=');
      // const baseLink = parts[0];
      // const queryParameters = parts[1];
      // const newLink = `${baseLink.replace('/track/', '/embed/track/')}` + `?utm_source=generator`;

      // console.log(newLink);

      // Check if there is at least one result
      if (result.length > 0) {

        // Create the recommendations array
        const recommendations = result.map(song => {
          // Function to manipulate Spotify link to resemble the embed link
          const link = song.Spotify;
          const parts = link.split('?si=');
          const baseLink = parts[0];
          const queryParameters = parts[1];
          const newLink = `${baseLink.replace('/track/', '/embed/track/')}` + `?utm_source=generator`;

          return {
            Title: song.Title,
            Artist: song.Artist,
            Genre: song.Genre,
            'Release Date': song['Release Date'],
            Duration: song.Duration,
            Album: song.Album,
            Spotify: song.Spotify,
            'Spotify Embed': newLink
          };
        });

        // Create the recommendations object
        // const recommendations = [
        //   {
        //     Title: result[0].Title,
        //     Artist: result[0].Artist,
        //     Genre: result[0].Genre,
        //     'Release Date': result[0]['Release Date'],
        //     Duration: result[0].Duration,
        //     Album: result[0].Album,
        //     Spotify: result[0].Spotify,
        //     'Spotify Embed': newLink
        //   },
        // ];

        // Render the recommendations.ejs page and pass the recommendations data
        res.render('recommendations', { recommendations });
      } else {
        // No recommendations found
        res.render('recommendations', { recommendations: [] });
      }
    });

    // Reconnect in order to prevent the error: "Cannot enqueue Handshake after invoking quit"
    con.end(function (err) {
      if (err) { console.log("Error ending the connection:", err); }
      con = mysql.createConnection({
        host: process.env.DB_HOST,
        user: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        database: process.env.DB_NAME,
        port: process.env.DB_PORT
      });
    });
  });
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});

module.exports = app;