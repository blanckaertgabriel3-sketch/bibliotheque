-- 1. Création de la base de données 

DROP DATABASE IF EXISTS bibliotheque; 

CREATE DATABASE bibliotheque; 

USE bibliotheque; 

  

-- 2. Création de la table 'auteurs' 

CREATE TABLE auteurs ( 

    id INT AUTO_INCREMENT PRIMARY KEY, 

    nom VARCHAR(50) NOT NULL, 

    prenom VARCHAR(50) NOT NULL, 

    date_naissance DATE 

); 

  

-- 3. Création de la table 'livres' 

CREATE TABLE livres ( 

    id INT AUTO_INCREMENT PRIMARY KEY, 

    titre VARCHAR(100) NOT NULL, 

    annee_publication YEAR, 

    auteur_id INT, 

    FOREIGN KEY (auteur_id) REFERENCES auteurs(id) 

); 

  

-- 4. Insertion de quelques données 

INSERT INTO auteurs (nom, prenom, date_naissance) VALUES 

('Hugo', 'Victor', '1802-02-26'), 

('Austen', 'Jane', '1775-12-16'); 

  

INSERT INTO livres (titre, annee_publication, auteur_id) VALUES 

('Les Misérables', 1862, 1), 

('Orgueil et Préjugés', 1813, 2); 