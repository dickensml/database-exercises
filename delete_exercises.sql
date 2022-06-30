USE codeup_test_db;

DELETE FROM albums WHERE release_date >= 1990;

DELETE FROM albums WHERE genre = 'disco';

DELETE FROM albums WHERE artist = 'Peter Jackson';