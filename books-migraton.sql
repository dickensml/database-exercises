USE codeup_test_db;

DROP TABLE IF EXISTS books;

CREATE TABLE books
(
    id               INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title            VARCHAR(200) NOT NULL,
    author           VARCHAR(200)  DEFAULT 'UNKNOWN',
    date_published   DATE,
    description      TEXT,
    bestseller_weeks INT UNSIGNED DEFAULT 0,
    PRIMARY KEY (id)
);
