
/***** CREATION DE TABLES ET CONTRAINTES *****/

CREATE TABLE FOURNISSEUR(
   fou_id INT,
   fou_nom VARCHAR(50) NOT NULL,
   fou_pre VARCHAR(50) NOT NULL,
   fou_adr VARCHAR(255) NOT NULL,
   fou_cp INT NOT NULL,
   fou_vil VARCHAR(100) NOT NULL,
   fou_tel INT NOT NULL,
   PRIMARY KEY(fou_id)
);

CREATE TABLE RUBRIQUE(
   rub_id INT,
   rub_nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(rub_id)
);

CREATE TABLE SOURUB(
   sou_rub_id INT,
   sou_rub_nom VARCHAR(50) NOT NULL,
   rub_id INT NOT NULL,
   PRIMARY KEY(sou_rub_id),
   FOREIGN KEY(rub_id) REFERENCES RUBRIQUE(rub_id)
);

CREATE TABLE STATUS(
   sta_id INT,
   sta_nom VARCHAR(50) NOT NULL,
   sta_coe DECIMAL(3,2),
   PRIMARY KEY(sta_id)
);

CREATE TABLE CLIENT(
   cli_id INT,
   cli_nom VARCHAR(50) NOT NULL,
   cli_pre VARCHAR(50) NOT NULL,
   cli_adr VARCHAR(255) NOT NULL,
   cli_liv_adr VARCHAR(255) NOT NULL,
   cli_cp INT NOT NULL,
   cli_vil VARCHAR(100) NOT NULL,
   cli_tel INT NOT NULL,
   cli_liv_cp INT NOT NULL,
   cli_liv_vil VARCHAR(100) NOT NULL,
   cli_fac_adr VARCHAR(255) NOT NULL,
   cli_fac_cp INT NOT NULL,
   cli_fac_vil VARCHAR(100) NOT NULL,
   sta_id INT NOT NULL,
   PRIMARY KEY(cli_id),
   FOREIGN KEY(sta_id) REFERENCES STATUS(sta_id)
);

CREATE TABLE COMMANDE(
   com_id INT,
   com_dat DATE NOT NULL,
   com_eta VARCHAR(50) NOT NULL,
   com_som_tot DECIMAL(15,2) NOT NULL,
   cli_id INT NOT NULL,
   PRIMARY KEY(com_id),
   FOREIGN KEY(cli_id) REFERENCES CLIENT(cli_id)
);

CREATE TABLE FACTURE(
   fac_id INT,
   fac_date DATE NOT NULL,
   fac_red DECIMAL(15,2) NOT NULL,
   fac_tot DECIMAL(15,2) NOT NULL,
   com_id INT NOT NULL,
   PRIMARY KEY(fac_id),
   UNIQUE(com_id),
   FOREIGN KEY(com_id) REFERENCES COMMANDE(com_id)
);

CREATE TABLE LIVRAISON(
   liv_id INT,
   liv_exp DATE NOT NULL,
   liv_rec DATE NOT NULL,
   com_id INT NOT NULL,
   PRIMARY KEY(liv_id),
   FOREIGN KEY(com_id) REFERENCES COMMANDE(com_id)
);

CREATE TABLE PRODUITS(
   pro_id INT,
   pro_lib VARCHAR(50) NOT NULL,
   pro_des TEXT NOT NULL,
   pro_pri DECIMAL(15,2) NOT NULL,
   pro_pho VARCHAR(255) NOT NULL,
   sou_rub_id INT NOT NULL,
   fou_id INT NOT NULL,
   PRIMARY KEY(pro_id),
   FOREIGN KEY(sou_rub_id) REFERENCES SOURUB(sou_rub_id),
   FOREIGN KEY(fou_id) REFERENCES FOURNISSEUR(fou_id)
);

CREATE TABLE REGLFAC(
   reg_id INT,
   reg_dat DATE NOT NULL,
   reg_mon DECIMAL(15,2) NOT NULL,
   fac_id INT NOT NULL,
   PRIMARY KEY(reg_id),
   FOREIGN KEY(fac_id) REFERENCES FACTURE(fac_id)
);

CREATE TABLE LIGNCOMM(
   lig_id INT,
   lig_pri_uni DECIMAL(15,2) NOT NULL,
   lig_qte INT NOT NULL,
   pro_id INT NOT NULL,
   com_id INT,
   PRIMARY KEY(lig_id),
   FOREIGN KEY(pro_id) REFERENCES PRODUITS(pro_id),
   FOREIGN KEY(com_id) REFERENCES COMMANDE(com_id)
);

CREATE TABLE colis(
   liv_id INT,
   pro_id INT,
   liv_qte INT NOT NULL,
   PRIMARY KEY(liv_id, pro_id),
   FOREIGN KEY(liv_id) REFERENCES LIVRAISON(liv_id),
   FOREIGN KEY(pro_id) REFERENCES PRODUITS(pro_id)
);
