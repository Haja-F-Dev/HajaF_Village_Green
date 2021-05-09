
/***** CREATION DES PROFILS DE CONNEXION ET AUTORISATIONS *****/


-- Profil visiteur : lecture sur le catalogue
CREATE ROLE 'r_villagegreen_visiteur'@'localhost' -- Création role visiteur
GRANT select ON villagegreen.produits -- Lecture sur catalogue
TO 'r_villagegreen_visiteur'@'localhost'

-- Profil client : lecture sur toute la base (insertion et mise à jour dans commande et client)
CREATE ROLE 'r_villagegreen_client'@'localhost' -- Création role client
GRANT select ON villagegreen.* -- lecture sur toute la base
GRANT insert, update ON villagegreen.commande, villagegreen.client -- insertion et mise à jour sur les tables commande et client

-- Profil gestion : lecture/écriture dans la base
CREATE ROLE 'r_villagegreen_gestion'@'localhost' -- Création role gestion
GRANT select, insert ON villagegreen.* -- lecture et écriture dans la base

-- Profil administrateur
CREATE ROLE 'r_villagegreen_admin'@'localhost' -- Création role administrateur
GRANT select, insert, delete ON villagegreen.* --  lecture, écriture et suppression 