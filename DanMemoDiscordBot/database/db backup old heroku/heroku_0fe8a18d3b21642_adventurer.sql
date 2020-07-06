-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: heroku_0fe8a18d3b21642
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `adventurer`
--

DROP TABLE IF EXISTS `adventurer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adventurer` (
  `adventurerid` int NOT NULL AUTO_INCREMENT,
  `characterid` int NOT NULL,
  `typeid` int NOT NULL,
  `limited` tinyint NOT NULL,
  `ascended` tinyint NOT NULL,
  `stars` int NOT NULL,
  `alias` varchar(200) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`adventurerid`),
  KEY `characterid_idx` (`characterid`),
  KEY `typeid_idx` (`typeid`),
  CONSTRAINT `characterid` FOREIGN KEY (`characterid`) REFERENCES `character` (`characterid`) ON DELETE CASCADE,
  CONSTRAINT `typeid` FOREIGN KEY (`typeid`) REFERENCES `type` (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=1774 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adventurer`
--

LOCK TABLES `adventurer` WRITE;
/*!40000 ALTER TABLE `adventurer` DISABLE KEYS */;
INSERT INTO `adventurer` VALUES (1465,511,62,1,1,4,'goblinslayer','Affectionate Maiden'),(1466,512,59,1,0,4,'april_fools','Angelic Leader'),(1467,512,62,0,0,4,'onsen','Bathroom Princess'),(1468,512,59,0,0,2,'None','Battle Princess'),(1469,512,59,0,0,4,'casino','Bunny Princess'),(1470,512,59,1,0,3,'april_fools','Cold Princess'),(1471,512,65,0,1,4,'new_year','Crimson Tempest'),(1472,512,59,1,0,4,'dal','Devil Princess'),(1473,512,59,0,0,4,'casino','Glitter Princess'),(1474,512,62,0,0,4,'None','Gorgeous Princess'),(1475,512,59,0,1,4,'og','Heroic Liaris'),(1476,512,59,0,1,4,'anniversary','Honor Princess'),(1477,513,59,1,0,4,'loli','Little Princess'),(1478,512,59,1,1,4,'aot','Regiment Princess'),(1479,512,65,1,0,4,'christmas','Santa Princess'),(1480,512,59,0,1,4,'sword_oratoria','Sparkle Princess'),(1481,512,62,1,0,4,'swimsuit','Splash Princess'),(1482,512,59,1,1,4,'halloween','Starving Mind'),(1483,512,59,1,1,4,'swimsuit','Summer Princess'),(1484,512,65,1,0,4,'valentine','Sweet Princess'),(1485,512,59,0,0,3,'None','Sword Princess'),(1486,514,62,1,1,4,'swimsuit','Beach Saint'),(1487,514,67,0,0,4,'og','Dea Saint'),(1488,515,62,0,1,4,'og','White Flash'),(1489,516,62,0,0,4,'detective','Brave Fighter'),(1490,516,59,0,0,4,'detective_og','Feline Lancer'),(1491,516,65,1,1,4,'christmas','Holiday Cat'),(1494,518,62,0,1,4,'orion','Virgin Goddess'),(1495,519,65,1,1,4,'halloween','Aschenputtel'),(1496,520,62,0,0,2,'None','Alchemist'),(1497,520,62,0,0,4,'None','Almighty Fighter'),(1498,520,62,0,0,3,'None','Combat Commander'),(1499,520,59,0,0,4,'onsen','Onsen Princess'),(1500,520,62,0,0,4,'og','Sailor Princess'),(1501,520,62,0,1,4,'None','Thunderous Perseus'),(1502,512,62,0,1,4,'casino_swimsuit','Beauty'),(1503,521,59,0,0,1,'None','Adventurer'),(1504,521,59,0,1,4,'og','Argonaut'),(1505,521,65,1,1,4,'None','Aspiring Elegance'),(1506,521,59,1,0,4,'new_year','A Fresh Start'),(1507,521,65,1,0,4,'None','Breezy Freese'),(1508,521,59,0,1,4,'anniversary','Honor Succession'),(1509,521,59,0,0,2,'None','Liaris Freese'),(1510,521,59,0,1,4,'orion','Moonlight Oath'),(1511,521,65,1,1,4,'None','ODM Fight'),(1512,521,59,0,0,3,'None','Ox Slayer'),(1513,521,65,1,0,4,'halloween','The White Rabbit'),(1514,521,59,1,0,3,'None','Dungeon Addict'),(1515,521,62,1,0,4,'april_fools','The Edgiest Teen'),(1516,522,59,1,0,4,'loli','Little Wolf'),(1517,523,59,1,1,4,'halloween','Moonlit Wolf'),(1518,523,59,0,1,4,'None','Silver Moonshadow'),(1519,523,59,0,0,3,'None','Ulfheoinn'),(1520,523,59,0,0,2,'None','Werewolf'),(1522,525,59,1,1,4,'christmas','Brave Antianeira'),(1523,526,59,0,1,4,'casino_swimsuit','Catty'),(1525,526,62,0,0,4,'og','Black Cat'),(1526,526,65,0,1,4,'detective','Gallant Fighter'),(1527,526,62,1,1,4,'free','Holly Wreath'),(1528,527,59,1,1,4,'anniversary_free','Clown'),(1529,528,59,0,1,4,'og','Crushing Fighter'),(1530,529,62,0,1,4,'og','Cynic'),(1531,512,59,0,1,4,'idol','Dancing Princess'),(1532,530,65,1,1,4,'halloween','Darkness Overload'),(1533,530,65,0,1,4,'idol','Dazzling Elf'),(1534,531,59,1,1,4,'anniversary','Deathly Dance'),(1535,532,59,1,1,4,'goblinslayer','Demonslayer Samurai'),(1536,533,65,1,1,4,'anniversary','Elven Mage'),(1537,534,59,1,1,4,'aot','Wings of Freedom'),(1538,535,67,0,1,4,'None','The Shadow'),(1539,536,65,0,1,4,'new_year','Festive Royale'),(1540,530,62,0,1,4,'None','Blessed Elf'),(1541,530,65,0,0,4,'None','Cute Elf'),(1542,530,65,0,0,3,'free','Maenads'),(1543,530,65,0,0,4,'og','Maenad\'s Maiden'),(1544,537,62,0,0,3,'None','Braver'),(1545,537,59,0,0,4,'None','Brave Swordsman'),(1546,537,62,0,0,2,'None','Captain'),(1547,537,59,0,0,4,'None','Classy Gentleman'),(1548,537,62,0,1,4,'og','Masked Braver'),(1549,537,62,1,1,4,'free','Oriental Attire'),(1550,529,65,1,1,4,'free_new_year','First Dream'),(1551,538,62,0,1,4,'og','Foxy Princess'),(1552,539,59,1,1,4,'None','Frosty Blooms'),(1553,540,68,0,0,2,'None','Elgarm'),(1554,540,68,1,0,4,'new_year','Sunrise Axe'),(1555,540,68,0,0,3,'None','Torrential'),(1556,541,62,1,1,4,'kino','Two-Wheel Racer'),(1557,539,67,1,0,3,'free','Evanescent'),(1558,539,62,0,0,4,'None','Fushi-Kaden'),(1559,539,62,0,0,4,'onsen','Secret Onsen'),(1560,539,67,1,0,4,'new_year','Sparkling Crystal'),(1561,539,67,0,0,2,'None','Thousand Blades'),(1562,542,59,1,1,4,'christmas','Invincible Master'),(1563,512,59,0,1,4,'None','Jade Princess'),(1564,532,68,0,0,3,'None','Solid Resolutions'),(1565,532,68,0,0,2,'None','War God\'s Child'),(1566,532,68,0,0,4,'og','Will of Iron'),(1567,543,59,1,1,4,'kino','Foreign Traveler'),(1568,544,59,0,0,3,'kino','Traveler'),(1569,545,65,0,1,4,'casino_swimsuit','Kunoichi'),(1570,546,62,1,1,4,'dal','Nightmare'),(1571,547,62,0,1,4,'new_year','Laurel Mistral'),(1572,517,65,0,0,4,'None','Bashful Elf'),(1573,517,65,1,0,3,'april_fools','Dark Class Act'),(1574,517,62,1,1,4,'free','Elegant Elf'),(1575,517,65,0,0,4,'anniversary','Elf\'s Honor'),(1576,517,65,0,1,4,'sword_oratoria','Elven Awakening'),(1577,517,65,0,1,4,'None','Geisha Elf'),(1578,517,65,0,1,4,'og','Incantation'),(1579,517,65,0,0,3,'None','Lots of Love'),(1580,517,65,1,0,4,'april_fools','Love Magic'),(1581,517,65,1,1,4,'swimsuit','Offshore Elf'),(1582,517,65,0,0,3,'None','Thousand Elf'),(1583,517,65,1,1,4,'halloween','Wicked Elf'),(1584,517,62,1,0,4,'christmas','Winter Elf'),(1585,548,59,1,0,4,'aot','Strongest Soldier'),(1586,549,59,0,1,4,'wargame','Lightning Flame'),(1587,550,59,1,1,4,'goblinslayer','Lightning Flash'),(1588,519,67,0,0,3,'None','Artel Assist'),(1589,519,65,1,0,3,'christmas_free','Artel Tart'),(1590,519,67,0,1,4,'og','Disguised Pallum'),(1591,519,59,0,1,4,'orion','Echoing Arrow'),(1592,519,65,0,0,4,'onsen','Enjoy Onsen'),(1593,519,67,1,0,3,'april_fools','Honestly Wicked'),(1594,519,65,0,1,4,'bride','Longing Bride'),(1595,519,65,0,0,4,'None','Lovely Travel'),(1596,519,62,1,0,4,'april_fools','Metal Robot'),(1597,519,67,1,0,4,'None','Pallum Passion'),(1598,519,65,1,1,4,'swimsuit','Summer Fun'),(1599,519,67,0,0,2,'None','Supporter'),(1600,519,65,1,0,4,'halloween','Sweet Devil'),(1601,519,67,1,0,4,'swimsuit','Temptations'),(1602,519,62,1,0,4,'christmas','Winter Cream'),(1603,551,62,0,1,4,'None','Faithful Mage'),(1604,552,65,0,0,4,'loli','Little Freese'),(1605,553,65,0,0,4,'loli','Little Girl'),(1606,523,59,0,1,4,'new_year','Lone Werewolf'),(1607,554,59,0,1,4,'og','Black Fist'),(1609,525,59,0,1,4,'og','Magnificent Ruler'),(1610,517,65,0,0,4,'idol','Melodious Elf'),(1611,555,59,1,1,4,'aot','First in Class'),(1612,517,65,1,1,4,'halloween','Model Student'),(1613,556,59,0,0,3,'None','Dogfight'),(1614,557,62,0,0,4,'None','Medicinal Archer'),(1615,558,65,1,1,4,'dal','Angel'),(1616,559,59,0,0,4,'og','King'),(1617,559,59,0,1,4,'orion','Mighty King'),(1618,559,59,0,0,4,'None','Superior Reign'),(1619,521,65,0,1,4,'None','Outlaw Rabbit'),(1620,556,59,1,1,4,'free','Outlaw Style'),(1621,560,67,1,1,4,'kino','Photographer'),(1622,545,59,0,1,4,'wargame','Power of Change'),(1623,561,62,0,0,3,'sword_oratoria','High Novice'),(1624,561,62,1,1,4,'halloween','Night Buster'),(1625,521,59,0,1,4,'tuxedo','Regalia Freese'),(1626,536,65,0,1,4,'casino_swimsuit','Regina'),(1627,536,65,0,0,4,'None','Crimson Dazzle'),(1628,536,65,0,1,4,'None','Dressed Royal'),(1629,536,67,0,0,2,'None','Great Mage'),(1630,536,62,0,0,4,'None','Holy White Royal'),(1631,536,67,0,0,3,'None','Nine Hell'),(1632,536,67,0,1,4,'og','Royal Elf'),(1633,549,59,1,0,3,'free_swimsuit','Beach Winds'),(1634,549,62,0,1,4,'og','Gale'),(1635,549,62,0,1,4,'None','Gale Disguised'),(1636,549,65,0,0,3,'free','Gale in Yukata'),(1637,549,65,1,0,4,'christmas','Glistening Elf'),(1638,549,65,1,0,4,'christmas','Holy Gale'),(1639,549,59,0,1,4,'None','Knight Elf'),(1640,549,59,1,1,4,'valentine','Pretty Lady'),(1641,549,62,0,1,4,'orion','Roaring Gale'),(1642,549,68,1,0,4,'halloween','Vampiric Fairy'),(1643,549,65,1,1,4,'christmas','Scarlet Elf'),(1644,562,65,1,1,4,'free_halloween','School Professor'),(1645,547,62,0,1,4,'og','Serene Swordsman'),(1646,563,59,0,0,3,'free','Fist Fighter'),(1647,563,59,1,1,4,'free','Blue Lotus'),(1648,563,62,0,1,4,'None','Casino Lady'),(1649,564,59,1,1,4,'kino','Wondering Man'),(1651,538,62,1,1,4,'christmas','Silver Fox'),(1653,566,59,1,1,4,'dal','Spirit Conquest'),(1654,567,59,1,0,4,'goblinslayer','Stellar Wind'),(1656,514,62,0,1,4,'None','Temporary Healer'),(1657,521,65,1,1,4,'halloween','The Enlightened'),(1658,568,59,1,1,4,'anniversary','The Ancestry'),(1659,527,59,1,1,4,'anniversary','The Dawn'),(1660,569,62,0,0,4,'None','Amber Sunflower'),(1661,569,59,0,0,3,'None','Berserker'),(1662,569,62,0,1,4,'new_year','Blustering Beauty'),(1663,569,62,0,0,4,'og','Dancing Blessing'),(1664,569,59,0,0,2,'None','Full Throttle'),(1665,569,59,1,0,4,'swimsuit','Summer Swim'),(1666,569,59,1,0,4,'None','Sweet Heart'),(1667,562,62,0,0,3,'None','Backdraft'),(1668,562,65,0,1,4,'new_year','Blushing Peony'),(1669,562,59,0,1,4,'None','Crimson Dahlia'),(1670,562,62,0,0,4,'None','Love Recipe'),(1671,562,59,0,1,4,'bride','Passionately Postal'),(1672,562,59,0,0,2,'None','Pine Heart'),(1673,562,59,1,0,4,'swimsuit','Suntan Girl'),(1674,562,62,0,0,4,'og','Twinkle Stream'),(1675,570,59,1,1,4,'dal','Princess'),(1676,542,59,1,0,3,'None','Cyclop\'s New Year'),(1677,542,59,0,0,4,'og','Iron Warrior'),(1678,515,59,0,1,4,'idol','Twilight Cat'),(1679,551,62,0,1,4,'idol','Twilight Supporter'),(1680,519,62,0,1,4,'None','Unbreakable Heart'),(1681,571,62,1,0,4,'anniversary','Vigorous Hammerer'),(1682,572,68,0,0,2,'None','Blacksmith'),(1683,572,68,0,1,4,'og','Howling Blade'),(1684,572,68,0,0,3,'None','Ignis'),(1685,572,62,0,1,4,'orion','Smithy Expert'),(1686,573,68,0,0,4,'loli','Zeal Blast'),(1687,574,59,0,0,4,'og','Wild Fantasy'),(1688,575,59,1,1,4,'anniversary','Wolven Pride'),(1689,545,65,1,1,4,'free_valentine','Love Lesson'),(1690,545,62,0,0,2,'None','Samurai Girl'),(1691,545,62,0,1,4,'og','Samurai Kunoichi'),(1692,545,62,1,0,3,'free_halloween','Snow White'),(1693,545,62,1,0,4,'new_year','The Traditional'),(1694,545,62,1,0,4,'None','Yukata Beauty'),(1695,545,62,0,0,3,'None','Zetsu Ei'),(1702,632,59,1,0,4,'loli','Hyper Energetic'),(1712,642,62,0,0,4,'loli','Absolute Discover'),(1722,652,59,0,0,3,'loli','Little Detective'),(1734,524,59,1,0,4,'dal','Blast Fire'),(1742,663,65,0,0,4,'og_sword_oratoria','Delightful Mage'),(1743,572,65,0,0,4,'None','Determination'),(1745,521,59,0,0,4,'None','Dual Strive'),(1747,519,59,0,0,4,'None','Faithful'),(1749,544,59,0,0,4,'kino','Food Fighter'),(1750,512,59,0,0,4,'None','Gallant Armor'),(1751,665,59,0,0,4,'None','High and Proud'),(1755,521,65,0,0,4,'free_sword_oratoria','Ready for Act'),(1756,565,59,1,0,4,'goblinslayer','Silver Adventurer'),(1757,516,59,0,0,4,'new_year','Sneaky Cat'),(1759,538,65,1,0,4,'ova','An Ocean of Virtue'),(1760,517,65,0,0,4,'sword_oratoria','Arcanic Cascade'),(1761,662,59,0,0,4,'None','Black Raid'),(1762,537,59,0,0,4,'None','Brave Spearman'),(1763,536,65,0,0,4,'None','Crimson Balefire'),(1764,529,62,1,0,4,'ova','Dreamy Beach'),(1765,664,62,0,0,4,'sword_oratoria','Dueling Caster'),(1766,521,59,0,0,4,'None','Duel Strive'),(1767,559,59,0,0,4,'wargame','Fierce Rage'),(1768,666,59,0,0,4,'None','Lightspeed'),(1769,512,59,0,0,4,'sword_oratoria','New Armed'),(1770,512,59,0,0,4,'ova','Pacific Rhapsody'),(1771,545,62,0,0,4,'None','Patissiere'),(1772,547,59,0,0,4,'ova','Swimsuit Swordsman'),(1773,521,59,1,0,4,'christmas','Sword Unleashed');
/*!40000 ALTER TABLE `adventurer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-11 16:17:19
