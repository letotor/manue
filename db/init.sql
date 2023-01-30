-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: manue
-- ------------------------------------------------------
-- Server version	8.0.30
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'artisan'),(3,'user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `society`
--

DROP TABLE IF EXISTS `society`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `society` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `siret` int NOT NULL,
  `image` varchar(1024) CHARACTER SET utf8mb4   DEFAULT NULL,
  `details` varchar(256) DEFAULT NULL,
  `open_closed` json DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4   DEFAULT NULL,
  `contact_email` varchar(256) NOT NULL,
  `contact_instagram` varchar(256) DEFAULT NULL,
  `contact_website` varchar(512) DEFAULT NULL,
  `adress_street` varchar(256) NOT NULL,
  `adress_num` int DEFAULT NULL,
  `adress_suffix` varchar(10) DEFAULT NULL,
  `adress_code` int NOT NULL,
  `adress_cedex` int DEFAULT NULL,
  `adress_city` varchar(45) NOT NULL,
  `address_coordinate_x` varchar(45) DEFAULT NULL,
  `address_coordinate_y` varchar(45) DEFAULT NULL,
  `status_is_accept` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `siret_UNIQUE` (`siret`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `society`
--

LOCK TABLES `society` WRITE;
/*!40000 ALTER TABLE `society` DISABLE KEYS */;
INSERT INTO `society` VALUES (1,'Jungle Utopia',123456789,'https://toulousecreative.s3.filebase.com/Les%20inscrits/visual-stories-micheile-XPCdZXncj64-unsplash-scaled.jpeg','Studio de création florale sur-mesure. Boutique de fleurs pirates\n\nDes moments de partage, de convivialité et de transmission.\nAteliers de confection de bouquets, de compositions ou d’accessoires en fleurs fraîches et fleurs séchées. ',NULL,'France','0534644370','jungle@gmail.com','https://www.instagram.com/jungleutopia/','https://www.instagram.com/jungleutopia/',' place de l\'estrapade',9,NULL,31300,NULL,'Toulouse','43.59889','1.432676',0),(2,'Un chou dans les étoiles',55555,'https://toulousecreative.s3.filebase.com/Les%20inscrits/Un%20chou%20dans%20les%20e%CC%81toiles.png','Boutique spécialisée en pâtisserie\nLa boutique, matériel et produits spécifiques\nL’atelier, pour particuliers et entreprises','{\"Fri\": \"10H00-13H00 14H30-19H00\", \"Mon\": \"\", \"Sat\": \"10H00-13H00 14H30-19H00\", \"Sun\": \"\", \"Thu\": \"10H00-13H00 14H30-19H00\", \"Tue\": \"10H00-13H00 14H30-19H00\", \"Wed\": \"10H00-13H00 14H30-19H00\"}','france','0567087348','choux@gmail.com','https://www.instagram.com/un_chou_dans_les_etoiles/','https://www.unchoudanslesetoiles.fr/','Rue Pierre Loti',5,'bis',31830,0,'Plaisance-du-Touch\n','43.569393753304674','1.3074067214452594',1),(3,'Elodie Blueberry',1234,'https://toulousecreative.s3.filebase.com/Les%20inscrits/Elodie%20Blueberry.png','Encore une dingue des aiguilles!\nPatrons de broderie & cours de couture\nBody positive journey','{\"Fri\": \"10H00-13H00 14H30-19H00\", \"Mon\": \"\", \"Sat\": \"10H00-13H00 14H30-19H00\", \"Sun\": \"\", \"Thu\": \"10H00-13H00 14H30-19H00\", \"Tue\": \"10H00-13H00 14H30-19H00\", \"Wed\": \"10H00-13H00 14H30-19H00\"}','france','0567097449','elodie@gmail.com','https://www.instagram.com/elodieblueberry/','https://elodieblueberry.fr/','Nomade',NULL,'',31300,0,'Toulouse','43.569393753304675','1.3074067214452596',1),(4,'Ady Toulouse',45723,'https://toulousecreative.s3.filebase.com/Les%20inscrits/Ady%20Toulouse.png','Magasin de machines à coudre, de machines à broder et surjeteuses multimarques depuis 10 ans.','{\"Fri\": \"10H00-13H00 14H30-19H00\", \"Mon\": \"\", \"Sat\": \"10H00-13H00 14H30-19H00\", \"Sun\": \"\", \"Thu\": \"10H00-13H00 14H30-19H00\", \"Tue\": \"10H00-13H00 14H30-19H00\", \"Wed\": \"10H00-13H00 14H30-19H00\"}','france','0531619842','Ady@gmail.com','https://www.instagram.com/ady_toulouse/','https://www.ady-toulouse.com/','Allée Jean Jaurès',46,'',31000,0,'Toulouse','43.60681241204197','1.4507049650835928',1),(5,'Pot & Co',454542,'https://toulousecreative.s3.filebase.com/Les%20inscrits/PotNco.png','Atelier 100% détente autour du DIY\nUn moment de lâcher-prise et d apport s\'estime de soi.\nSeule, en famille, entre amis','{\"Fri\": \"10H00-13H00 14H30-19H00\", \"Mon\": \"\", \"Sat\": \"10H00-13H00 14H30-19H00\", \"Sun\": \"\", \"Thu\": \"10H00-13H00 14H30-19H00\", \"Tue\": \"10H00-13H00 14H30-19H00\", \"Wed\": \"10H00-13H00 14H30-19H00\"}','france','0650254605','pot@gmail.com','https://www.instagram.com/potnco/','https://potnco.blogspot.com/','Nomade',0,'',31830,0,'Castanet Tolosan','43.509996106120276','1.5145675465859172',1),(6,'Les Rêveries d\'Hercule',66666,'https://toulousecreative.s3.filebase.com/Les%20inscrits/Les%20re%CC%82veries%20d_Hercule.png','Café céramique à Toulouse\nDécorez des objets en céramique !\nKits pour peindre à la maison\nAteliers enfants','{\"Fri\": \"10H00-13H00 14H30-19H00\", \"Mon\": \"\", \"Sat\": \"10H00-13H00 14H30-19H00\", \"Sun\": \"\", \"Thu\": \"10H00-13H00 14H30-19H00\", \"Tue\": \"10H00-13H00 14H30-19H00\", \"Wed\": \"10H00-13H00 14H30-19H00\"}','france','0581976688','hercule@gmail.com','https://www.instagram.com/lesreveriesdhercule/','https://www.lesreveriesdhercule.com/','Rue Massenet',3,'',31400,0,'Toulouse','43.58326650657566','1.4449196506145003',1),(7,'Atelier Kyko',5555,'https://toulousecreative.s3.filebase.com/Les%20inscrits/Atelier%20kyko.png','Boutique avec cadeaux 100% personnalisables.','{\"Fri\": \"10H00-13H00 14H30-19H00\", \"Mon\": \"\", \"Sat\": \"10H00-13H00 14H30-19H00\", \"Sun\": \"\", \"Thu\": \"10H00-13H00 14H30-19H00\", \"Tue\": \"10H00-13H00 14H30-19H00\", \"Wed\": \"10H00-13H00 14H30-19H00\"}','france','0950018680','Kyko@gmail.com','https://www.instagram.com/atelierkyko/','https://www.atelierkyko.fr/','Cour Pasteur',9,'',31460,0,'Caraman','43.528393239446785','1.7586115823706827',1),(9,'Macramour Community',55545,'https://toulousecreative.s3.filebase.com/Les%20inscrits/Macramour%20community.png','Faiseuse de noeuds\nEnseigne l\'Art du Macramé','{\"Fri\": \"10H00-13H00 14H30-19H00\", \"Mon\": \"\", \"Sat\": \"10H00-13H00 14H30-19H00\", \"Sun\": \"\", \"Thu\": \"10H00-13H00 14H30-19H00\", \"Tue\": \"10H00-13H00 14H30-19H00\", \"Wed\": \"10H00-13H00 14H30-19H00\"}','france\n',NULL,'macramour@gmail.com','https://www.instagram.com/macramourcommunity_by_fabee/','','Nomade',0,'',31300,0,'Toulouse','43.59906229118512','1.4449196506145003',1),(11,'Comme une poule',555566,'https://toulousecreative.s3.filebase.com/Les%20inscrits/Comme%20une%20poule.png','École de cuisine végétale\nCours à Toulouse & cours en ligne','{\"Fri\": \"10H00-13H00 14H30-19H00\", \"Mon\": \"\", \"Sat\": \"10H00-13H00 14H30-19H00\", \"Sun\": \"\", \"Thu\": \"10H00-13H00 14H30-19H00\", \"Tue\": \"10H00-13H00 14H30-19H00\", \"Wed\": \"10H00-13H00 14H30-19H00\"}','france','0695747836','poule@gmail.com','https://www.instagram.com/commeunepoule/','https://www.commeunepoule.com/','Rue Massenet',3,NULL,31400,NULL,'Toulouse','43.58326650657566','1.4449196506145003',1),(13,'Atelier Eyssart',555567,'https://toulousecreative.s3.filebase.com/Les%20inscrits/Atelier%20Eyssart.png','Atelier ~ Boutique spécialiste du terrarium\nConception Toulousaine ','{\"Fri\": \"10H00-13H00 14H30-19H00\", \"Mon\": \"\", \"Sat\": \"10H00-13H00 14H30-19H00\", \"Sun\": \"\", \"Thu\": \"10H00-13H00 14H30-19H00\", \"Tue\": \"10H00-13H00 14H30-19H00\", \"Wed\": \"10H00-13H00 14H30-19H00\"}','france','0561212096','Eyssart@gmail.com','https://www.instagram.com/atelier_eyssart/','https://eyssart.fr/','Rue Charles de Rémusat',52,NULL,31000,NULL,'Toulouse','43.6074298103013','1.445352507282937',1);
/*!40000 ALTER TABLE `society` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `society_category`
--

DROP TABLE IF EXISTS `society_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `society_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `image` varchar(1024) CHARACTER SET utf8mb4   DEFAULT NULL,
  `popularity` varchar(45) DEFAULT NULL,
  `society_theme_id` int NOT NULL,
  PRIMARY KEY (`id`,`society_theme_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_workshop_category_workshop_theme1_idx` (`society_theme_id`),
  CONSTRAINT `fk_workshop_category_workshop_theme1` FOREIGN KEY (`society_theme_id`) REFERENCES `society_theme` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `society_category`
--

LOCK TABLES `society_category` WRITE;
/*!40000 ALTER TABLE `society_category` DISABLE KEYS */;
INSERT INTO `society_category` VALUES (1,'Broderie','https://img.freepik.com/photos-gratuite/main-tenant-aiguille-fil-cadre-du-tambour_23-2148193683.jpg?w=2000&t=st=1663150407~exp=1663151007~hmac=809ace37a27a6370c20744c6dff54218a6083b87ba72cea9c904dfe6a1805a51','',1),(2,'Céramique','https://img.freepik.com/photos-gratuite/gros-plan-mains-femme-tatouage-colore-travaillant-argile-creant-forme-vase-au-studio-poterie_574295-966.jpg?w=2000&t=st=1663150566~exp=1663151166~hmac=b8e54298116369ee867a1e3774181c9a4bc0889f8b6626f2d017645de15dce30','',61),(3,'Couture','https://img.freepik.com/photos-gratuite/dessin-tissu_1098-18012.jpg?w=2000&t=st=1663150655~exp=1663151255~hmac=5e0fa016f9012d7662052534983822883d5ec8601920716049ec3390202c3cde','',1),(4,'Cuisine vegetale','https://img.freepik.com/photos-premium/huile-amande-noix-amandes-bol-delicieuse-huile-amandes-douces-dans-bouteille-verre-noix-amande-grillee-pour-aliments-sains-collations-huiles-vegetales-biologiques-pour-cuisine-concept-spa_73523-7547.jpg?w=2000','',66),(5,'Divers','https://toulousecreative.s3.filebase.com/Type_Atelier/Divers.jpg','',61),(6,'Floral','https://toulousecreative.s3.filebase.com/Type_Atelier/floral%20-%20Photo%20by%20Jacalyn%20Beales%20on%20Unsplash.jpg','',66),(7,'Macramé','https://img.freepik.com/vecteurs-libre/ensemble-elements-boho-dessines-main_23-2149035401.jpg?w=2000&t=st=1663150897~exp=1663151497~hmac=52ff578b7261706b4fc67783dee9c3cd41a101c5fb755fc58ebea5f1cb09bdfb',NULL,1),(8,'Numérique','https://toulousecreative.s3.filebase.com/Type_Atelier/numerique%20-%20Photo%20by%20eMotion%20Tech%20on%20Unsplash.jpg',NULL,64),(9,'Pâtisserie','https://toulousecreative.s3.filebase.com/Type_Atelier/patisserie%20-%20Photo%20by%20Siami%20Tan%20on%20Unsplash.jpg',NULL,63),(10,'Peinture sur céramique','https://toulousecreative.s3.filebase.com/Type_Atelier/peinture%20sur%20ce%CC%81ramique%20-%20Photo%20by%20Kazuo%20ota%20on%20Unsplash.jpg',NULL,61),(11,'Terrarium','https://toulousecreative.s3.filebase.com/Type_Atelier/terrarium%20-%20Photo%20by%20Maud%20Bocquillod%20on%20Unsplash.jpg',NULL,66),(12,'Tissage','https://toulousecreative.s3.filebase.com/Type_Atelier/tissage%20-%20Photo%20by%20Chris%20Chow%20on%20Unsplash.jpg',NULL,1);
/*!40000 ALTER TABLE `society_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `society_has_society_category`
--

DROP TABLE IF EXISTS `society_has_society_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `society_has_society_category` (
  `society_id` int NOT NULL,
  `society_category_id` int NOT NULL,
  PRIMARY KEY (`society_id`,`society_category_id`),
  KEY `fk_society_has_society_category_society_category1_idx` (`society_category_id`),
  KEY `fk_society_has_society_category_society1_idx` (`society_id`),
  CONSTRAINT `fk_society_has_society_category_society1` FOREIGN KEY (`society_id`) REFERENCES `society` (`id`),
  CONSTRAINT `fk_society_has_society_category_society_category1` FOREIGN KEY (`society_category_id`) REFERENCES `society_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `society_has_society_category`
--

LOCK TABLES `society_has_society_category` WRITE;
/*!40000 ALTER TABLE `society_has_society_category` DISABLE KEYS */;
INSERT INTO `society_has_society_category` VALUES (3,1),(4,3),(11,4),(5,5),(7,5),(1,6),(9,7),(2,9),(6,10),(13,11);
/*!40000 ALTER TABLE `society_has_society_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `society_theme`
--

DROP TABLE IF EXISTS `society_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `society_theme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `popularity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `society_theme`
--

LOCK TABLES `society_theme` WRITE;
/*!40000 ALTER TABLE `society_theme` DISABLE KEYS */;
INSERT INTO `society_theme` VALUES (1,'Art du fil','https://toulousecreative.s3.filebase.com/art%20du%20fil%20-%20Photo%20by%20Aneta%20Pawlik%20on%20Unsplash.jpg','7'),(61,'Beaux art','https://toulousecreative.s3.filebase.com/BEaux-arts.jpg','2'),(62,'Bricolage','https://toulousecreative.s3.filebase.com/Bricolage%20-%20Photo%20by%20Ashim%20D%E2%80%99Silva%20on%20Unsplash.jpg','15'),(63,'Gastronomie','https://toulousecreative.s3.filebase.com/Gastronomie%20-%20Photo%20by%20Loren%20Gu%20on%20Unsplash.jpg','4'),(64,'Fablab','https://toulousecreative.s3.filebase.com/fablab%20-%20Photo%20by%20Alexandre%20Debie%CC%80ve%20on%20Unsplash.jpg','5'),(65,'Papier','https://toulousecreative.s3.filebase.com/Papier - Photo by Andrej Lisakov on Unsplash.jpg','6'),(66,'Végétal','https://toulousecreative.s3.filebase.com/Vegetal - Photo by Ceyda Ciftci on Unsplash.jpg','7'),(67,'Zero déchet','https://toulousecreative.s3.filebase.com/zero dechet - Photo by Laura Mitulla on Unsplash.jpg','8'),(71,'test','test',NULL);
/*!40000 ALTER TABLE `society_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(256) NOT NULL,
  `firstname` varchar(80) DEFAULT NULL,
  `lastname` varchar(80) DEFAULT NULL,
  `pseudo` varchar(1024) DEFAULT NULL,
  `like_Workshop` int DEFAULT NULL,
  `password` varchar(1024) NOT NULL,
  `avatar` varchar(1024) DEFAULT NULL,
  `createdAt` timestamp NOT NULL,
  `follow_society` int DEFAULT NULL,
  `adress_street` varchar(256) DEFAULT NULL,
  `adress_num` int DEFAULT NULL,
  `adress_suffix` varchar(45) DEFAULT NULL,
  `adress_code` int DEFAULT NULL,
  `adress_city` varchar(45) DEFAULT NULL,
  `adress_country` varchar(45) DEFAULT NULL,
  `address_coordinate_x` varchar(45) DEFAULT NULL,
  `address_coordinate_y` varchar(45) DEFAULT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`,`role_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_User_rank1_idx` (`role_id`),
  CONSTRAINT `fk_User_rank1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'v.degermain@gmail.com','Victor','DG','super admin',NULL,'$argon2id$v=19$m=4096,t=3,p=1$Uaj8Ex+5zwHCPn698WulFQ$EQCDNs6PCbEs1ZVtGVzfaZFqHqlq96I4KRpbzXg5gJY','https://avatars.githubusercontent.com/u/7326208?v=4','2022-07-31 22:00:00',NULL,'Rue Noire',1,NULL,44000,'Nantes','France','-1','47',1),(178,'vincent@briand.fr','Vincent','B','artisan',NULL,'$argon2id$v=19$m=4096,t=3,p=1$0cgSe1E8l/SK4YhJmAf6PQ$IjbQ5Ww1VNQS7UMCFM3+1LnJkWLHCNxUNHNccxonyvk','https://img.freepik.com/photos-gratuite/cordonnier-souriant-mature-atelier-tenant-chaussures_171337-12244.jpg?w=1380&t=st=1663326483~exp=1663327083~hmac=3affa8c1caf33bd2c03e07ab46168a740e2f59f8add8683310aff04f0dde419f','2022-09-12 09:17:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),(179,'artisan@dev.fr','John','Lartisan','artisan',NULL,'$argon2id$v=19$m=4096,t=3,p=1$Uaj8Ex+5zwHCPn698WulFQ$EQCDNs6PCbEs1ZVtGVzfaZFqHqlq96I4KRpbzXg5gJY','https://img.freepik.com/photos-gratuite/cordonnier-souriant-mature-atelier-tenant-chaussures_171337-12244.jpg?w=1380&t=st=1663326483~exp=1663327083~hmac=3affa8c1caf33bd2c03e07ab46168a740e2f59f8add8683310aff04f0dde419f(NULL)','2022-09-14 11:00:00',NULL,'du poulet',3,'rue',10000,'ChickenCity','France',NULL,NULL,3),(180,'admin@dev.fr','Harry','Ladmin','admin',NULL,'$argon2id$v=19$m=4096,t=3,p=1$0cgSe1E8l/SK4YhJmAf6PQ$IjbQ5Ww1VNQS7UMCFM3+1LnJkWLHCNxUNHNccxonyvk',NULL,'2022-09-14 11:00:00',NULL,'du poulet',1,'rue',10000,'ChickenCity','France',NULL,NULL,1),(181,'user@dev.fr','Maurice','Luser','user',NULL,'$argon2id$v=19$m=4096,t=3,p=1$0cgSe1E8l/SK4YhJmAf6PQ$IjbQ5Ww1VNQS7UMCFM3+1LnJkWLHCNxUNHNccxonyvk',NULL,'2022-09-14 11:00:00',NULL,'du poulet',2,'rue',10000,'ChickenCity','France',NULL,NULL,2),(182,'jerem@dev.fr','jérémy','M','admin',NULL,'$argon2id$v=19$m=4096,t=3,p=1$de4RbJxTLIheeCDy54pWew$oRHXwXBikx+oODW2TabMuNcwiGKJWNZ1uR9LZLfShD0','https://img.freepik.com/vecteurs-libre/intelligence-artificielle-ai-robot-salle-serveur-banniere-technologie-numerique-equipement-informatique_39422-768.jpg?w=1060&t=st=1663326526~exp=1663327126~hmac=e11d06632816e1a9fd292be2f9f1c2033e4c09982caca6a5fa1fc857ab49fa8d','2022-09-16 06:25:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_follow_society`
--

DROP TABLE IF EXISTS `user_follow_society`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_follow_society` (
  `User_id` int NOT NULL,
  `Society_id` int NOT NULL,
  PRIMARY KEY (`User_id`,`Society_id`),
  KEY `fk_User_has_Society1_Society1_idx` (`Society_id`),
  KEY `fk_User_has_Society1_User1_idx` (`User_id`),
  CONSTRAINT `fk_User_has_Society1_Society1` FOREIGN KEY (`Society_id`) REFERENCES `society` (`id`),
  CONSTRAINT `fk_User_has_Society1_User1` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_follow_society`
--

LOCK TABLES `user_follow_society` WRITE;
/*!40000 ALTER TABLE `user_follow_society` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_follow_society` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_society`
--

DROP TABLE IF EXISTS `user_has_society`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_society` (
  `User_id` int NOT NULL,
  `Society_id` int NOT NULL,
  PRIMARY KEY (`User_id`,`Society_id`),
  KEY `fk_User_has_Society_Society1_idx` (`Society_id`),
  KEY `fk_User_has_Society_User_idx` (`User_id`),
  CONSTRAINT `fk_User_has_Society_Society1` FOREIGN KEY (`Society_id`) REFERENCES `society` (`id`),
  CONSTRAINT `fk_User_has_Society_User` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_society`
--

LOCK TABLES `user_has_society` WRITE;
/*!40000 ALTER TABLE `user_has_society` DISABLE KEYS */;
INSERT INTO `user_has_society` VALUES (181,1);
/*!40000 ALTER TABLE `user_has_society` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_like_workshop`
--

DROP TABLE IF EXISTS `user_like_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_like_workshop` (
  `User_id` int NOT NULL,
  `workshop_id` int NOT NULL,
  PRIMARY KEY (`User_id`,`workshop_id`),
  KEY `fk_User_has_workshop_workshop1_idx` (`workshop_id`),
  KEY `fk_User_has_workshop_User1_idx` (`User_id`),
  CONSTRAINT `fk_User_has_workshop_User1` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_User_has_workshop_workshop1` FOREIGN KEY (`workshop_id`) REFERENCES `workshop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_like_workshop`
--

LOCK TABLES `user_like_workshop` WRITE;
/*!40000 ALTER TABLE `user_like_workshop` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_like_workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshop`
--

DROP TABLE IF EXISTS `workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workshop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `date_from` timestamp NOT NULL,
  `date_to` timestamp NULL DEFAULT NULL,
  `adress_street` varchar(256) NOT NULL,
  `adress_num` int DEFAULT NULL,
  `adress_code` int NOT NULL,
  `adress_city` varchar(45) NOT NULL,
  `adress_pays` varchar(45) DEFAULT NULL,
  `address_coordinate_x` varchar(45) DEFAULT NULL,
  `address_coordinate_y` varchar(45) DEFAULT NULL,
  `website` varchar(512) DEFAULT NULL,
  `account_insta` varchar(512) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `society_id` int NOT NULL,
  `price` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`society_id`),
  KEY `fk_workshop_society1_idx` (`society_id`),
  CONSTRAINT `fk_workshop_society1` FOREIGN KEY (`society_id`) REFERENCES `society` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop`
--

LOCK TABLES `workshop` WRITE;
/*!40000 ALTER TABLE `workshop` DISABLE KEYS */;
INSERT INTO `workshop` VALUES (20,'Cours de couture sur machines.','Apprenez à utiliser vos machines à coudre','2022-09-14 12:00:00','2022-09-14 14:00:00','Allée Jean Jaurès',46,31000,'Toulouse','france','43.60681241204197','1.4507049650835928','https://www.ady-toulouse.com/nos-cours-et-animations/','https://www.instagram.com/p/CiNX5dEoCnQ/','Ady@gmail.com',4,'5 euro'),(21,'Cours de couture sur machines.','Apprenez à utiliser vos machines à coudre','2022-09-15 12:00:00','2022-09-15 14:00:00','Allée Jean Jaurès',46,31000,'Toulouse','france','43.60681241204197','1.4507049650835928','https://www.ady-toulouse.com/nos-cours-et-animations/','https://www.instagram.com/p/CiNX5dEoCnQ/','Ady@gmail.com',4,'5 euro');
/*!40000 ALTER TABLE `workshop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 12:09:03
