-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 04:43 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adopt_an_animal`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sex` enum('M','F') DEFAULT NULL,
  `adopted` tinyint(1) DEFAULT NULL,
  `species_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `name`, `description`, `sex`, `adopted`, `species_id`) VALUES
(1, 'Jim', 'Jim is very quiet and does not like to be disturbed.', 'M', 0, 1),
(2, 'Jacinta', 'Jacinta likes long walks and playing fetch.', 'F', 1, 4),
(3, 'Mac', 'Mac likes to curl up by the fire.', 'M', 0, 6),
(4, 'Paulina', 'Paulina is allergic to cats and dogs.', 'F', 1, 2),
(5, 'Zachary', 'Zachary would need to have an enclosed garden.', 'M', 0, 7),
(6, 'Bobby', 'Bobby likes to sit up on the couch.', 'F', 1, 8),
(7, 'Milton', 'Milton likes nothing more than a big cuddle.', 'M', 0, 5),
(8, 'Barry', 'Barry would get on very well with other animals and small children.', 'M', 1, 14),
(9, 'Chad', 'Chad likes to swim and go to the seaside.', 'M', 1, 5),
(10, 'Percy', 'Percy is house trained and can go on command.', 'M', 0, 11),
(11, 'Georgina', 'Georgina needs to be walked daily.', 'F', 1, 4),
(12, 'Abby', 'Abby would make a good companion for children.', 'F', 0, 12),
(13, 'Roger', 'Roger is well trained and can do lots of tricks.', 'M', 1, 12),
(14, 'Sandra', 'Sandra would do well with other animals of similar size.', 'F', 1, 10),
(15, 'Terence', 'Terence gets on well with dogs.', 'M', 0, 1),
(16, 'Daniel', 'Daniel needs to be house-trained.', 'M', 1, 4),
(17, 'Harriet', 'Harriet likes to go for long walks.', 'F', 0, 1),
(18, 'Oswald', 'Oswald is very affectionate.', 'M', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Ireland'),
(2, 'England'),
(3, 'Zimbabue'),
(4, 'Costa Rica'),
(5, 'Sweden'),
(6, 'South Africa'),
(7, 'Russia'),
(8, 'New Zealand'),
(9, 'Norway'),
(10, 'Germany'),
(11, 'Denmark');

-- --------------------------------------------------------

--
-- Table structure for table `habitats`
--

CREATE TABLE `habitats` (
  `species_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `habitats`
--

INSERT INTO `habitats` (`species_id`, `country_id`) VALUES
(1, 1),
(1, 4),
(2, 3),
(3, 6),
(4, 3),
(4, 7),
(5, 10),
(6, 10),
(7, 10),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(10, 1),
(11, 2),
(12, 2),
(13, 3),
(14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `endangered` tinyint(1) DEFAULT NULL,
  `avatar` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`id`, `name`, `description`, `endangered`, `avatar`) VALUES
(1, 'Anteater', 'Anteater is a common name for the four extant mammal species of the suborder Vermilingua (meaning \"worm tongue\") commonly known for eating ants and termites ', 0, './data/img/anteater.jpg'),
(2, 'Chimpanzee', 'The taxonomical genus Pan (often referred to as chimpanzees or chimps) consists of two extant species: the common chimpanzee and the bonobo.', 1, './data/img/chimpanzee.jpg'),
(3, 'Duckbill Platypus', 'The platypus (Ornithorhynchus anatinus), sometimes referred to as the duck-billed platypus, is a semiaquatic egg-laying mammal endemic to eastern Australia, including Tasmania.', 0, './data/img/duckbill_platypus.jpg'),
(4, 'Elephant', 'Elephants are large mammals of the family Elephantidae and the order Proboscidea.', 1, './data/img/elephant.jpg'),
(5, 'Frog', 'A frog is any member of a diverse and largely carnivorous group of short-bodied, tailless amphibians composing the order Anura', 0, './data/img/frog.jpg'),
(6, 'Gorilla', 'Gorillas are ground-dwelling, predominantly herbivorous apes that inhabit the forests of central Sub-Saharan Africa.', 1, './data/img/gorilla.jpg'),
(7, 'Hedgehog', 'A hedgehog is any of the spiny mammals of the subfamily Erinaceinae, in the eulipotyphlan family Erinaceidae.', 0, './data/img/hedgehog.jpg'),
(8, 'Lion', 'The lion (Panthera leo) is a species in the cat family (Felidae).', 1, './data/img/lion.jpg'),
(9, 'Lizard', 'Lizards are a widespread group of squamate reptiles, with over 6,000 species, ranging across all continents except Antarctica, as well as most oceanic island chains.', 0, './data/img/lizard.jpg'),
(10, 'Panda', 'The giant panda (Ailuropoda melanoleuca, literally \"black and white cat-foot\") also known as panda bear or simply panda, is a bear native to south central China.', 1, './data/img/panda.jpg'),
(11, 'Parrot', 'Parrots, also known as psittacines /ˈsɪtəsaɪnz/,[1][2] are birds of the roughly 393 species in 92 genera that make up the order Psittaciformes, found in most tropical and subtropical regions.', 0, './data/img/parrot.jpg'),
(12, 'Polar Bear', 'The polar bear (Ursus maritimus) is a hypercarnivorous bear whose native range lies largely within the Arctic Circle, encompassing the Arctic Ocean, its surrounding seas and surrounding land masses.', 1, './data/img/polar_bear.jpg'),
(13, 'Rhinoceros', 'A rhinoceros, commonly abbreviated to rhino, is one of any five extant species of odd-toed ungulates in the family Rhinocerotidae, as well as any of the numerous extinct species.', 1, './data/img/rhinoceros.jpg'),
(14, 'Zebra', 'Zebras are several species of African equids (horse family) united by their distinctive black and white striped coats.', 0, './data/img/zebra.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `species_id` (`species_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `species`
--
ALTER TABLE `species`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `animals_ibfk_1` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
