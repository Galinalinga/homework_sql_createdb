CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenresArtists (
	genre_id INTEGER REFERENCES Genres(id),
	artist_id INTEGER REFERENCES Artists(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year_of_issue INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS AlbumsArtists (
	album_id INTEGER REFERENCES Albums(id),
	artist_id INTEGER REFERENCES Artists(id),
	CONSTRAINT pk PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Albums(id),
	name VARCHAR(40) NOT NULL,
	duration INTEGER NOT NULL,
	album VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year_of_issue INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS TracksCollections (
	collection_id INTEGER REFERENCES Collections(id),
	track_id INTEGER REFERENCES Tracks(id),
	CONSTRAINT pn PRIMARY KEY (collection_id, track_id)
);




