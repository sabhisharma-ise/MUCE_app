-- Create the songs table
CREATE TABLE songs (
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    artist VARCHAR(255) NOT NULL,
    genre VARCHAR(50),
    release_date DATE,
    duration TIME,
    album VARCHAR(255),
    spotify_link VARCHAR(255)
);

-- Insert sample data
INSERT INTO songs (title, artist, genre, release_date, duration, album, spotify_link)
VALUES 
    ('Bohemian Rhapsody', 'Queen', 'Rock', '1975-10-31', '05:55:00', 'A Night at the Opera', 'https://open.spotify.com/track/6l8GvAyoUZwWDgF1e4822w?si=55ad70967dd942b3'),
    ('Take Five', 'Dave Brubeck Quartet', 'Jazz', '1959-09-29', '05:24:00', 'Time Out', 'https://open.spotify.com/track/5UbLKRX1qVROlwDFOooEvG?si=5d3f9a7a3ee14db1'),
    ('Lose Yourself', 'Eminem', 'Rap', '2002-10-22', '05:26:00', '8 Mile Soundtrack', 'https://open.spotify.com/track/7MJQ9Nfxzh8LPZ9e9u68Fq?si=c6f8ace87b07494e'),
    ('Thriller', 'Michael Jackson', 'Pop', '1982-11-30', '05:57:00', 'Thriller', 'https://open.spotify.com/track/3S2R0EVwBSAVMd5UMgKTL0?si=1321d6b5a17c4a1f'),
    ('Crossroads', 'Robert Johnson', 'Blues', '1936-11-27', '02:59:00', 'Cross Road Blues', 'https://open.spotify.com/track/1TrGdXSgiBm8W68D2K1COG?si=c4ad7421a89743dd'),
    ('Hotel California', 'Eagles', 'Rock', '1976-12-08', '06:30:00', 'Hotel California', 'https://open.spotify.com/track/4GkOfUKUqDDgoeiov8Uqyi?si=6356229e53854339'),
    ('So What', 'Miles Davis', 'Jazz', '1959-08-17', '09:22:00', 'Kind of Blue', 'https://open.spotify.com/track/7ILXfN4kJ3hYLitnPjOsLi?si=878b55cfb9c4441b'),
    ('Sicko Mode', 'Travis Scott', 'Rap', '2018-08-03', '05:12:00', 'Astroworld', 'https://open.spotify.com/track/2xLMifQCjDGFmkHkpNLD9h?si=bf2c29a51e85476d'),
    ('Billie Jean', 'Michael Jackson', 'Pop', '1982-01-02', '04:54:00', 'Thriller', 'https://open.spotify.com/track/5ChkMS8OtdzJeqyybCc9R5?si=499d494b15a5442d'),
    ('Stormy Monday', 'T-Bone Walker', 'Blues', '1947-08-13', '03:00:00', 'T-Bone Blues', 'https://open.spotify.com/track/1WNMBK7DJlOLhUL5Wn6b2Y?si=8583b0bf8fe042d0'),
    ('Sweet Child o\' Mine', 'Guns N\' Roses', 'Hard Rock', '1987-07-21', '05:56:00', 'Appetite for Destruction', 'https://open.spotify.com/track/7o2CTH4ctstm8TNelqjb51?si=6fef75ff6c0a4d15'),
    ('Autumn Leaves', 'Nat King Cole', 'Vocal Jazz', '1956-03-01', '02:37:00', 'The Nat King Cole Story', 'https://open.spotify.com/track/1xMXAo8bygnkXwq3r8DBsT?si=1ae6ee55b3ce4e2a'),
    ('Empire State of Mind', 'Jay-Z ft. Alicia Keys', 'Hip-Hop', '2009-10-20', '04:37:00', 'The Blueprint 3', 'https://open.spotify.com/track/2igwFfvr1OAGX9SKDCPBwO?si=d51550c47fd4447f'),
    ('Like a Prayer', 'Madonna', 'Pop', '1989-03-03', '05:39:00', 'Like a Prayer', 'https://open.spotify.com/track/1z3ugFmUKoCzGsI6jdY4Ci?si=694d665d7fd04957'),
    ('Born Under a Bad Sign', 'Albert King', 'Electric Blues', '1967-08-01', '03:31:00', 'Born Under a Bad Sign', 'https://open.spotify.com/track/0vDn81gdOuRxjbIwcASuiV?si=8714584d027d4c25');

