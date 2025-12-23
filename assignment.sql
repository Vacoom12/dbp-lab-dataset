DROP TABLE IF EXISTS Hunts;
DROP TABLE IF EXISTS Hunters;
DROP TABLE IF EXISTS Monsters;
DROP TABLE IF EXISTS Weapons;

CREATE TABLE Hunters (
    hunter_id INTEGER PRIMARY KEY,
    hunter_name VARCHAR(50),
    rank VARCHAR(20)
);

CREATE TABLE Monsters (
    monster_id INTEGER PRIMARY KEY,
    monster_name VARCHAR(50),
    species VARCHAR(50)
);

CREATE TABLE Weapons (
    weapon_id INTEGER PRIMARY KEY,
    weapon_name VARCHAR(50),
    weapon_type VARCHAR(30)
);

CREATE TABLE Hunts (
    hunt_id INTEGER PRIMARY KEY,
    hunter_id INTEGER,
    monster_id INTEGER,
    weapon_id INTEGER,
    hunt_date DATE,
    success BOOLEAN,
    FOREIGN KEY (hunter_id) REFERENCES Hunters(hunter_id),
    FOREIGN KEY (monster_id) REFERENCES Monsters(monster_id),
    FOREIGN KEY (weapon_id) REFERENCES Weapons(weapon_id)
);

INSERT INTO Hunters VALUES
    (1, 'Aiden', 'Low Rank'),
    (2, 'Blaze', 'High Rank'),
    (3, 'Cora', 'Master Rank'),
    (4, 'Dante', 'High Rank'),
    (5, 'ChaeChae', 'Master Rank');

INSERT INTO Monsters VALUES
    (101, 'Rathalos', 'Flying Wyvern'),
    (102, 'Diablos', 'Flying Wyvern'),
    (103, 'Nergigante', 'Elder Dragon'),
    (104, 'Great Jagras', 'Fanged Wyvern'),
    (105, 'Alatreon', 'Elder Dragon');

INSERT INTO Weapons VALUES
    (201, 'Iron Sword', 'Great Sword'),
    (202, 'Hunter Bow', 'Bow'),
    (203, 'Bone Lance', 'Lance'),
    (204, 'Steel Hammer', 'Hammer'),
    (205, 'Ominous Spring', 'Long Sword');

INSERT INTO Hunts VALUES
    (1, 1, 104, 201, '2025-01-10', TRUE),
    (2, 1, 101, 202, '2025-01-12', FALSE),
    (3, 2, 101, 204, '2025-01-15', TRUE),
    (4, 2, 102, 203, '2025-01-18', TRUE),
    (5, 3, 103, 201, '2025-01-20', TRUE),
    (6, 5, 105, 205, '2025-02-27', TRUE);
