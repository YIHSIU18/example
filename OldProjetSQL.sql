/*----------------------CREAT TABLE----------------------*/

/*Structure de la table ANIMAUX*/
CREATE TABLE `Animaux` (
    `Id_Animaux` int(11) NOT NULL PRIMARY KEY,
    `Nom_Animaux` varchar(50) NOT NULL,
    `Date_Naissance` date NOT NULL,
    `Id_Aliment` int FOREIGN KEY REFERENCES Type_Aliments (`id_aliments`),
    `Id_Race` int FOREIGN KEY REFERENCES Race (`id_race`));

/*Structure de la table VENTE*/
CREATE TABLE `Vente` (
    `Id_Vente` int(11) NOT NULL PRIMARY KEY,
    `Date_Vente` date NOT NULL,
    `Id_Client` int FOREIGN KEY REFERENCES Client (`id_client`),
    `Id_Employee` int FOREIGN KEY REFERENCES Employee (`id_employee`));

/*Structure de la table CLIENT*/
CREATE TABLE `Client` (
    `Id_Client` int(11) NOT NULL PRIMARY KEY,
    `Nom_Client` varchar (100) NOT NULL,
    `Prenom_Client` varchar (100) NOT NULL,
    `Telephone` int(50) NOT NULL,
    `Adresse` varchar (150) DEFAULT NULL);

/*Structure de la table RACE*/
CREATE TABLE `Race` (
    `Id_Race` int(11) NOT NULL PRIMARY KEY,
    `Nom_Race` varchar (200) NOT NULL);

/*Structure de la table Vente_Animaux*/
CREATE TABLE `Vente_Animaux` (
    `Id_Vente_Animaux` int(11) NOT NULL PRIMARY KEY,
    `Id_Vente` int FOREIGN KEY REFERENCES Vente (`id_vente`),
    `Id_Animaux` int FOREIGN KEY REFERENCES Animaux (`id_animaux`));

--
-- Structure de la table `Employee`
--

