-- Create the database
CREATE DATABASE adopt_an_animal; USE
    adopt_an_animal;
    -- Create the species table - 'id' is autoincrement primary key
CREATE TABLE species(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(25) CHARACTER SET utf8,
    `description` VARCHAR(200) CHARACTER SET utf8,
    `endangered` TINYINT(1),
    `avatar` VARCHAR(50) CHARACTER SET utf8
);
-- Create the animals table - 'id' is autoincrement primary key
CREATE TABLE animals(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(25) CHARACTER SET utf8,
    `description` VARCHAR(100) CHARACTER SET utf8,
    `sex` ENUM('M', 'F'),
    `adopted` TINYINT(1),
    `species_id` INT UNSIGNED NOT NULL
);
-- Create the countries table - 'id' is autoincrement primary key
CREATE TABLE countries(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(25) CHARACTER SET utf8
);
-- Create the habitat table - linking species and countries
-- (A species can be native to more than one country, and countries can have many species)
CREATE TABLE habitats(
    `species_id` INT UNSIGNED NOT NULL,
    `country_id` INT UNSIGNED NOT NULL
);
-- Create Foreign Keys
ALTER TABLE
    animals ADD FOREIGN KEY(species_id) REFERENCES species(id);
    -- Insert species
INSERT INTO species(
    NAME,
    avatar,
    description,
    endangered
)
VALUES(
    'Anteater',
    './data/img/anteater.jpg',
    'Anteater is a common name for the four extant mammal species of the suborder Vermilingua (meaning "worm tongue") commonly known for eating ants and termites ',
    0
),(
    'Chimpanzee',
    './data/img/chimpanzee.jpg',
    'The taxonomical genus Pan (often referred to as chimpanzees or chimps) consists of two extant species: the common chimpanzee and the bonobo.',
    1
),(
    'Duckbill Platypus',
    './data/img/duckbill_platypus.jpg',
    'The platypus (Ornithorhynchus anatinus), sometimes referred to as the duck-billed platypus, is a semiaquatic egg-laying mammal endemic to eastern Australia, including Tasmania.',
    0
),(
    'Elephant',
    './data/img/elephant.jpg',
    'Elephants are large mammals of the family Elephantidae and the order Proboscidea.',
    1
),(
    'Frog',
    './data/img/frog.jpg',
    'A frog is any member of a diverse and largely carnivorous group of short-bodied, tailless amphibians composing the order Anura',
    0
),(
    'Gorilla',
    './data/img/gorilla.jpg',
    'Gorillas are ground-dwelling, predominantly herbivorous apes that inhabit the forests of central Sub-Saharan Africa.',
    1
),(
    'Hedgehog',
    './data/img/hedgehog.jpg',
    'A hedgehog is any of the spiny mammals of the subfamily Erinaceinae, in the eulipotyphlan family Erinaceidae.',
    0
),(
    'Lion',
    './data/img/lion.jpg',
    'The lion (Panthera leo) is a species in the cat family (Felidae).',
    1
),(
    'Lizard',
    './data/img/lizard.jpg',
    'Lizards are a widespread group of squamate reptiles, with over 6,000 species, ranging across all continents except Antarctica, as well as most oceanic island chains.',
    0
),(
    'Panda',
    './data/img/panda.jpg',
    'The giant panda (Ailuropoda melanoleuca, literally "black and white cat-foot") also known as panda bear or simply panda, is a bear native to south central China.',
    1
),(
    'Parrot',
    './data/img/parrot.jpg',
    'Parrots, also known as psittacines /ˈsɪtəsaɪnz/,[1][2] are birds of the roughly 393 species in 92 genera that make up the order Psittaciformes, found in most tropical and subtropical regions.',
    0
),(
    'Polar Bear',
    './data/img/polar_bear.jpg',
    'The polar bear (Ursus maritimus) is a hypercarnivorous bear whose native range lies largely within the Arctic Circle, encompassing the Arctic Ocean, its surrounding seas and surrounding land masses.',
    1
),(
    'Rhinoceros',
    './data/img/rhinoceros.jpg',
    'A rhinoceros, commonly abbreviated to rhino, is one of any five extant species of odd-toed ungulates in the family Rhinocerotidae, as well as any of the numerous extinct species.',
    1
),(
    'Zebra',
    './data/img/zebra.jpg',
    'Zebras are several species of African equids (horse family) united by their distinctive black and white striped coats.',
    0
);
-- Insert animals
INSERT INTO animals(
    NAME,
    sex,
    adopted,
    species_id,
    description
)
VALUES(
    'Jim',
    'M',
    0,
    1,
    'Jim is very quiet and does not like to be disturbed.'
),(
    'Jacinta',
    'F',
    1,
    4,
    'Jacinta likes long walks and playing fetch.'
),(
    'Mac',
    'M',
    0,
    6,
    'Mac likes to curl up by the fire.'
),(
    'Paulina',
    'F',
    1,
    2,
    'Paulina is allergic to cats and dogs.'
),(
    'Zachary',
    'M',
    0,
    7,
    'Zachary would need to have an enclosed garden.'
),(
    'Bobby',
    'F',
    1,
    8,
    'Bobby likes to sit up on the couch.'
),(
    'Milton',
    'M',
    0,
    5,
    'Milton likes nothing more than a big cuddle.'
),(
    'Barry',
    'M',
    1,
    14,
    'Barry would get on very well with other animals and small children.'
),(
    'Chad',
    'M',
    1,
    5,
    'Chad likes to swim and go to the seaside.'
),(
    'Percy',
    'M',
    0,
    11,
    'Percy is house trained and can go on command.'
),(
    'Georgina',
    'F',
    1,
    4,
    'Georgina needs to be walked daily.'
),(
    'Abby',
    'F',
    0,
    12,
    'Abby would make a good companion for children.'
),(
    'Roger',
    'M',
    1,
    12,
    'Roger is well trained and can do lots of tricks.'
),(
    'Sandra',
    'F',
    1,
    10,
    'Sandra would do well with other animals of similar size.'
),(
    'Terence',
    'M',
    0,
    1,
    'Terence gets on well with dogs.'
),(
    'Daniel',
    'M',
    1,
    4,
    'Daniel needs to be house-trained.'
),(
    'Harriet',
    'F',
    0,
    1,
    'Harriet likes to go for long walks.'
),(
    'Oswald',
    'M',
    1,
    3,
    'Oswald is very affectionate.'
);
-- Insert Countries
INSERT INTO countries(NAME)
VALUES('Ireland'),('England'),('Zimbabue'),('Costa Rica'),('Sweden'),('South Africa'),('Russia'),('New Zealand'),('Norway'),('Germany'),('Denmark');
-- Insert Habitats
INSERT INTO habitats(`species_id`, `country_id`)
VALUES(1, 1),(1, 4),(2, 3),(3, 6),(4, 3),(4, 7),(5, 10),(6, 10),(7, 10),(8, 1),(8, 2),(8, 3),(9, 1),(10, 1),(11, 2),(12, 2),(13, 3),(14, 4);