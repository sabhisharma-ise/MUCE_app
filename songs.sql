-- Create the wt_project database
CREATE DATABASE wt_project;

-- Use the wt_project database
USE wt_project;

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
    ('We Will Rock You', 'Queen', 'Rock', '1977-10-07', '02:01:00', 'News of the World', 'https://open.spotify.com/track/54flyrjcdnQdco7300avMJ?si=d13b8947babb439e'),
    ('Under Pressure', 'Queen', 'Rock', '1982-10-26', '04:04:00', 'Hot Space', 'https://open.spotify.com/track/7hQJA50XrCWABAu5v6QZ4i?si=13b9d4d05dc14f7a'),
    ('Radio Ga Ga', 'Queen', 'Rock', '1984-01-23', '05:44:00', 'The Works', 'https://open.spotify.com/track/1nQRg9q9uwALGzouOX5OyQ?si=1b4e249bfd4048ec'),
    ('Somebody to Love', 'Queen', 'Rock', '1976-11-12', '04:56:00', 'A Day at the Races', 'https://open.spotify.com/track/5txoZyuAmtCfmDjUCEphWm?si=8147a7efa4464189'),
    ('Don''t Stop Me Now', 'Queen', 'Rock', '1978-11-10', '03:29:00', 'Jazz', 'https://open.spotify.com/track/0DrDcqWpokMlhKYJSwoT4B?si=ea35f85232784ff8'),
    
    ('Take Five', 'Dave Brubeck Quartet', 'Jazz', '1959-09-29', '05:24:00', 'Time Out', 'https://open.spotify.com/track/5UbLKRX1qVROlwDFOooEvG?si=5d3f9a7a3ee14db1'),
    ('Blue Rondo à la Turk', 'Dave Brubeck Quartet', 'Jazz', '1959-09-29', '06:43:00', 'Time Out', 'https://open.spotify.com/track/36MLLjFug6TJYNODUVR7av?si=3ca767aab22b4269'),
    ('Unsquare Dance', 'Dave Brubeck Quartet', 'Jazz', '1961-11-14', '02:02:00', 'Time Further Out', 'https://open.spotify.com/track/2VUo8O3ymKRYNgj97ZG2kM?si=fd63c35f827b435f'),
    ('Strange Meadow Lark', 'Dave Brubeck Quartet', 'Jazz', '1959-12-14', '07:22:00', 'Time Out', 'https://open.spotify.com/track/6HvyFdP5JrCQdmxq2qi7MC?si=928893c3e6054b15'),
    ('Three to Get Ready', 'Dave Brubeck Quartet', 'Jazz', '1959-12-14', '05:24:00', 'Time Out', 'https://open.spotify.com/track/3k5O0RKO6zEqu9JJ7JqxDX?si=4d8721d9c7564ac9'),
    ('It''s a Raggy Waltz', 'Dave Brubeck Quartet', 'Jazz', '1961-11-14', '05:12:00', 'Time Further Out', 'https://open.spotify.com/track/1LH3R7OkZFtlALGtmpGXPb?si=b468d44d5271403c'),

    ('Lose Yourself', 'Eminem', 'Rap', '2002-10-22', '05:26:00', '8 Mile Soundtrack', 'https://open.spotify.com/track/7MJQ9Nfxzh8LPZ9e9u68Fq?si=c6f8ace87b07494e'),
    ('Stan', 'Eminem', 'Rap', '2000-11-21', '06:44:00', 'The Marshall Mathers LP', 'https://open.spotify.com/track/3UmaczJpikHgJFyBTAJVoz?si=4b119c4aa9bb4f52'),
    ('Love the Way You Lie', 'Eminem', 'Rap', '2010-06-18', '04:23:00', 'Recovery', 'https://open.spotify.com/track/15JINEqzVMv3SvJTAXAKED?si=35110d9a399e4b52'),
    ('Without Me', 'Eminem', 'Rap', '2002-05-14', '04:50:00', 'The Eminem Show', 'https://open.spotify.com/track/7lQ8MOhq6IN2w8EYcFNSUk?si=10a7e6479fc64a83'),
    ('Rap God', 'Eminem', 'Rap', '2013-10-15', '06:03:00', 'The Marshall Mathers LP2', 'https://open.spotify.com/track/6or1bKJiZ06IlK0vFvY75k?si=dfca22097caf49ff'),
    ('The Real Slim Shady', 'Eminem', 'Rap', '2000-05-16', '04:44:00', 'The Marshall Mathers LP', 'https://open.spotify.com/track/3yfqSUWxFvZELEM4PmlwIR?si=d1959f7ca8354953'),

    ('Thriller', 'Michael Jackson', 'Pop', '1982-11-30', '05:57:00', 'Thriller', 'https://open.spotify.com/track/3S2R0EVwBSAVMd5UMgKTL0?si=1321d6b5a17c4a1f'),
    ('Billie Jean', 'Michael Jackson', 'Pop', '1982-01-02', '04:54:00', 'Thriller', 'https://open.spotify.com/track/5ChkMS8OtdzJeqyybCc9R5?si=499d494b15a5442d'),
    ('Beat It', 'Michael Jackson', 'Pop', '1983-02-14', '04:18:00', 'Thriller', 'https://open.spotify.com/track/1OOtq8tRnDM8kG2gqUPjAj?si=ef38f7cd0ae74342'),
    ('Man in the Mirror', 'Michael Jackson', 'Pop', '1988-01-09', '05:19:00', 'Bad', 'https://open.spotify.com/track/2u2udGmop1z67EPpr91km7?si=9acd65b03e3944be'),
    ('Smooth Criminal', 'Michael Jackson', 'Pop', '1987-10-21', '04:17:00', 'Bad', 'https://open.spotify.com/track/4MAns6c2qmc0vcF1gLEvpu?si=bdeb596b90504883'),
    ('Black or White', 'Michael Jackson', 'Pop', '1991-11-11', '03:22:00', 'Dangerous', 'https://open.spotify.com/track/7EsjkelQuoUlJXEw7SeVV4?si=0f71946c647a409d'),

    ('Crossroads', 'Robert Johnson', 'Blues', '1936-11-27', '02:59:00', 'Cross Road Blues', 'https://open.spotify.com/track/1TrGdXSgiBm8W68D2K1COG?si=c4ad7421a89743dd'),
    ('Sweet Home Chicago', 'Robert Johnson', 'Blues', '1936-01-01', '02:57:00', 'King of the Delta Blues Singers', 'https://open.spotify.com/track/1guIEbEw6v69ubNOuH9Aug?si=74dc757873ef439e'),
    ('Hell Hound on My Trail', 'Robert Johnson', 'Blues', '1937-01-01', '02:35:00', 'King of the Delta Blues Singers', 'https://open.spotify.com/track/5xjG7nV5ncQAHkuifsz4v3?si=71ec9062f453430c'),
    ('Love in Vain', 'Robert Johnson', 'Blues', '1937-01-01', '02:21:00', 'King of the Delta Blues Singers', 'https://open.spotify.com/track/5VQhZXyIcnun8WS3cg97JT?si=38bc0d29cd1442af'),
    ('Come On in My Kitchen', 'Robert Johnson', 'Blues', '1937-01-01', '02:51:00', 'King of the Delta Blues Singers', 'https://open.spotify.com/track/10W125nMbncRGcXRBoACOx?si=d3f2cbebcd414efb'),
    ('Preachin'' Blues (Up Jumped the Devil)', 'Robert Johnson', 'Blues', '1937-01-01', '02:53:00', 'King of the Delta Blues Singers', 'https://open.spotify.com/track/4pEZg4zQFcJ1jdboMYTYf9?si=30a6af8927ce4b33'),

    ('Hotel California', 'Eagles', 'Rock', '1976-12-08', '06:30:00', 'Hotel California', 'https://open.spotify.com/track/4GkOfUKUqDDgoeiov8Uqyi?si=6356229e53854339'),
    ('Take It Easy', 'Eagles', 'Rock', '1972-05-01', '03:32:00', 'Eagles', 'https://open.spotify.com/track/4yugZvBYaoREkJKtbG08Qr?si=187e7d88b2c94508'),
    ('Desperado', 'Eagles', 'Rock', '1973-04-17', '03:33:00', 'Desperado', 'https://open.spotify.com/track/2TjnCxxQRYn56Ye8gkUKiW?si=e631e47bc6d1433a'),
    ('Life in the Fast Lane', 'Eagles', 'Rock', '1976-05-03', '04:46:00', 'Hotel California', 'https://open.spotify.com/track/6gXrEUzibufX9xYPk3HD5p?si=2dcecb0f00714482'),
    ('Peaceful Easy Feeling', 'Eagles', 'Rock', '1972-06-01', '04:16:00', 'Eagles', 'https://open.spotify.com/track/40h65HAR8COEoqkMwUUQHu?si=24aac54a164a44df'),
    ('New Kid in Town', 'Eagles', 'Rock', '1976-12-06', '05:04:00', 'Hotel California', 'https://open.spotify.com/track/5MC3xdlx9DFop1Y4J1yDbE?si=5690bbf66f1c41f9'),

    ('So What', 'Miles Davis', 'Jazz', '1959-08-17', '09:22:00', 'Kind of Blue', 'https://open.spotify.com/track/7ILXfN4kJ3hYLitnPjOsLi?si=878b55cfb9c4441b'),
    ('All Blues', 'Miles Davis', 'Jazz', '1959-08-17', '11:34:00', 'Kind of Blue', 'https://open.spotify.com/track/0tYgqYrAgGTyi5GhYKsIkP?si=70fd5a7bd7684997'),
    ('Blue in Green', 'Miles Davis', 'Jazz', '1959-08-17', '05:37:00', 'Kind of Blue', 'https://open.spotify.com/track/5Q427qiOu3zUMjgUrTdIR9?si=d9fe5aaf03564d0c'),
    ('Freddie Freeloader', 'Miles Davis', 'Jazz', '1959-08-17', '09:49:00', 'Kind of Blue', 'https://open.spotify.com/track/1UOH2i8z5xitX8PgVUH6nU?si=603a551e201a4706'),
    ('Flamenco Sketches', 'Miles Davis', 'Jazz', '1959-08-17', '09:25:00', 'Kind of Blue', 'https://open.spotify.com/track/1H4ncCS0zFOcTiS7Z0eXAB?si=8127e04292714b18'),
    ('Summertime', 'Miles Davis', 'Jazz', '1959-08-17', '03:19:00', 'Porgy and Bess', 'https://open.spotify.com/track/25H0Wd1ugPRXGM2LlpjVXM?si=54118e1384a6418f'),

    ('Sicko Mode', 'Travis Scott', 'Rap', '2018-08-03', '05:12:00', 'Astroworld', 'https://open.spotify.com/track/2xLMifQCjDGFmkHkpNLD9h?si=bf2c29a51e85476d'),
    ('Goosebumps', 'Travis Scott', 'Rap', '2016-09-16', '04:03:00', 'Birds in the Trap Sing McKnight', 'https://open.spotify.com/track/6gBFPUFcJLzWGx4lenP6h2?si=85fbde8340134899'),
    ('Antidote', 'Travis Scott', 'Rap', '2015-06-29', '04:23:00', 'Rodeo', 'https://open.spotify.com/track/1wHZx0LgzFHyeIZkUydNXq?si=2d2ce68e103f49c5'),
    ('Butterfly Effect', 'Travis Scott', 'Rap', '2017-05-15', '03:10:00', 'Astroworld', 'https://open.spotify.com/track/2cYqizR4lgvp4Qu6IQ3qGN?si=f56175d55805457e'),
    ('Stargazing', 'Travis Scott', 'Rap', '2018-08-03', '04:30:00', 'Astroworld', 'https://open.spotify.com/track/7wBJfHzpfI3032CSD7CE2m?si=2a617050e1814100'),
    ('Highest in the Room', 'Travis Scott', 'Rap', '2019-10-04', '02:55:00', 'Highest in the Room', 'https://open.spotify.com/track/3eekarcy7kvN4yt5ZFzltW?si=21a0398eab034d3d'),

    ('Stormy Monday', 'T-Bone Walker', 'Blues', '1947-08-13', '03:00:00', 'T-Bone Blues', 'https://open.spotify.com/track/1WNMBK7DJlOLhUL5Wn6b2Y?si=8583b0bf8fe042d0'),
    ('Call It Stormy Monday (But Tuesday Is Just as Bad)', 'T-Bone Walker', 'Blues', '1947-01-01', '03:02:00', 'T-Bone Blues', 'https://open.spotify.com/track/7uMiAVsZy9Iash5gPsoTxe?si=e0e18c3b11bf40ce'),
    ('T-Bone Shuffle', 'T-Bone Walker', 'Blues', '1942-01-01', '02:58:00', 'The Complete Recordings of T-Bone Walker 1940-1954', 'https://open.spotify.com/track/6bl7UHHcx1OY9tbvvnSssc?si=a8e27e146a2146cc'),
    ('Mean Old World', 'T-Bone Walker', 'Blues', '1942-01-01', '03:01:00', 'The Complete Recordings of T-Bone Walker 1940-1954', 'https://open.spotify.com/track/3gg0xEc2b4eEbYySLmfFU1?si=3d33f09c81d94f42'),
    ('The Hustle Is On', 'T-Bone Walker', 'Blues', '1947-01-01', '02:41:00', 'T-Bone Blues', 'https://open.spotify.com/track/6T7hA8JdUunI1JJ2b8wI5c?si=01a88e9890334202'),
    ('Every Day I Have the Blues', 'T-Bone Walker', 'Blues', '1941-01-01', '02:48:00', 'The Complete Recordings of T-Bone Walker 1940-1954', 'https://open.spotify.com/track/5xKzgfFBzZhMdwMVBX0CgW?si=68a885528e8b48be'),

    ('Sweet Child o'' Mine', 'Guns N'' Roses', 'Hard Rock', '1987-07-21', '05:56:00', 'Appetite for Destruction', 'https://open.spotify.com/track/7o2CTH4ctstm8TNelqjb51?si=6fef75ff6c0a4d15'),
    ('Welcome to the Jungle', 'Guns N'' Roses', 'Hard Rock', '1987-07-21', '04:33:00', 'Appetite for Destruction', 'https://open.spotify.com/track/0bVtevEgtDIeRjCJbK3Lmv?si=bda4ed90c105481f'),
    ('November Rain', 'Guns N'' Roses', 'Hard Rock', '1991-02-18', '08:57:00', 'Use Your Illusion I', 'https://open.spotify.com/track/5Z01UMMf7V1o0MzF86s6WJ?si=e11fe50b8a6446b4'),
    ('Paradise City', 'Guns N'' Roses', 'Hard Rock', '1987-11-30', '06:46:00', 'Appetite for Destruction', 'https://open.spotify.com/track/6eN1f9KNmiWEhpE2RhQqB5?si=841e4e13c17d42f0'),
    ('Knockin'' on Heaven''s Door', 'Guns N'' Roses', 'Hard Rock', '1991-09-24', '05:36:00', 'Use Your Illusion II', 'https://open.spotify.com/track/4JiEyzf0Md7KEFFGWDDdCr?si=8f0ca03e26294793'),
    ('Don''t Cry', 'Guns N'' Roses', 'Hard Rock', '1991-09-17', '04:44:00', 'Use Your Illusion I', 'https://open.spotify.com/track/2N2yrmodOnVF10mKvItC9P?si=36c204a6a1c8493c'),

    ('Autumn Leaves', 'Nat King Cole', 'Vocal Jazz', '1956-03-01', '02:37:00', 'The Nat King Cole Story', 'https://open.spotify.com/track/1xMXAo8bygnkXwq3r8DBsT?si=1ae6ee55b3ce4e2a'),
    ('Unforgettable', 'Nat King Cole', 'Vocal Jazz', '1951-03-29', '03:29:00', 'Unforgettable', 'https://open.spotify.com/track/648TTtYB0bH0P8Hfy0FmkL?si=e70cafd7a93d4ab6'),
    ('Mona Lisa', 'Nat King Cole', 'Vocal Jazz', '1950-08-01', '03:26:00', 'The Greatest Hits', 'https://open.spotify.com/track/5dae01pKNjRQtgOeAkFzPY?si=39a610314fc045bc'),
    ('L-O-V-E', 'Nat King Cole', 'Vocal Jazz', '1964-08-10', '02:34:00', 'L-O-V-E', 'https://open.spotify.com/track/4QxDOjgpYtQDxxbWPuEJOy?si=d524252242b74617'),
    ('Route 66', 'Nat King Cole', 'Vocal Jazz', '1946-01-01', '03:02:00', 'The Nat King Cole Trio', 'https://open.spotify.com/track/7pJEbmeP2cZxvkLbG9hhtZ?si=1042716b56c44255'),
    ('When I Fall in Love', 'Nat King Cole', 'Vocal Jazz', '1957-01-01', '03:10:00', 'Love Is the Thing', 'https://open.spotify.com/track/6s6h2XK7Nl8lEcTzr7ezeB?si=287d0879fda548fb'),

    ('Empire State of Mind', 'Jay-Z', 'Hip-Hop', '2009-10-20', '04:37:00', 'The Blueprint 3', 'https://open.spotify.com/track/2igwFfvr1OAGX9SKDCPBwO?si=d51550c47fd4447f'),
    ('Numb/Encore', 'Jay-Z', 'Hip-Hop', '2004-11-30', '03:25:00', 'Collision Course', 'https://open.spotify.com/track/7dyluIqv7QYVTXXZiMWPHW?si=843b3aa6fa714190'),
    ('Run This Town', 'Jay-Z', 'Hip-Hop', '2009-08-11', '04:27:00', 'The Blueprint 3', 'https://open.spotify.com/track/7LR85XLWw2yXqKBSI5brbG?si=726861adcec74429'),
    ('99 Problems', 'Jay-Z', 'Hip-Hop', '2003-04-07', '03:55:00', 'The Black Album', 'https://open.spotify.com/track/7IdFdRlCjUi6kkhbPoRfnw?si=0b79d1904f2d40c2'),
    ('Holy Grail', 'Jay-Z', 'Hip-Hop', '2013-07-04', '05:38:00', 'Magna Carta... Holy Grail', 'https://open.spotify.com/track/1q9bLSeIlGf2xBvbOkp2Wr?si=1b61e72f72124e15'),
    ('Izzo (H.O.V.A.)', 'Jay-Z', 'Hip-Hop', '2001-08-28', '04:01:00', 'The Blueprint', 'https://open.spotify.com/track/4h5KBcltGefua73AUPYps7?si=6f1289708f82468a'),

    ('Like a Prayer', 'Madonna', 'Pop', '1989-03-03', '05:39:00', 'Like a Prayer', 'https://open.spotify.com/track/1z3ugFmUKoCzGsI6jdY4Ci?si=694d665d7fd04957'),
    ('Vogue', 'Madonna', 'Pop', '1990-03-27', '05:17:00', 'I''m Breathless', 'https://open.spotify.com/track/27QvYgBk0CHOVHthWnkuWt?si=239baacac95341a8'),
    ('Material Girl', 'Madonna', 'Pop', '1984-01-23', '03:52:00', 'Like a Virgin', 'https://open.spotify.com/track/22sLuJYcvZOSoLLRYev1s5?si=bb18f2c546bc4b0b'),
    ('Hung Up', 'Madonna', 'Pop', '2005-10-17', '05:36:00', 'Confessions on a Dance Floor', 'https://open.spotify.com/track/3850dYVgOFIXJh5U4BFEWH?si=ed39ecd024d447eb'),
    ('Papa Don''t Preach', 'Madonna', 'Pop', '1986-06-11', '04:29:00', 'True Blue', 'https://open.spotify.com/track/0Oa9Qtd0FuhcmLi3sWTF9F?si=fc9068ff1b2f49d6'),
    ('Into the Groove', 'Madonna', 'Pop', '1985-07-15', '04:45:00', 'Like a Virgin', 'https://open.spotify.com/track/2m0M7YqCy4lXfedh18qd8N?si=39b6347b5cee4e11'),

    ('Born Under a Bad Sign', 'Albert King', 'Electric Blues', '1967-08-01', '03:31:00', 'Born Under a Bad Sign', 'https://open.spotify.com/track/0vDn81gdOuRxjbIwcASuiV?si=8714584d027d4c25'),
    ('The Sky Is Crying', 'Albert King', 'Electric Blues', '1967-01-01', '04:40:00', 'Born Under a Bad Sign', 'https://open.spotify.com/track/5F1PDuoQ9ajtBnKAPVOqT4?si=b81aa1a308ef481d'),
    ('I''ll Play the Blues for You', 'Albert King', 'Electric Blues', '1972-04-15', '07:21:00', 'I''ll Play the Blues for You', 'https://open.spotify.com/track/5hF3PAQopvztFVnH4xyyQp?si=a4878fd9a00f44ed'),
    ('Crosscut Saw', 'Albert King', 'Electric Blues', '1966-01-01', '02:34:00', 'Born Under a Bad Sign', 'https://open.spotify.com/track/5ZD2nIitLb9txwpz5Avq6Q?si=e00363e001804314'),
    ('Oh, Pretty Woman', 'Albert King', 'Electric Blues', '1969-10-01', '02:53:00', 'Years Gone By', 'https://open.spotify.com/track/1rFzuTL45nzwhcXMVW5Cr4?si=0f4631e6f0ea4cee'),
    ('As the Years Go Passing By', 'Albert King', 'Electric Blues', '1969-01-01', '03:47:00', 'Years Gone By', 'https://open.spotify.com/track/71auWR3IZdhDv3M8RZsqIF?si=1a43ec3014c64337');