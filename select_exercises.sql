USE codeup_test_db;

# SELECT 'These are all of Pink FLoyds albums that sold over 30 million copies!' AS 'Info';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

# SELECT 'The release date for SPLHCB is: ' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

# SELECT 'The genre of Nirvana''s'' album Nevermind is: ' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';

# SELECT 'Albums from the 1990''s'' that sold over 30m copies: ' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

# SELECT 'Albums that sold less than 20m confirmed copies: ' AS 'Info';
SELECT name FROM albums WHERE sales <= '20';

# SELECT 'Rock albums ' AS 'Info';
SELECT name FROM albums WHERE genre = 'Rock';


