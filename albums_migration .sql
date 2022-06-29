CREATE TABLE albums(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(50) DEFAULT 'No artist, yet',
    name         VARCHAR(50) NOT NULL,
    release_date INT,
    sales        FLOAT,
    genre        VARCHAR(25),
    PRIMARY KEY (id)
);