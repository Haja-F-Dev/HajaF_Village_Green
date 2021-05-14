
/***** Programmer des procédures stockées sur le SGBD *****/

-- 3-2-1 - Procédure stockée qui renvoi le délai moyen entre la date de commande et la date de facturation

DELIMITER //

CREATE PROCEDURE delai_moyen_com_liv()
    BEGIN
        SELECT AVG(DATEDIFF(commande.com_dat, facture.fac_date)) AS 'Delai entre la date de commande et la date de facturation'
            FROM commande
                JOIN facture
                    ON facture.com_id = commande.com_id
                        WHERE facture.fac_id IS NOT NULL;
    END //
DELIMITER ;
