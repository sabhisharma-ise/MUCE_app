// Load environment variables
require('dotenv').config();

// Import dependencies
const express = require('express');
const mongoose = require('mongoose');
const path = require('path');

// Create and configure Express app
const app = express();
const PORT = process.env.PORT || 3000;

app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'public')));

// Create Mongoose connection
mongoose.connect(process.env.MONGO_URI)
.then(() => {
    console.log('Connected to MongoDB');
}).catch((err) => {
    console.log('Failed to connect to MongoDB:', err);
});

// Define the Mongoose schema for the songs
const songSchema = new mongoose.Schema({
    title: String,
    artist: String,
    genre: String,
    duration: String,
    album: String,
    spotify_link: String
});

// Create the Mongoose model for the songs
const Song = mongoose.model('Song', songSchema);

// Route handlers
app.get('/', (req, res) => {
  res.sendFile('index.html', { root: path.join(__dirname, 'public') });
});

app.get('/getRecommendations', (req, res) => {
  res.render('personalizedMusic');
});

app.post('/getRecommendations', async (req, res) => {
  const { genre, artist } = req.body;

  try {
    const recommendations = await Song.find({ artist, genre }, {
      title: 1, artist: 1, genre: 1, release_date: 1, duration: 1, album: 1, spotify_link: 1
    });

    // Converting spotify link to embed link
    const modifiedRecommendations = recommendations.map(song => {
      const parts = song.spotify_link.split('?si=');
      const baseLink = parts[0];
      const newLink = `${baseLink.replace('/track/', '/embed/track/')}?utm_source=generator`;

      return {
        ...song.toObject(),
        'Spotify Embed': newLink
      };
    });

    res.render('recommendations', { recommendations: modifiedRecommendations });
  } catch (err) {
    console.error('Error executing query:', err);
    return res.status(500).send('Query execution error');
  }
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});

module.exports = app;
