-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: us-cdbr-iron-east-04.cleardb.net    Database: heroku_0fe8a18d3b21642
-- ------------------------------------------------------
-- Server version	5.5.56-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `discord_id` varchar(255) NOT NULL,
  `crepes` int(11) DEFAULT NULL,
  `last_bento_date` timestamp NULL DEFAULT NULL,
  `units` text,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (12,'Yon#7436',1327,'2020-06-04 16:23:53','{\"[Werewolf] Bete Loga\": {\"unit_type\": \"adventurer\", \"unit_id\": 1520, \"character_id\": 523, \"type_id\": 59, \"alias\": \"None\", \"unit_label\": \"Werewolf\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Bete Loga\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 7}, \"[God of the Masses] Ganesha\": {\"unit_type\": \"assist\", \"unit_id\": 943, \"character_id\": 592, \"alias\": \"None\", \"unit_label\": \"God of the Masses\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Ganesha\", \"is_collab\": 0, \"number\": 3}, \"[Fertility Staff] Syr Flover\": {\"unit_type\": \"assist\", \"unit_id\": 1030, \"character_id\": 598, \"alias\": \"None\", \"unit_label\": \"Fertility Staff\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Syr Flover\", \"is_collab\": 0, \"number\": 1}, \"[Harvest Goddess] Demeter\": {\"unit_type\": \"assist\", \"unit_id\": 917, \"character_id\": 585, \"alias\": \"None\", \"unit_label\": \"Harvest Goddess\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Demeter\", \"is_collab\": 0, \"number\": 2}, \"[Supporter] Liliruca Arde\": {\"unit_type\": \"adventurer\", \"unit_id\": 1599, \"character_id\": 519, \"type_id\": 67, \"alias\": \"None\", \"unit_label\": \"Supporter\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Liliruca Arde\", \"is_collab\": 0, \"type_name\": \"healer_type\", \"number\": 5}, \"[Full Throttle] Tiona Hiryute\": {\"unit_type\": \"adventurer\", \"unit_id\": 1664, \"character_id\": 569, \"type_id\": 59, \"alias\": \"None\", \"unit_label\": \"Full Throttle\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Tiona Hiryute\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 7}, \"[Sinister Cat] Chloe Lolo\": {\"unit_type\": \"assist\", \"unit_id\": 909, \"character_id\": 526, \"alias\": \"None\", \"unit_label\": \"Sinister Cat\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Chloe Lolo\", \"is_collab\": 0, \"number\": 2}, \"[Great Mage] Riveria Ljos Alf\": {\"unit_type\": \"adventurer\", \"unit_id\": 1629, \"character_id\": 536, \"type_id\": 67, \"alias\": \"None\", \"unit_label\": \"Great Mage\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Riveria Ljos Alf\", \"is_collab\": 0, \"type_name\": \"healer_type\", \"number\": 7}, \"[Blacksmith] Welf Crozzo\": {\"unit_type\": \"adventurer\", \"unit_id\": 1682, \"character_id\": 572, \"type_id\": 68, \"alias\": \"None\", \"unit_label\": \"Blacksmith\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Welf Crozzo\", \"is_collab\": 0, \"type_name\": \"defense_type\", \"number\": 5}, \"[Battle Princess] Ais Wallenstein\": {\"unit_type\": \"adventurer\", \"unit_id\": 1468, \"character_id\": 512, \"type_id\": 59, \"alias\": \"None\", \"unit_label\": \"Battle Princess\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Ais Wallenstein\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 3}, \"[Angel] Origami Tobiichi\": {\"unit_type\": \"adventurer\", \"unit_id\": 1615, \"character_id\": 558, \"type_id\": 65, \"alias\": \"dal\", \"unit_label\": \"Angel\", \"stars\": 4, \"is_limited\": 1, \"is_ascended\": 1, \"character_name\": \"Origami Tobiichi\", \"is_collab\": 0, \"type_name\": \"magic_type\", \"number\": 1}, \"[Crafty Goddess] Loki\": {\"unit_type\": \"assist\", \"unit_id\": 982, \"character_id\": 580, \"alias\": \"None\", \"unit_label\": \"Crafty Goddess\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Loki\", \"is_collab\": 0, \"number\": 6}, \"[Cat-Ears] Anya Fromel\": {\"unit_type\": \"assist\", \"unit_id\": 886, \"character_id\": 516, \"alias\": \"None\", \"unit_label\": \"Cat-Ears\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Anya Fromel\", \"is_collab\": 0, \"number\": 2}, \"[Elder Smith] Goibniu\": {\"unit_type\": \"assist\", \"unit_id\": 953, \"character_id\": 596, \"alias\": \"None\", \"unit_label\": \"Elder Smith\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Goibniu\", \"is_collab\": 0, \"number\": 2}, \"[Sharp Thinker] Armin Arlert\": {\"unit_type\": \"assist\", \"unit_id\": 1019, \"character_id\": 608, \"alias\": \"aot\", \"unit_label\": \"Sharp Thinker\", \"stars\": 4, \"is_limited\": 1, \"character_name\": \"Armin Arlert\", \"is_collab\": 0, \"number\": 1}, \"[Thousand Blades] Hitachi Chigusa\": {\"unit_type\": \"adventurer\", \"unit_id\": 1561, \"character_id\": 539, \"type_id\": 67, \"alias\": \"None\", \"unit_label\": \"Thousand Blades\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Hitachi Chigusa\", \"is_collab\": 0, \"type_name\": \"healer_type\", \"number\": 5}, \"[Gale in Yukata] Ryu Lion\": {\"unit_type\": \"adventurer\", \"unit_id\": 1636, \"character_id\": 549, \"type_id\": 65, \"alias\": \"free\", \"unit_label\": \"Gale in Yukata\", \"stars\": 3, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Ryu Lion\", \"is_collab\": 0, \"type_name\": \"magic_type\", \"number\": 2}, \"[Alchemist] Asfi Al Andromeda\": {\"unit_type\": \"adventurer\", \"unit_id\": 1496, \"character_id\": 520, \"type_id\": 62, \"alias\": \"None\", \"unit_label\": \"Alchemist\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Asfi Al Andromeda\", \"is_collab\": 0, \"type_name\": \"balance_type\", \"number\": 7}, \"[Vigorous Medi-God] Dianceht\": {\"unit_type\": \"assist\", \"unit_id\": 1040, \"character_id\": 612, \"alias\": \"free\", \"unit_label\": \"Vigorous Medi-God\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Dianceht\", \"is_collab\": 0, \"number\": 3}, \"[Liaris Freese] Bell Cranel\": {\"unit_type\": \"adventurer\", \"unit_id\": 1509, \"character_id\": 521, \"type_id\": 59, \"alias\": \"None\", \"unit_label\": \"Liaris Freese\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Bell Cranel\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 1}, \"[Captain] Finn Deimne\": {\"unit_type\": \"adventurer\", \"unit_id\": 1546, \"character_id\": 537, \"type_id\": 62, \"alias\": \"None\", \"unit_label\": \"Captain\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Finn Deimne\", \"is_collab\": 0, \"type_name\": \"balance_type\", \"number\": 5}, \"[War God\'s Child] Kashima Ouka\": {\"unit_type\": \"adventurer\", \"unit_id\": 1565, \"character_id\": 532, \"type_id\": 68, \"alias\": \"None\", \"unit_label\": \"War God\'s Child\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Kashima Ouka\", \"is_collab\": 0, \"type_name\": \"defense_type\", \"number\": 6}, \"[Dueling Caster] Alicia Forestlight\": {\"unit_type\": \"adventurer\", \"unit_id\": 1765, \"character_id\": 664, \"type_id\": 62, \"alias\": \"sword_oratoria\", \"unit_label\": \"Dueling Caster\", \"stars\": 4, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Alicia Forestlight\", \"is_collab\": 0, \"type_name\": \"balance_type\", \"number\": 1}, \"[Red Quipster] Loki\": {\"unit_type\": \"assist\", \"unit_id\": 983, \"character_id\": 580, \"alias\": \"None\", \"unit_label\": \"Red Quipster\", \"stars\": 3, \"is_limited\": 0, \"character_name\": \"Loki\", \"is_collab\": 0, \"number\": 1}, \"[Intrigued Goddess] Freya\": {\"unit_type\": \"assist\", \"unit_id\": 940, \"character_id\": 581, \"alias\": \"None\", \"unit_label\": \"Intrigued Goddess\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Freya\", \"is_collab\": 0, \"number\": 3}, \"[Goddess of Purity] Hestia\": {\"unit_type\": \"assist\", \"unit_id\": 968, \"character_id\": 576, \"alias\": \"None\", \"unit_label\": \"Goddess of Purity\", \"stars\": 3, \"is_limited\": 0, \"character_name\": \"Hestia\", \"is_collab\": 0, \"number\": 1}, \"[Legendary Artisan] Hephaistios\": {\"unit_type\": \"assist\", \"unit_id\": 958, \"character_id\": 577, \"alias\": \"None\", \"unit_label\": \"Legendary Artisan\", \"stars\": 3, \"is_limited\": 0, \"character_name\": \"Hephaistios\", \"is_collab\": 0, \"number\": 1}, \"[Pharmacist] Miach\": {\"unit_type\": \"assist\", \"unit_id\": 990, \"character_id\": 602, \"alias\": \"None\", \"unit_label\": \"Pharmacist\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Miach\", \"is_collab\": 0, \"number\": 3}, \"[New Armed] Ais Wallenstein\": {\"unit_type\": \"adventurer\", \"unit_id\": 1769, \"character_id\": 512, \"type_id\": 59, \"alias\": \"sword_oratoria\", \"unit_label\": \"New Armed\", \"stars\": 4, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Ais Wallenstein\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 1}, \"[Filmic Goddess] Hestia\": {\"unit_type\": \"assist\", \"unit_id\": 937, \"character_id\": 576, \"alias\": \"kino\", \"unit_label\": \"Filmic Goddess\", \"stars\": 4, \"is_limited\": 1, \"character_name\": \"Hestia\", \"is_collab\": 0, \"number\": 1}, \"[Fertilty\'s Mom] Mia Grand\": {\"unit_type\": \"assist\", \"unit_id\": 991, \"character_id\": 603, \"alias\": \"None\", \"unit_label\": \"Fertilty\'s Mom\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Mia Grand\", \"is_collab\": 0, \"number\": 4}, \"[Guild Worker] Misha Flot\": {\"unit_type\": \"assist\", \"unit_id\": 995, \"character_id\": 604, \"alias\": \"None\", \"unit_label\": \"Guild Worker\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Misha Flot\", \"is_collab\": 0, \"number\": 1}, \"[Cheers!] Loki\": {\"unit_type\": \"assist\", \"unit_id\": 981, \"character_id\": 580, \"alias\": \"None\", \"unit_label\": \"Cheers!\", \"stars\": 3, \"is_limited\": 0, \"character_name\": \"Loki\", \"is_collab\": 0, \"number\": 1}, \"[Battle God] Takemikazuchi\": {\"unit_type\": \"assist\", \"unit_id\": 1032, \"character_id\": 609, \"alias\": \"None\", \"unit_label\": \"Battle God\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Takemikazuchi\", \"is_collab\": 0, \"number\": 2}, \"[Explosive Girl] Ti\": {\"unit_type\": \"assist\", \"unit_id\": 935, \"character_id\": 591, \"alias\": \"kino\", \"unit_label\": \"Explosive Girl\", \"stars\": 4, \"is_limited\": 1, \"character_name\": \"Ti\", \"is_collab\": 0, \"number\": 1}, \"[Receptionist] Eina Tulle\": {\"unit_type\": \"assist\", \"unit_id\": 929, \"character_id\": 588, \"alias\": \"None\", \"unit_label\": \"Receptionist\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Eina Tulle\", \"is_collab\": 0, \"number\": 2}, \"[Snow White] Yamato Mikoto\": {\"unit_type\": \"adventurer\", \"unit_id\": 1692, \"character_id\": 545, \"type_id\": 62, \"alias\": \"free_halloween\", \"unit_label\": \"Snow White\", \"stars\": 3, \"is_limited\": 1, \"is_ascended\": 0, \"character_name\": \"Yamato Mikoto\", \"is_collab\": 0, \"type_name\": \"balance_type\", \"number\": 1}, \"[Fearless Smile] Hermes\": {\"unit_type\": \"assist\", \"unit_id\": 960, \"character_id\": 579, \"alias\": \"None\", \"unit_label\": \"Fearless Smile\", \"stars\": 3, \"is_limited\": 0, \"character_name\": \"Hermes\", \"is_collab\": 0, \"number\": 1}, \"[Dungeon Addict] Bell Cranel\": {\"unit_type\": \"adventurer\", \"unit_id\": 1514, \"character_id\": 521, \"type_id\": 59, \"alias\": \"None\", \"unit_label\": \"Dungeon Addict\", \"stars\": 3, \"is_limited\": 1, \"is_ascended\": 0, \"character_name\": \"Bell Cranel\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 2}, \"[Dark Class Act] Lefiya Viridis\": {\"unit_type\": \"adventurer\", \"unit_id\": 1573, \"character_id\": 517, \"type_id\": 65, \"alias\": \"april_fools\", \"unit_label\": \"Dark Class Act\", \"stars\": 3, \"is_limited\": 1, \"is_ascended\": 0, \"character_name\": \"Lefiya Viridis\", \"is_collab\": 0, \"type_name\": \"magic_type\", \"number\": 1}, \"[Swimsuit Contest] Hestia\": {\"unit_type\": \"assist\", \"unit_id\": 1026, \"character_id\": 576, \"alias\": \"ova\", \"unit_label\": \"Swimsuit Contest\", \"stars\": 4, \"is_limited\": 0, \"character_name\": \"Hestia\", \"is_collab\": 0, \"number\": 1}, \"[Sweet Devil] Liliruca Arde\": {\"unit_type\": \"adventurer\", \"unit_id\": 1600, \"character_id\": 519, \"type_id\": 65, \"alias\": \"halloween\", \"unit_label\": \"Sweet Devil\", \"stars\": 4, \"is_limited\": 1, \"is_ascended\": 0, \"character_name\": \"Liliruca Arde\", \"is_collab\": 0, \"type_name\": \"magic_type\", \"number\": 1}, \"[Gorgeous Princess] Ais Wallenstein\": {\"unit_type\": \"adventurer\", \"unit_id\": 1474, \"character_id\": 512, \"type_id\": 62, \"alias\": \"None\", \"unit_label\": \"Gorgeous Princess\", \"stars\": 4, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Ais Wallenstein\", \"is_collab\": 0, \"type_name\": \"balance_type\", \"number\": 2}, \"[High Novice] Raul Nord\": {\"unit_type\": \"adventurer\", \"unit_id\": 1623, \"character_id\": 561, \"type_id\": 62, \"alias\": \"sword_oratoria\", \"unit_label\": \"High Novice\", \"stars\": 3, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Raul Nord\", \"is_collab\": 0, \"type_name\": \"balance_type\", \"number\": 2}, \"[Berserker] Tiona Hiryute\": {\"unit_type\": \"adventurer\", \"unit_id\": 1661, \"character_id\": 569, \"type_id\": 59, \"alias\": \"None\", \"unit_label\": \"Berserker\", \"stars\": 3, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Tiona Hiryute\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 1}, \"[Brave Spearman] Finn Deimne\": {\"unit_type\": \"adventurer\", \"unit_id\": 1762, \"character_id\": 537, \"type_id\": 59, \"alias\": \"None\", \"unit_label\": \"Brave Spearman\", \"stars\": 4, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Finn Deimne\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 1}, \"[Guild Inspector] Eina Tulle\": {\"unit_type\": \"assist\", \"unit_id\": 928, \"character_id\": 588, \"alias\": \"None\", \"unit_label\": \"Guild Inspector\", \"stars\": 3, \"is_limited\": 0, \"character_name\": \"Eina Tulle\", \"is_collab\": 0, \"number\": 2}, \"[Sneaky Cat] Anya Fromel\": {\"unit_type\": \"adventurer\", \"unit_id\": 1757, \"character_id\": 516, \"type_id\": 59, \"alias\": \"new_year\", \"unit_label\": \"Sneaky Cat\", \"stars\": 4, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Anya Fromel\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 1}, \"[Classy God] Dionysus\": {\"unit_type\": \"assist\", \"unit_id\": 920, \"character_id\": 587, \"alias\": \"None\", \"unit_label\": \"Classy God\", \"stars\": 3, \"is_limited\": 0, \"character_name\": \"Dionysus\", \"is_collab\": 0, \"number\": 2}, \"[Torrential] Gareth Landrock \": {\"unit_type\": \"adventurer\", \"unit_id\": 1555, \"character_id\": 540, \"type_id\": 68, \"alias\": \"None\", \"unit_label\": \"Torrential\", \"stars\": 3, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Gareth Landrock \", \"is_collab\": 0, \"type_name\": \"defense_type\", \"number\": 2}, \"[Foreign Traveler] Kino & Hermes\": {\"unit_type\": \"adventurer\", \"unit_id\": 1567, \"character_id\": 543, \"type_id\": 59, \"alias\": \"kino\", \"unit_label\": \"Foreign Traveler\", \"stars\": 4, \"is_limited\": 1, \"is_ascended\": 1, \"character_name\": \"Kino & Hermes\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 1}, \"[Pajama Goddess] Hestia\": {\"unit_type\": \"assist\", \"unit_id\": 1006, \"character_id\": 576, \"alias\": \"orion\", \"unit_label\": \"Pajama Goddess\", \"stars\": 4, \"is_limited\": 0, \"character_name\": \"Hestia\", \"is_collab\": 0, \"number\": 1}, \"[Elgarm] Gareth Landrock \": {\"unit_type\": \"adventurer\", \"unit_id\": 1553, \"character_id\": 540, \"type_id\": 68, \"alias\": \"None\", \"unit_label\": \"Elgarm\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Gareth Landrock \", \"is_collab\": 0, \"type_name\": \"defense_type\", \"number\": 2}, \"[Fist Fighter] Shakti Varma\": {\"unit_type\": \"adventurer\", \"unit_id\": 1646, \"character_id\": 563, \"type_id\": 59, \"alias\": \"free\", \"unit_label\": \"Fist Fighter\", \"stars\": 3, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Shakti Varma\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 1}, \"[Outlaw Rabbit] Bell Cranel\": {\"unit_type\": \"adventurer\", \"unit_id\": 1619, \"character_id\": 521, \"type_id\": 65, \"alias\": \"None\", \"unit_label\": \"Outlaw Rabbit\", \"stars\": 4, \"is_limited\": 0, \"is_ascended\": 1, \"character_name\": \"Bell Cranel\", \"is_collab\": 0, \"type_name\": \"magic_type\", \"number\": 1}, \"[The Night Queen] Ishtar\": {\"unit_type\": \"assist\", \"unit_id\": 1034, \"character_id\": 610, \"alias\": \"None\", \"unit_label\": \"The Night Queen\", \"stars\": 4, \"is_limited\": 0, \"character_name\": \"Ishtar\", \"is_collab\": 0, \"number\": 1}, \"[Prowling for Lust] Freya\": {\"unit_type\": \"assist\", \"unit_id\": 941, \"character_id\": 581, \"alias\": \"None\", \"unit_label\": \"Prowling for Lust\", \"stars\": 3, \"is_limited\": 0, \"character_name\": \"Freya\", \"is_collab\": 0, \"number\": 1}, \"[Goddess of Hearth] Hestia\": {\"unit_type\": \"assist\", \"unit_id\": 967, \"character_id\": 576, \"alias\": \"None\", \"unit_label\": \"Goddess of Hearth\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Hestia\", \"is_collab\": 0, \"number\": 1}, \"[The One-Eyed] Hephaistios\": {\"unit_type\": \"assist\", \"unit_id\": 959, \"character_id\": 577, \"alias\": \"None\", \"unit_label\": \"The One-Eyed\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Hephaistios\", \"is_collab\": 0, \"number\": 1}, \"[Gift Goddess] Hestia\": {\"unit_type\": \"assist\", \"unit_id\": 947, \"character_id\": 576, \"alias\": \"christmas_free\", \"unit_label\": \"Gift Goddess\", \"stars\": 4, \"is_limited\": 1, \"character_name\": \"Hestia\", \"is_collab\": 0, \"number\": 1}, \"[Pine Heart] Tione Hiryute\": {\"unit_type\": \"adventurer\", \"unit_id\": 1672, \"character_id\": 562, \"type_id\": 59, \"alias\": \"None\", \"unit_label\": \"Pine Heart\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Tione Hiryute\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 1}, \"[Mummy Goddess] Hestia\": {\"unit_type\": \"assist\", \"unit_id\": 998, \"character_id\": 576, \"alias\": \"halloween\", \"unit_label\": \"Mummy Goddess\", \"stars\": 4, \"is_limited\": 1, \"character_name\": \"Hestia\", \"is_collab\": 0, \"number\": 1}, \"[Evanescent] Hitachi Chigusa\": {\"unit_type\": \"adventurer\", \"unit_id\": 1557, \"character_id\": 539, \"type_id\": 67, \"alias\": \"free\", \"unit_label\": \"Evanescent\", \"stars\": 3, \"is_limited\": 1, \"is_ascended\": 0, \"character_name\": \"Hitachi Chigusa\", \"is_collab\": 0, \"type_name\": \"healer_type\", \"number\": 1}, \"[Maenads] Filvis Challia\": {\"unit_type\": \"adventurer\", \"unit_id\": 1542, \"character_id\": 530, \"type_id\": 65, \"alias\": \"free\", \"unit_label\": \"Maenads\", \"stars\": 3, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Filvis Challia\", \"is_collab\": 0, \"type_name\": \"magic_type\", \"number\": 1}, \"[God of Medicine] Miach\": {\"unit_type\": \"assist\", \"unit_id\": 989, \"character_id\": 602, \"alias\": \"None\", \"unit_label\": \"God of Medicine\", \"stars\": 3, \"is_limited\": 0, \"character_name\": \"Miach\", \"is_collab\": 0, \"number\": 1}, \"[Elven Childhood] Lefiya (Girl)\": {\"unit_type\": \"assist\", \"unit_id\": 934, \"character_id\": 590, \"alias\": \"loli\", \"unit_label\": \"Elven Childhood\", \"stars\": 4, \"is_limited\": 1, \"character_name\": \"Lefiya (Girl)\", \"is_collab\": 0, \"number\": 1}}'),(22,'Eric#5731',1,'2020-05-18 20:27:40','{\"[Pine Heart] Tione Hiryute\": {\"unit_type\": \"adventurer\", \"unit_id\": 1672, \"character_id\": 562, \"type_id\": 59, \"alias\": \"None\", \"unit_label\": \"Pine Heart\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Tione Hiryute\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 1}, \"[Great Mage] Riveria Ljos Alf\": {\"unit_type\": \"adventurer\", \"unit_id\": 1629, \"character_id\": 536, \"type_id\": 67, \"alias\": \"None\", \"unit_label\": \"Great Mage\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Riveria Ljos Alf\", \"is_collab\": 0, \"type_name\": \"healer_type\", \"number\": 2}, \"[Intrigued Goddess] Freya\": {\"unit_type\": \"assist\", \"unit_id\": 940, \"character_id\": 581, \"alias\": \"None\", \"unit_label\": \"Intrigued Goddess\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Freya\", \"is_collab\": 0, \"number\": 1}, \"[Blacksmith] Welf Crozzo\": {\"unit_type\": \"adventurer\", \"unit_id\": 1682, \"character_id\": 572, \"type_id\": 68, \"alias\": \"None\", \"unit_label\": \"Blacksmith\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Welf Crozzo\", \"is_collab\": 0, \"type_name\": \"defense_type\", \"number\": 2}, \"[God of Traveler] Hermes\": {\"unit_type\": \"assist\", \"unit_id\": 961, \"character_id\": 579, \"alias\": \"None\", \"unit_label\": \"God of Traveler\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Hermes\", \"is_collab\": 0, \"number\": 2}, \"[Liaris Freese] Bell Cranel\": {\"unit_type\": \"adventurer\", \"unit_id\": 1509, \"character_id\": 521, \"type_id\": 59, \"alias\": \"None\", \"unit_label\": \"Liaris Freese\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Bell Cranel\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 2}, \"[Gallant Fighter] Chloe Lolo\": {\"unit_type\": \"adventurer\", \"unit_id\": 1526, \"character_id\": 526, \"type_id\": 65, \"alias\": \"detective\", \"unit_label\": \"Gallant Fighter\", \"stars\": 4, \"is_limited\": 0, \"is_ascended\": 1, \"character_name\": \"Chloe Lolo\", \"is_collab\": 0, \"type_name\": \"magic_type\", \"number\": 1}}'),(32,'Illusion#2467',1,'2020-05-27 16:42:37','{\"[Great Mage] Riveria Ljos Alf\": {\"unit_type\": \"adventurer\", \"unit_id\": 1629, \"character_id\": 536, \"type_id\": 67, \"alias\": \"None\", \"unit_label\": \"Great Mage\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Riveria Ljos Alf\", \"is_collab\": 0, \"type_name\": \"healer_type\", \"number\": 3}, \"[Alchemist] Asfi Al Andromeda\": {\"unit_type\": \"adventurer\", \"unit_id\": 1496, \"character_id\": 520, \"type_id\": 62, \"alias\": \"None\", \"unit_label\": \"Alchemist\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Asfi Al Andromeda\", \"is_collab\": 0, \"type_name\": \"balance_type\", \"number\": 1}, \"[Ulfheoinn] Bete Loga\": {\"unit_type\": \"adventurer\", \"unit_id\": 1519, \"character_id\": 523, \"type_id\": 59, \"alias\": \"None\", \"unit_label\": \"Ulfheoinn\", \"stars\": 3, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Bete Loga\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 1}, \"[Sinister Cat] Chloe Lolo\": {\"unit_type\": \"assist\", \"unit_id\": 909, \"character_id\": 526, \"alias\": \"None\", \"unit_label\": \"Sinister Cat\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Chloe Lolo\", \"is_collab\": 0, \"number\": 1}, \"[Battle God] Takemikazuchi\": {\"unit_type\": \"assist\", \"unit_id\": 1032, \"character_id\": 609, \"alias\": \"None\", \"unit_label\": \"Battle God\", \"stars\": 2, \"is_limited\": 0, \"character_name\": \"Takemikazuchi\", \"is_collab\": 0, \"number\": 1}, \"[Burning Forge] Hephaistios\": {\"unit_type\": \"assist\", \"unit_id\": 957, \"character_id\": 577, \"alias\": \"None\", \"unit_label\": \"Burning Forge\", \"stars\": 3, \"is_limited\": 0, \"character_name\": \"Hephaistios\", \"is_collab\": 0, \"number\": 1}, \"[Mother Seedling] Demeter\": {\"unit_type\": \"assist\", \"unit_id\": 918, \"character_id\": 585, \"alias\": \"None\", \"unit_label\": \"Mother Seedling\", \"stars\": 3, \"is_limited\": 0, \"character_name\": \"Demeter\", \"is_collab\": 0, \"number\": 1}, \"[War God\'s Child] Kashima Ouka\": {\"unit_type\": \"adventurer\", \"unit_id\": 1565, \"character_id\": 532, \"type_id\": 68, \"alias\": \"None\", \"unit_label\": \"War God\'s Child\", \"stars\": 2, \"is_limited\": 0, \"is_ascended\": 0, \"character_name\": \"Kashima Ouka\", \"is_collab\": 0, \"type_name\": \"defense_type\", \"number\": 1}, \"[Moonlight Oath] Bell Cranel\": {\"unit_type\": \"adventurer\", \"unit_id\": 1510, \"character_id\": 521, \"type_id\": 59, \"alias\": \"orion\", \"unit_label\": \"Moonlight Oath\", \"stars\": 4, \"is_limited\": 0, \"is_ascended\": 1, \"character_name\": \"Bell Cranel\", \"is_collab\": 0, \"type_name\": \"physical_type\", \"number\": 1}}'),(42,'Ruemoda#3724',1,'2020-05-25 23:50:13','null'),(52,'『AmazingAegis』#5302',1,'2020-05-27 15:22:13','null'),(62,'simhauu#6567',1,'2020-06-06 12:46:14','null');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-08 15:40:14