CREATE TABLE `Employee` (
  `Id_Employee` int(11) NOT NULL PRIMARY KEY,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Id_ville` int FOREIGN KEY REFERENCES Ville(`Id_ville`)
);

--
-- Structure de la table `Ville`
--

CREATE TABLE `Ville` (
  `Id_Ville` int(11) NOT NULL PRIMARY KEY,
  `Nom` varchar(50) NOT NULL,
  `ZIPCode` int(11) NOT NULL
);

--
-- Structure de la table `Type_Aliments`
--

CREATE TABLE `Type_Aliments` (
  `Id_aliments` int(11) NOT NULL PRIMARY KEY,
  `Categorie` varchar(50) NOT NULL
);

--
-- Structure de la table `Type Aliments Fournisseurs`
--

CREATE TABLE `Type_Aliments_Fournisseurs` (
  `Id_Type_Aliments_Fournisseurs` int(11) NOT NULL PRIMARY KEY,
  `Id_Type_Aliments` int FOREIGN KEY REFERENCES Type_Aliments(`Id_Type_Aliments`),
  `Id_Fournisseurs` int FOREIGN KEY REFERENCES Fournisseurs(`Id_Fournisseurs`)
);

--
-- Structure de la table `Fournisseurs`
--

CREATE TABLE `Fournisseurs` (
  `Id_Fournisseurs` int(11) NOT NULL PRIMARY KEY,
  `Nom_Fournisseurs` varchar(50) NOT NULL
);


/*-------------------INSERT TABLE-------------------------*/

/*Contenu de la table ANIMAUX*/
 INSERT INTO `Animaux` (`Id_Animaux`, `Nom_Animaux`, `Date_Naissance`, `Id_Aliments`, `Id_Race`) VALUES
    (1, 'Lion', '2012-06-27', 1, 4),
    (2, 'Elephant', '2010-01-04', 2, 3),
    (3, 'Girafe', '2015-09-20', 2, 6),
    (4, 'Hippopotame', '2023-12-01', 5, Null),
    (5, 'Panda', '2019-06-02', 2, 1);

/*Contenu de la table VENTE*/
 INSERT INTO `Vente` (`Id_Vente`, `Date_Vente`, `Id_Client`, `Id_Employe`) VALUES
    (1, '2020-04-21', 2, 1),
    (2, '2022-08-10', 1, 3),
    (3, '2021-07-03', 3, 5),
    (4, '2018-11-15', 2, 6),
    (5, '2017-06-05', 5, 10);

/*Contenu de la table CLIENT*/
 INSERT INTO `Client` (`Id_Client`, `Nom_Client`, `Prenom_Client`, `Telephone`, `Adresse`) VALUES
    (1, 'Dupont', 'Marc', 0658963741, 'Place Saint-Marc'),
    (2, 'Petit', 'Alexia', 0639745589, 'Times Square'),
    (3, 'Martin', 'Paul', 0423475561, 'Rue Mayor'),
    (4, 'Durand', 'Antoine', 0785697411, 'Rue El Fna'),
    (5, 'Dubois', 'Emy', 0436241987, 'Place du Dam');

/*Contenu de la table RACE*/
 INSERT INTO `Race` (`Id_Race`, `Nom_Race`) VALUES
    (1, 'Panda geant'),
    (2, 'Panda roux'),
    (3, 'Elephant Afrique'),
    (4, 'Lion Asie'),
    (5, 'Lion Senegal'),
    (6, 'Girafe Masai');

/*Contenu de la table Vente_Animaux*/
 INSERT INTO `Race` (`Id_Vente_Animaux`,`Id_Vente`, `Id_Animaux`) VALUES
    (1, 1, 2),
    (2, 2, NULL),
    (3, 3, 1),
    (4, 4, NULL),
    (5, 5, NULL),
    (6, 6, 4);

--
-- Contenu de la table `Employee`
--

INSERT INTO `Employee` (`Id_Employee`, `Nom`, `Prenom`, `Id_ville`) VALUES
(1, 'ADJANI', 'ISABELLE', 1),
(2, 'LAMBERT', 'CHRISTOPHE', 3),
(3, 'BOHRINGER', 'RICHARD', 2),
(4, 'GALABRU', 'MICHEL', 1),
(5, 'PARILLAUD', 'ANNE', 2),
(6, 'FORD', 'HARRISON', 5),
(7, 'FISHER', 'CARRIE', 6),
(8, 'SALDANA', 'ZOE', 1),
(9, 'WEAVER', 'SIGOURNEY', 1),
(10, 'RENO', 'JEAN', 1);

--
-- Contenu de la table `Ville`
--

INSERT INTO `Ville` (`Id_Ville`, `Nom`, `ZIPCode`) VALUES
(1, 'Lyon', 69000),
(2, 'Paris', 75000),
(3, 'Nantes', 44000),
(4, 'Bordeaux', 33000),
(5, 'Toulouse', 31000),
(6, 'Dijon', 21000);

--
-- Contenu de la table `Type_Aliments`
--

INSERT INTO `Type_Aliments` (`Id_aliments`, `Categorie`) VALUES
(1, 'Carnivor'),
(2, 'Herbivore' ),
(3, 'Omnivore'),
(4, 'Vegetarine' ),
(5, 'Les Regims specifiques'),
(6, 'Indefini');

--
-- Contenu de la table `Type_Aliments_Fournisseurs`
--

INSERT INTO `Type_Aliments_Fournisseurs` (`Id_Type_Aliments_Fournisseurs`,`Id_Type_Aliments`, `Id_Fournisseurs`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6);


--
-- Contenu de la table `Fournisseurs`
--

INSERT INTO `Fournisseurs` (`Id_Fournisseurs`, `Nom_Fournisseurs`) VALUES
(1, 'Purali'),
(2, 'Doggy Dîner'),
(3, 'NutriCats'),
(4, 'AquaFoods'),
(5, 'Ventura Animal'),
(6, 'Faim de Chien'),
(7, 'Nutri Harmonie'),
(8, 'Croc Croquettes');