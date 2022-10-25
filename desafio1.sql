DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.artists(
	artist_id INT AUTO_INCREMENT,
    artist_name VARCHAR(70) NOT NULL,
    CONSTRAINT PRIMARY KEY (artist_id, artist_name)
) engine = InnoDB;

CREATE TABLE SpotifyClone.albuns(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id)
		REFERENCES artists (artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.musics(
	music_id INT AUTO_INCREMENT,
    music_name VARCHAR(100) NOT NULL,
    time_seconds INT NOT NUll,
    album_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (music_id, music_name),
    FOREIGN KEY (album_id)
		REFERENCES albuns (album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.plan(
	plan_id INT PRIMARY KEY AUTO_INCREMENT,
    type_plan VARCHAR(45) NOT NULL,
    value DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.users(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(70) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    date_signature INT NOT NULL,
	FOREIGN KEY (plan_id)
		REFERENCES plan (plan_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.following(
	follow_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    artist_name VARCHAR(70) NOT NULL,
    FOREIGN KEY (user_id)
		REFERENCES users (user_id),
	FOREIGN KEY (artist_name)
		REFERENCES artists (artist_name)
) engine = InnoDB;

CREATE TABLE SpotifyClone.history_reproductions(
	history_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    music_name VARCHAR(100) NOT NULL,
    date_reproductions DATETIME NOT NULL,
    FOREIGN KEY (user_id)
		REFERENCES users (user_id),
	FOREIGN KEY (music_name)
		REFERENCES musics (music_name)
) engine = InnoDB;

INSERT INTO SpotifyClone.artists (artist_name)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

INSERT INTO SpotifyClone.albuns (name, year, artist_id)
VALUES
  ('Renaissance', 2022, 1),
  ('Jazz', 1978, 2),
  ('Hot Space', 1982, 2),
  ('Falso Brilhante', 1998, 3),
  ('Vento de Maio', 2001, 3),
  ('QVVJFA?', 2003, 4),
  ('Somewhere Far Beyond', 2007, 5),
  ('I Put A Spell On You', 2012, 6);

INSERT INTO SpotifyClone.musics (music_name, time_seconds, album_id)
VALUES
  ('BREAK MY SOUL', 279, 1),
  ('VIRGO’S GROOVE', 369, 1),
  ('ALIEN SUPERSTAR', 116, 1),
  ('Don’t Stop Me Now', 203, 2),
  ('Under Pressure', 152, 3),
  ('Como Nossos Pais', 105, 4),
  ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
  ('Samba em Paris', 267, 6),
  ('The Bard’s Song', 244, 7),
  ('Feeling Good', 100, 8);
  
INSERT INTO SpotifyClone.plan (type_plan, value)
VALUES
  ('gratuito', 0.00),
  ('universitÃ¡rio', 5.99),
  ('pessoal', 6.99),
  ('familiar', 7.99);
  
INSERT INTO SpotifyClone.users (name, age, plan_id, date_signature)
VALUES
  ('Barbara Liskov', 82, 1 , 2019-10-20),
  ('Robert Cecil Martin', 58, 1 , 2017-01-06),
  ('Ada Lovelace', 37, 4 , 2017-12-30),
  ('Martin Fowler', 46, 4 , 2017-12-30),
  ('Sandi Metz', 58, 4 , 2018-04-29),
  ('Paulo Freire', 19, 2 , 2018-02-14),
  ('Bell Hooks', 26, 2 , 2018-01-05),
  ('Christopher Alexander', 85, 3 , 2019-06-05),
  ('Judith Butler', 45, 3 , 2020-05-13),
  ('Jorge Amado', 58, 3 , 2017-02-17);

INSERT INTO SpotifyClone.following (user_id, artist_name)
VALUES
  (1, 'Beyoncé'),
  (1, 'Queen'),
  (1, 'Elis Regina'),
  (2, 'Beyoncé'),
  (2, 'Elis Regina'),
  (3, 'Queen'),
  (4, 'Baco Exu do Blues'),
  (5, 'Blind Guardian'),
  (5, 'Nina Simone'),
  (6, 'Nina Simone'),
  (6, 'Beyoncé'),
  (7, 'Nina Simone'),
  (9, 'Elis Regina'),
  (10, 'Queen');
  
INSERT INTO SpotifyClone.history_reproductions (user_id, music_name, date_reproductions)
VALUES
  (1, 'Samba em Paris', '2022-02-28 10:45:55'),
  (1, 'VIRGO’S GROOVE', '2020-05-02 05:30:35'),
  (1, 'Feeling Good', '2020-03-06 11:22:33'),
  (2, 'Feeling Good', '2022-08-05 08:05:17'),
  (2, 'O Medo de Amar é o Medo de Ser Livre', '2020-01-02 07:40:33'),
  (3, 'Feeling Good', '2020-11-13 16:55:13'),
  (3, 'VIRGO’S GROOVE', '2020-12-05 18:38:30'),
  (4, 'Samba em Paris', '2021-08-15 17:10:10'),
  (5, 'Samba em Paris', '2022-01-09 01:44:33'),
  (5, 'Under Pressure', '2020-08-06 15:23:43'),
  (6, 'O Medo de Amar é o Medo de Ser Livre', '2017-01-24 00:31:17'),
  (6, 'BREAK MY SOUL', '2017-10-12 12:35:20'),
  (7, 'Don’t Stop Me Now', '2011-12-15 22:30:49'),
  (8, 'Don’t Stop Me Now', '2012-03-17 14:56:41'),
  (9, 'The Bard’s Song', '2022-02-24 21:14:22'),
  (10, 'ALIEN SUPERSTAR', '2015-12-13 08:30:22');
