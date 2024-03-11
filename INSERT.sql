-- INSERT-запросы для заполнения таблиц базы данных

--Таблицы жанров.
INSERT INTO Ganre (name) VALUES ('Жанр-1'), ('Жанр-2'), ('Жанр-3');

--Таблицы исполнителей.
INSERT INTO Artist (name_artist) VALUES ('Исполнитель-1'), ('Исполнитель-2'), ('Исполнитель-3'), ('Исполнитель-4');

--Заполнение таблицы связей исполнителей и жанров.
INSERT INTO GenreSinger (genre_id, artist_id) VALUES (1, 1), (2, 2), (3, 3), (1, 4);

--Таблицы альбомов.
INSERT INTO Album (name_album, year) VALUES ('Альбом-1', 2019), ('Альбом-2', 2020), ('Альбом-3', 2018);

--Таблицы связей исполнителей и альбомов.
INSERT INTO SingerAlbum (singer_id, album_id) VALUES (1, 1), (2, 2), (3, 3), (4, 1);

--Таблицы треков.
INSERT INTO Track (name_track, duration, album_id) 
VALUES ('Трек-1', 180, 1), ('Трек-2', 240, 1), ('Трек-3', 330, 2), ('Трек-4', 280, 2), ('Трек-5', 200, 3), ('Трек-6', 220, 3);

--Таблицы сборников.
INSERT INTO Collection (name_collection, year) VALUES ('Сборник-11', 2018), ('Сборник-2', 2019), ('Сборник-3', 2020), ('Сборник-4', 2020);

--Ттаблицы связей сборников и треков.
INSERT INTO CollectionTrack (collection_id, track_id) VALUES (1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6);