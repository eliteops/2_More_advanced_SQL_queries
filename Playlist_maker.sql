CREATE TABLE artists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    country TEXT,
    genre TEXT);

INSERT INTO artists (name, country, genre)
    VALUES ("Taylor Swift", "US", "Pop"), ("Led Zeppelin", "US", "Hard rock"),
    ("ABBA", "Sweden", "Disco"), ("Queen", "UK", "Rock"), ("Celine Dion", "Canada", "Pop"),
    ("Meatloaf", "US", "Hard rock"), ("Garth Brooks", "US", "Country"),
    ("Shania Twain", "Canada", "Country"), ("Rihanna", "US", "Pop"),
    ("Guns N' Roses", "US", "Hard rock"), ("Gloria Estefan", "US", "Pop"),
    ("Bob Marley", "Jamaica", "Reggae");

CREATE TABLE songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist TEXT,
    title TEXT);

INSERT INTO songs (artist, title)
    VALUES ("Taylor Swift", "Shake it off"), ("Rihanna", "Stay"), 
    ("Celine Dion", "My heart will go on"), ("Celine Dion", "A new day has come"), 
    ("Shania Twain", "Party for two"), ("Gloria Estefan", "Conga"), 
    ("Led Zeppelin", "Stairway to heaven"), ("ABBA", "Mamma mia"), 
    ("Queen", "Bicycle Race"), ("Queen", "Bohemian Rhapsody"), 
    ("Guns N' Roses", "Don't cry");
select title from songs where artist like 'queen';
select name from artists where genre like 'pop';

select title from songs 
where artist IN 
    (select name from artists
    where genre = "Pop");
