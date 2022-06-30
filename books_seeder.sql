USE codeup_test_db;

TRUNCATE TABLE books;

INSERT books (title, author, date_published, description, bestseller_weeks)
VALUES ('To Kill a Mockingbird', 'Harper Lee', '1960-07-11', 'This is a book about birds.', 0),
       ('The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10', 'This is a book about a great thing.', 10),
       ('Harry Potter and the Sorcerer`s Stone', 'J.K. Rowling', '1997-06-26', 'This is a book about sorcerers.', 70),
       ('The Hobbit', 'J.R.R. Tolkien', '1937-07-21', 'This is a book about hobbits.', 5),
       ('All the Pretty Horses', 'Cormac McCarthy', '1992-05-15', 'Its romanticism, contrasting with the bleakness of Blood Meridian, McCarthy''s earlier work, brought the writer much public attention.', 23),
       ('Look Homeward Angel', 'Thomas Wolfe', '1929-1-1', ' Wolfe''s first novel, and is considered a highly autobiographical American coming-of-age story.', '55');

INSERT books (title, date_published, description)
VALUES ('Unknown book', '2000-01-01', 'book about stuff'),
 ('Unknown book2', '2000-01-01', 'book about stuff2');

