-- 1. Création de la base de données 
DROP DATABASE IF EXISTS bibliotheque;
CREATE DATABASE bibliotheque;
use bibliotheque;

-- 2. Création de la table 'auteurs' 
CREATE TABLE individus  
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

    last_name VARCHAR (10),

    first_name VARCHAR (10),

    date_birth DATE

);

-- 3. Création de la table 'livres' 

-- 4. Insertion de quelques données 