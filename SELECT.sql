-- Задание 2
SELECT name_track, duration
FROM Track
WHERE duration = (SELECT MAX(duration) FROM Track);

SELECT name_track
FROM Track
WHERE duration >= 210;

SELECT name_collection
FROM Collection
WHERE year BETWEEN 2018 AND 2020;

SELECT name_artist
FROM Artist
WHERE name_artist NOT LIKE '% %';

SELECT name_track
FROM Track
WHERE LOWER(name_track) LIKE '%мой%' OR LOWER(name_track) LIKE '%my%';

-- Задание 3
SELECT c.name AS genre, COUNT(DISTINCT gs.artist_id) AS num_of_singers
FROM Ganre c
LEFT JOIN GenreSinger gs ON c.ganre_id = gs.genre_id
GROUP BY c.name;

SELECT COUNT(t.track_id) AS num_of_tracks
FROM Track t
JOIN Album a ON t.album_id = a.album_id
WHERE a.year BETWEEN 2019 AND 2020;

SELECT a.name_album, AVG(t.duration) AS avg_duration
FROM Album a
JOIN Track t ON a.album_id = t.album_id
GROUP BY a.name_album;

SELECT DISTINCT a.name_artist
FROM Artist a
LEFT JOIN SingerAlbum sa ON a.artist_id = sa.artist_id
LEFT JOIN Album al ON sa.album_id = al.album_id
WHERE al.year != 2020 OR al.year IS NULL;


SELECT DISTINCT c.name_collection
FROM Collection c
JOIN CollectionTrack ct ON c.collection_id = ct.collection_id
JOIN Track t ON ct.track_id = t.track_id
JOIN Album a ON t.album_id = a.album_id
JOIN SingerAlbum sa ON a.album_id = sa.album_id
JOIN Artist s ON sa.artist_id = s.artist_id 
WHERE s.name_artist = 'Исполнитель-1';
