
/***** Créez une vue correspondant à la jointure Produits - Fournisseurs *****/

-- 3.3 - Créez une vue correspondant à la jointure Produit - Fournisseur
CREATE view Produit_Fournisseur
    AS 
        SELECT produits.pro_id, produits.pro_lib, fournisseur.fou_id, fournisseur.fou_nom, fournisseur.fou_pre
            FROM produits
                JOIN fournisseur
                    ON fournisseur.fou_id = produits.fou_id