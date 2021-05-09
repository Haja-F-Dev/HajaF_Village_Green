
/***** ALIMENTATION DE LA BASE DE DONNEE VILLAGEGREEN AVEC ORDRE DE REMPLISSAGE *****/

-- 1 - Table : status
INSERT INTO `status` (`sta_id`,`sta_nom`,`sta_coe`) VALUES (1,"Moody",6),(2,"Hansen",6),(3,"Holden",5),(4,"Yang",7),(5,"Hess",2),(6,"Perry",4),(7,"Drake",6),(8,"Ball",9),(9,"Wagner",5),(10,"Richmond",8);

-- 2 - Table : client
INSERT INTO `client` (`cli_id`,`cli_nom`,`cli_pre`,`cli_adr`,`cli_liv_adr`,`cli_cp`,`cli_vil`,`cli_tel`,`cli_liv_cp`,`cli_liv_vil`,`cli_fac_adr`,`cli_fac_cp`,`cli_fac_vil`,`sta_id`) VALUES (1,"Cathleen","Brock","178-7498 Ligula. St.","Ap #712-4163 Id Rd.","48002-18889","Isca sullo Ionio","08 85 11 24 24","998308","Dolceacqua","Ap #628-1728 Mollis Rd.","51607","Ananindeua",1),(2,"Montana","Deleon","Ap #269-9000 Ipsum. Av.","867-774 Nam St.","4024","Fahler","06 41 20 26 37","10059","Rock Springs","P.O. Box 934, 8809 Mauris. Rd.","77905-942","Kirkland",2),(3,"Amir","Kane","6967 Tortor. Road","2492 Urna. St.","26829","Granada","03 60 42 87 08","6232","Fairbanks","7181 Convallis, Av.","17697","Tallahassee",3),(4,"Beck","Hancock","Ap #602-6334 Ipsum St.","3692 Facilisis Rd.","83651-433","Cimitile","02 96 59 53 65","263134","Río Bueno","Ap #984-7691 Felis Av.","62735-22457","Boston",4),(5,"Zorita","Fischer","532-1527 Adipiscing Road","729 Turpis. Rd.","74883","Bear","02 65 50 34 85","62754","Bornival","474-4872 Arcu. Rd.","6574","Vialky",5),(6,"Justin","Roman","512-6909 Erat Rd.","331-1369 A Rd.","Z4437","Deline","04 47 47 38 30","2919","Pekanbaru","4635 Montes, Ave","Z5768","Smithers",6),(7,"Cody","Sharp","2461 Dignissim Avenue","Ap #564-7182 Est, Street","4415","Paulatuk","02 69 80 77 80","8765","Baubau","285-4594 Sem Street","377748","Westende",7),(8,"Anthony","Stewart","P.O. Box 420, 4040 Sed, Rd.","Ap #199-4787 Vitae Ave","14074","Memphis","01 91 82 20 27","75257-183","Bathurst","Ap #746-745 Aliquet Avenue","016441","Harnai",8),(9,"Pearl","Kline","Ap #158-1813 Ut Rd.","846-8029 Mi Street","93215","Rishra","01 60 19 55 70","60818","MŽlin","437-5931 Nisl. Avenue","13106","Buner",9),(10,"Emery","Rodriguez","832-3252 Eu Rd.","Ap #141-2746 Maecenas Avenue","354699","Tulita","03 99 67 94 25","615358","Harbour Grace","864-6206 Non Avenue","79691","Pironchamps",10);

-- 3 - Table : commande
INSERT INTO `commande` (`com_id`,`com_dat`,`com_eta`,`com_som_tot`,`cli_id`) VALUES (1,"2020-07-05","En cours","19,225€",1),(2,"2020-11-14","En cours","5,018€",2),(3,"2021-07-18","En cours","19,008€",3),(4,"2020-11-16","En cours","5,913€",4),(5,"2020-06-10","En cours","13,210€",5),(6,"2021-11-16","En cours","15,569€",6),(7,"2020-09-08","En cours","8,661€",7),(8,"2021-01-10","En cours","3,979€",8),(9,"2021-07-30","En cours","17,983€",9),(10,"2020-06-22","En cours","12,596€",10);

-- 4 - Table : facture
INSERT INTO `facture` (`fac_id`,`fac_date`,`fac_red`,`fac_tot`,`com_id`) VALUES (1,"2020-08-30","4,65€","13,753€",1),(2,"2021-02-12","5,14€","3,130€",2),(3,"2020-12-29","0,05€","18,178€",3),(4,"2020-09-18","8,38€","4,481€",4),(5,"2020-11-22","0,77€","17,518€",5),(6,"2020-05-15","11,50€","18,041€",6),(7,"2021-11-05","10,28€","17,659€",7),(8,"2021-01-31","4,55€","14,308€",8),(9,"2020-09-07","14,62€","5,471€",9),(10,"2021-05-22","12,39€","19,619€",10);

-- 5 - Table : reglfac
INSERT INTO `reglfac` (`reg_id`,`reg_dat`,`reg_mon`,`fac_id`) VALUES (1,"2020-09-12","12,45€",1),(2,"2020-12-26","85,83€",2),(3,"2020-12-06","75,38€",3),(4,"2021-09-06","06,12€",4),(5,"2021-07-25","11,86€",5),(6,"2020-10-23","50,14€",6),(7,"2020-12-16","21,70€",7),(8,"2020-09-27","1,50€",8),(9,"2020-11-24","82,86€",9),(10,"2022-04-15","99,59€",10);

