
/***** Formalisation des requêtes avec SQL *****/

-- 3-1-3 - Chiffre d'affaires hors taxes généré pour l'ensemble et par fournisseur

    -- 3-1-3-1 - Chiffre d'affaires hors taxes pour l'ensemble des fournisseurs
    CREATE view CA_All_Fournisseur
        AS 
            SELECT sum(lig_pri_uni * lig_qte) AS 'CA'
                FROM ligncomm

    -- 3-1-3-2 - Chiffre d'affaire par fournisseur
    CREATE view CA_Fournisseur 
        AS 
            SELECT fournisseur.fou_id as 'FOURNISSEUR', 
            sum(ligncomm.lig_qte * ligncomm.lig_pri_uni) AS 'CA'
                FROM fournisseur
                    JOIN produits
                    ON produits.fou_id = fournisseur.fou_id
                        JOIN ligncomm
                        ON ligncomm.pro_id = produits.pro_id
                            GROUP BY fournisseur.fou_id


-- 3-1-4 - Liste des produits commandés pour une année sélectionnée (référence et nom du produit, quantité commandée, fournisseur)
CREATE view Produits_commandes
    AS 
        SELECT pro_id AS 'Reference produit',
        sum(lig_qte) AS 'Quantite commandee'
            FROM ligncomm 
                GROUP BY pro_id


-- 3-1-5 - Liste commandes pour un client (date de commande, référence client, montant, état de la commande)
CREATE view COMMANDECLIENT
    AS 
        SELECT commande.com_id, commande.com_dat, client.cli_id, facture.fac_tot
            FROM commande
                JOIN client
                ON client.cli_id = commande.cli_id
                    JOIN facture
                    ON facture.com_id = commande.com_id
                        GROUP BY client.cli_id


-- 3-1-6 - Répartition du chiffre d'affaires hors taxes par type de client
    -- 3-1-6-1 - Chiffre d'affaires hors taxe pour l'ensemble des clients
    CREATE view CA_All_Client
        AS 
            SELECT sum((lig_pri_uni * lig_qte) * status.sta_coe) AS 'CA'
                FROM ligncomm
                JOIN commande
                ON ligncomm.com_id = commande.com_id
                    JOIN client
                    ON client.cli_id = commande.cli_id
                        JOIN status
                        ON client.sta_id = status.sta_id

    -- 3-1-6-2 - Chiffre d'affaire par type de client
    CREATE view CA_Categorie_client
        AS 
            SELECT sta_nom as 'CATEGORIE',
            sum((lig_pri_uni * lig_qte) * status.sta_coe) AS 'CA'
                FROM ligncomm
                JOIN commande
                ON ligncomm.com_id = commande.com_id
                    JOIN client
                    on client.cli_id = commande.cli_id
                        JOIN status
                        ON client.sta_id = status.sta_id
                            GROUP BY sta_nom 


-- 3-1-7 - Commande en cours de livraison
CREATE view Commande_en_livraison
    AS 
        SELECT * 
            FROM commande
                WHERE commande.com_eta = 'En cours'