USE
Spring_DB;

INSERT INTO manufacturer VALUES
(1,'RockstarGames'),
(2,'CD Projekt RED'),
(3,'Electronic Arts');

INSERT INTO product VALUES
(1,'Grand Theft Auto V',265000000,1),
(2, 'The Witcher 3',67000000,2),
(3,'Cyberpunk 2077',301867800,2),
(4, 'Need for Speed: HEAT', 55000000,3),
(5, 'Battlefield 4', 125000000,3),
(6, 'L.A. Noire',50000000,1);

INSERT INTO user VALUES
(1, 'vasya@gmail.com', '$2a$10$PrI5Gk9L.59ZiW9FXhTS8O8hgf9E97k2FZbFvGFFaSsiTUIl.TCrFu', 'Vasya', 'Pupkin','ROLE_ADMIN', 'ACTIVE'),
(2, 'petya@hotmail.com', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', 'Petya', 'Petro', 'ROLE_USER', 'ACTIVE');