-- 6 - Table : livraison
INSERT INTO `livraison` (`liv_id`,`liv_exp`,`liv_rec`,`com_id`) VALUES (1,"2020-06-24 ","2021-03-31 ",1),(2,"2022-01-08 ","2022-01-29 ",2),(3,"2020-12-14 ","2021-07-30 ",3),(4,"2022-03-08 ","2021-12-01 ",4),(5,"2020-10-18 ","2021-05-24 ",5),(6,"2021-06-20 ","2022-04-12 ",6),(7,"2022-01-08 ","2021-10-31 ",7),(8,"2020-07-26 ","2021-01-29 ",8),(9,"2021-12-27 ","2020-08-04 ",9),(10,"2020-10-20 ","2022-04-12 ",10);

-- 7 - Table : fournisseur
INSERT INTO `fournisseur` (`fou_id`,`fou_nom`,`fou_pre`,`fou_adr`,`fou_cp`,`fou_vil`,`fou_tel`) VALUES (1,"Jonah","Randall","Appartement 223-1236 Sem Route","98287","Barghe","07 05 85 75 31"),(2,"Uma","Duffy","Appartement 387-8887 Donec Av.","82910","Grasse","05 68 62 19 82"),(3,"Madaline","Collins","Appartement 818-5385 Donec Chemin","48465","South Portland","03 10 65 82 21"),(4,"Chastity","Fisher","8794 Facilisis, Chemin","77616","Frankfort","07 17 44 60 30"),(5,"Ifeoma","Huff","Appartement 893-2973 Egestas. Ave","78106","Deschambault","01 78 54 71 17"),(6,"Montana","Neal","6102 Ligula. Rd.","11832","Blue Mountains","03 06 67 60 70"),(7,"Alexa","Mclean","CP 288, 8136 Velit Chemin","82678","Gubkin","07 49 23 11 51"),(8,"Jaden","Lamb","7589 Metus Avenue","77174","Baschi","01 96 28 77 31"),(9,"Jordan","Hutchinson","CP 978, 9744 Sed, Rue","09626","Paradise","04 99 83 41 78"),(10,"Violet","Baird","CP 658, 1254 Ligula. Av.","46574","Bengkulu","06 33 99 98 48");

-- 8 - Table : rubrique
INSERT INTO `rubrique` (`rub_id`,`rub_nom`) VALUES (1,"rubrique"),(2,"rubrique"),(3,"rubrique"),(4,"rubrique"),(5,"rubrique"),(6,"rubrique"),(7,"rubrique"),(8,"rubrique"),(9,"rubrique"),(10,"rubrique");

-- 9 - Table : sourub
INSERT INTO `sourub` (`sou_rub_id`,`sou_rub_nom`,`rub_id`) VALUES (1,"sous-rubrique",1),(2,"sous-rubrique",2),(3,"sous-rubrique",3),(4,"sous-rubrique",4),(5,"sous-rubrique",5),(6,"sous-rubrique",6),(7,"sous-rubrique",7),(8,"sous-rubrique",8),(9,"sous-rubrique",9),(10,"sous-rubrique",10);

-- 10 - Table : produits
INSERT INTO `produits` (`pro_id`,`pro_lib`,`pro_des`,`pro_pri`,`pro_pho`,`sou_rub_id`,`fou_id`) VALUES (1,"nom du produit","Lorem ipsum dolor sit amet, consectetuer adipiscing","3,625€","path photo",1,1),(2,"nom du produit","Lorem ipsum","12,237€","path photo",2,2),(3,"nom du produit","Lorem ipsum","4,973€","path photo",3,3),(4,"nom du produit","Lorem ipsum dolor sit","0,235€","path photo",4,4),(5,"nom du produit","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed","8,063€","path photo",5,5),(6,"nom du produit","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed","15,368€","path photo",6,6),(7,"nom du produit","Lorem ipsum dolor sit","2,705€","path photo",7,7),(8,"nom du produit","Lorem ipsum dolor sit amet, consectetuer","10,209€","path photo",8,8),(9,"nom du produit","Lorem ipsum","7,978€","path photo",9,9),(10,"nom du produit","Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed","14,059€","path photo",10,10);

-- 11 - Table : ligncomm
INSERT INTO `ligncomm` (`lig_id`,`lig_pri_uni`,`lig_qte`,`pro_id`,`com_id`) VALUES (1,"17,888€",31,1,1),(2,"14,262€",44,2,2),(3,"15,269€",59,3,3),(4,"16,853€",97,4,4),(5,"8,229€",79,5,5),(6,"14,060€",80,6,6),(7,"13,637€",53,7,7),(8,"5,417€",84,8,8),(9,"12,282€",41,9,9),(10,"15,708€",85,10,10);

-- 12 - Table : colis
INSERT INTO `colis` (`liv_id`,`pro_id`,`liv_qte`) VALUES (1,1,60),(2,2,84),(3,3,33),(4,4,23),(5,5,32),(6,6,39),(7,7,80),(8,8,71),(9,9,38),(10,10,86);
