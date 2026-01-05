DROP TABLE IF EXISTS Pokemons;
DROP TABLE IF EXISTS Trainers;

CREATE TABLE Trainers (
    trainer_id INTEGER PRIMARY KEY,
    trainer_name VARCHAR,
    city VARCHAR
);

CREATE TABLE Pokemons (
    pokemon_id INTEGER PRIMARY KEY,
    pokemon_name VARCHAR,
    type VARCHAR,
    level INTEGER,
    is_legendary BOOLEAN,
    catch_date DATE,
    trainer_id INTEGER,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);

INSERT INTO Trainers VALUES
(1, 'Ash', 'Pallet Town'),
(2, 'Misty', 'Cerulean City'),
(3, 'Brock', 'Pewter City'),
(4, 'Gary', 'Viridian City');

INSERT INTO Pokemons VALUES
(1, 'Pikachu', 'Electric', 35, FALSE, '2024-01-10', 1),
(2, 'Charizard', 'Fire', 55, FALSE, '2023-11-05', 1),
(3, 'Staryu', 'Water', 30, FALSE, '2024-02-01', 2),
(4, 'Onix', 'Rock', 40, FALSE, '2023-12-20', 3),
(5, 'Eevee', 'Normal', 25, FALSE, '2024-03-15', NULL),
(6, 'Squirtle', 'Water', 20, FALSE, '2024-01-25', 1),
(7, 'Mewtwo', 'Psychic', 70, TRUE,  '2022-08-01', 4);