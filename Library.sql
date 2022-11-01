-- MySQL dump 10.13  Distrib 8.0.29, for macos12.2 (arm64)
--
-- Host: localhost    Database: Library
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AUTHOR`
--

DROP TABLE IF EXISTS `AUTHOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHOR` (
  `AUTHOR_CODE` int NOT NULL,
  `NAME` varchar(35) DEFAULT NULL,
  `SURNAME` varchar(35) DEFAULT NULL,
  `BIRTH_PLACE` varchar(35) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  PRIMARY KEY (`AUTHOR_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHOR`
--

LOCK TABLES `AUTHOR` WRITE;
/*!40000 ALTER TABLE `AUTHOR` DISABLE KEYS */;
INSERT INTO `AUTHOR` VALUES (1,'Fiorenze','Deluca','Lawrence','1984-07-22'),(2,'Alessandro','Oldam','New York','1972-07-09'),(3,'Adamo','Ligoe','New York','1971-03-26'),(4,'Bryanty','Froud','London','1970-10-30'),(5,'Lewes','Salsberg','Cumberland','1988-05-18'),(6,'Quincey','Franke','Bloomington','1964-10-12'),(7,'Inesita','Dallender','New York','1982-04-05'),(8,'Raquel','Semered','Bloomington','1972-03-21'),(9,'Kerri','Adiscot','Cumberland','1980-06-28'),(10,'Barr','Labbet','Lawrence','1967-07-06'),(11,'Godwin','Lebbern','San Diego','1983-11-16'),(12,'Ange','Symcox','Paris','1977-07-01'),(13,'Marja','Rosedale','New York','1989-03-25'),(14,'Pincas','Paulisch','Berlino','1973-12-24'),(15,'Ami','Adamo','Lawrence','1978-08-10'),(16,'Sansone','Jansen','Lawrence','1968-05-12'),(17,'Brynn','Semor','Oslo','1986-05-09'),(18,'Merrick','Harbron','Pleasantville','1959-11-09'),(19,'Petunia','Breznovic','Prague','1981-02-19'),(20,'Enrico','Zimuel','Milan','1972-04-11'),(21,'Luciano','Gamberini','Rome','1979-11-08'),(22,'Erny','Wrixon','Nashville','1967-02-25'),(23,'Corri','Gavrieli','London','1974-06-30'),(24,'Jefferson','Dewire','Cardiff','1971-02-16'),(25,'Lavena','Capey','Cumberland','1972-02-17'),(26,'Hastings','Sweetman','Los Angeles','1978-08-13'),(27,'Cointon','Stranaghan','New York','1963-12-30'),(28,'Fanchon','Bish','New York','1987-08-27'),(29,'Ramez','Elmasri','Oxford','1970-02-16'),(30,'Shamkant','Navathe','London','1962-11-24'),(31,'Sella','Marriage','Madison','1988-12-01'),(32,'Zilvia','Silver','Nashville','1958-04-25'),(33,'Marnie','Spinke','Los Angeles','1987-09-07'),(34,'Cecile','Follacaro','New York','1986-01-08'),(35,'Theo','McLauchlin','Cardiff','1961-03-01'),(36,'Junia','Everal','Los Angeles','1973-11-09'),(37,'Lu','Jenne','Seul','1977-01-11'),(38,'Giustina','Jezzard','Pleasantville','1969-02-04'),(39,'Breanne','Weben','London','1989-11-13'),(40,'Bartolemo','Chadwin','Pleasantville','1969-07-22'),(41,'Jon','Duckett','Los Angeles','1978-08-16'),(42,'Betti','Benz','Berlino','1977-08-05'),(43,'Cristian','Pes','New York','1981-09-10'),(44,'Jermaine','Van Velde','Los Angeles','1979-04-23'),(45,'Perrine','Blagden','Washington','1984-01-04'),(46,'Bruno','Goodsall','London','1963-04-27'),(47,'Hirsch','Legging','Oxford','1961-12-19'),(48,'Walker','Dumberell','London','1965-12-30'),(49,'Shelbi','Wheelton','Los Angeles','1987-09-12'),(50,'Reta','Philippsohn','Washington','1966-10-08'),(51,'Harlene','Tartt','New York','1984-09-20'),(52,'Jodee','Westwick','Liverpool','1968-01-23'),(53,'Margaretha','Aysik','Washington','1973-03-18'),(54,'Merna','Lambal','London','1969-09-30'),(55,'Vitia','Douch','London','1977-08-20'),(56,'Chelsea','Nannetti','San Diego','1973-04-14'),(57,'Gwyneth','Tinsley','Los Angeles','1986-05-12'),(58,'Jacquenette','Snookes','Lawrence','1973-08-07'),(59,'Yancey','Sacher','Lawrence','1961-04-17'),(60,'Sim','Frondt','Bloomington','1967-05-20'),(61,'Abey','Crowest','New York','1965-07-20'),(62,'Ileane','Spurriar','Los Angeles','1969-09-03'),(63,'Andrej','Von Der Empten','Amsterdam','1989-12-17'),(64,'Beverlee','Jepensen','Cumberland','1976-12-17'),(65,'Maible','Twidale','Bloomington','1963-01-29'),(66,'Cal','Inkin','Oxford','1969-11-22'),(67,'Karie','Bendixen','Amsterdam','1969-12-29'),(68,'Jasen','Itter','Madison','1967-12-24'),(69,'Peri','Maher','Wilpen','1967-04-08'),(70,'Burk','Torr','Bloomington','1984-08-01'),(71,'Farrah','Letham','Oxford','1962-07-15'),(72,'Sandro','Wilcher','Nashville','1990-09-25'),(73,'Roxy','Burnage','Oxford','1955-04-13'),(74,'Boycie','Shorey','Amsterdam','1989-11-20'),(75,'Nicki','Pharrow','Los Angeles','1984-09-16'),(76,'Xylia','Bendle','Cumberland','1975-01-01'),(77,'Ursula','Lockitt','Liverpool','1967-12-14'),(78,'Hannah','Bachnic','Madison','1956-06-22'),(79,'Gabriella','Orum','Madison','1958-11-21'),(80,'Gregorius','McPhater','Pleasantville','1976-12-04'),(81,'Hortense','Whatson','Washington','1978-08-25'),(82,'Gil','Lettington','Los Angeles','1974-08-11'),(83,'Briant','Anespie','Los Angeles','1989-01-01'),(84,'Angil','Beckson','Oxford','1956-05-01'),(85,'Giffer','Leisman','Los Angeles','1959-05-25'),(86,'Mirelle','Hehnke','Los Angeles','1968-06-25'),(87,'Eva','Elcum','Pleasantville','1956-02-20'),(88,'Margaretta','Pardal','New York','1970-03-08'),(89,'Merissa','Senechault','New York','1956-02-02'),(90,'Leroy','Vasiltsov','San Diego','1976-10-13'),(91,'Gertrudis','Corzon','Oxford','1983-06-21'),(92,'Rubie','Delgua','Los Angeles','1970-06-03'),(93,'Ludvig','Callf','London','1971-06-05'),(94,'Emiline','Greenhough','Madison','1982-04-11'),(95,'Booth','Belvard','London','1959-10-11'),(96,'Russ','Leander','Oxford','1959-11-16'),(97,'Branden','Huffer','Bloomington','1955-01-03'),(98,'De','Wackly','Bloomington','1989-09-17'),(99,'Alejandrina','Bardell','Wilpen','1962-10-25'),(100,'Isacco','McSherry','Edimburg','1976-04-17');
/*!40000 ALTER TABLE `AUTHOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOOK`
--

DROP TABLE IF EXISTS `BOOK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BOOK` (
  `BOOK_CODE` int NOT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `ISBN` char(13) DEFAULT NULL,
  `LANGUAGE` varchar(20) DEFAULT NULL,
  `YEAR_OF_PUBLICATION` int DEFAULT NULL,
  `LIBRARY_CODE` int NOT NULL,
  `NUMBER_OF_COPIES` int DEFAULT NULL,
  PRIMARY KEY (`BOOK_CODE`),
  KEY `LIBRARY_CODE` (`LIBRARY_CODE`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`LIBRARY_CODE`) REFERENCES `LIBRARY` (`LIBRARY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOK`
--

LOCK TABLES `BOOK` WRITE;
/*!40000 ALTER TABLE `BOOK` DISABLE KEYS */;
INSERT INTO `BOOK` VALUES (1,'Get Smart','387623794-7','English',2010,1,2),(2,'South of Heaven West','346481000-3','English',2015,2,9),(3,'Human Failure (Mensc','068254989-4','English',2014,3,8),(4,'Revenge of the Nerds','502714957-3','Japanese',2019,4,5),(5,'Lone Ranger The','698429931-4','Icelandic',2011,5,3),(6,'Brides (Nyfes)','752213396-3','Georgian',2012,6,6),(7,'Larceny Inc','857627191-5','English',2012,7,9),(8,'Stonewall','660038142-6','Icelandic',2016,8,2),(9,'Eight Crazy Nights (','870560200-9','English',2018,9,1),(10,'Gone Fishin ','137066182-7','Georgian',2012,10,1),(11,'Richard III','863050834-5','Chinese',2019,11,8),(12,'Stupid Boy (Garçon s','998941371-1','Italian',2013,12,5),(13,'Secret Garden The','368968937-6','English',2014,1,4),(14,'Act Da Fool','653073623-9','English',2020,2,9),(15,'Hot Fuzz','867778553-1','Polish',2012,3,2),(16,'Get Bruce','389625239-9','Hebrew',2020,4,7),(17,'No Retreat No Surren','204897847-9','Italian',2019,5,1),(18,'Back Soon','772713523-2','English',2013,6,6),(19,'Pitch Black','255439894-1','English',2015,7,6),(20,'Gingerbread Man The','004023598-X','Dari',2012,8,4),(21,'Woman on the Beach (','661872594-1','English',2020,9,3),(22,'Lost City The','666013383-6','English',2014,10,10),(23,'Paradise Lost 2 Reve','165632171-8','Italian',2010,11,2),(24,'Key Largo','425111017-X','Estonian',2019,12,8),(25,'Diplomacy (Diplomati','507124152-8','French',2019,1,2),(26,'Lavender Hill Mob Th','435456826-8','English',2016,2,9),(27,'Chronicle of a Summe','851106761-2','Italian',2019,3,3),(28,'Such Is Life (Así es','301170811-8','English',2019,4,3),(29,'Tenchi The Samurai A','214940353-6','English',2018,5,3),(30,'Boys from Fengkuei T','351898785-2','Portuguese',2016,6,10),(31,'Thieves The (Dodookd','887526619-0','Romanian',2011,7,6),(32,'Blackmailed','618325112-7','Czech',2013,8,5),(33,'Cocaine Cowboys II H','670271351-7','Indonesian',2011,9,1),(34,'Ingeborg Holm','814543114-X','English',2013,10,3),(35,'1208 East of Buchare','601546113-6','Gujarati',2011,11,9),(36,'Redemption The Stan ','501862280-6','Finnish',2011,12,9),(37,'Inspectors The','050916783-7','Catalan',2017,1,3),(38,'Animal House','265972215-3','English',2017,2,8),(39,'Red Riding 1983','848202184-2','English',2019,3,3),(40,'Missionary Man','927994979-9','Dhivehi',2017,4,8),(41,'Golem','296111646-5','Japanese',2019,5,3),(42,'Project X','829914597-X','English',2019,6,9),(43,'Dragon Ball Z Bio-Br','786395256-5','English',2019,7,7),(44,'Forbidden Christ The','970334328-7','Danish',2019,8,9),(45,'Stingray Sam','086031288-7','Polish',2019,9,9),(46,'Inspector Palmu s Er','763200529-3','English',2016,10,3),(47,'Streetcar Named Desi','510453377-8','English',2013,11,5),(48,'World of Kanako The ','290005808-2','Lao',2020,12,4),(49,'Suit for Wedding A (','085745713-6','English',2020,1,7),(50,'Human-computer inter','364615054-8','English',2017,2,2),(51,'I m Reed Fish','775940054-3','Kashmiri',2017,3,10),(52,'Kumail Nanjiani Beta','925812482-0','German',2010,4,2),(53,'Teaching Mrs Tingle','584224789-5','English',2020,5,10),(54,'Always','354835830-6','Catalan',2015,6,4),(55,'Delta','285192251-3','English',2011,7,2),(56,'Gunfighter The','386397507-3','Albanian',2013,8,1),(57,'Angels  Share The','733508116-5','English',2017,9,9),(58,'Murder by Proxy How ','801081738-4','English',2019,10,7),(59,'Arthur and the Reven','560797299-2','English',2017,11,1),(60,'Closure','492112694-1','English',2018,12,6),(61,'Meet Joe Black','182342356-6','Japanese',2011,1,4),(62,'Scenic Route','299282269-8','English',2015,2,5),(63,'Private Detective 62','055417113-9','English',2017,3,9),(64,'Cars','101215590-0','English',2012,4,8),(65,'Iron Mask The','951964371-0','Bengali',2014,5,2),(66,'Wave The (Welle Die)','469785019-X','English',2014,6,6),(67,'Andrei Rublev (Andre','368990830-2','English',2017,7,1),(68,'Wild River','300485539-9','Dzongkha',2012,8,10),(69,'Krrish','976860084-5','English',2016,9,8),(70,'You Only Live Once','147191251-5','Dari',2018,10,4),(71,'Bed & Breakfast Love','076691563-8','Dari',2018,11,3),(72,'Iron Horse The','860964250-X','Japanese',2013,12,10),(73,'Ninotchka','384050463-5','Quechua',2017,1,8),(74,'Rains of Ranchipur T','158999545-7','English',2012,2,6),(75,'Maniac','136964378-0','English',2013,3,5),(76,'Dakota Skye','194862546-6','English',2011,4,4),(77,'Family Tree','129488690-8','English',2017,5,3),(78,'Rebecca','432587582-4','Swedish',2015,6,5),(79,'The Frame','515279116-1','English',2010,7,9),(80,'Kairat','825867311-4','Hiri Motu',2013,8,2),(81,'Fear','712463375-3','English',2012,9,1),(82,'Slaves to the Underg','536751983-0','French',2014,10,1),(83,'Trial','284203566-6','Korean',2013,11,5),(84,'Gasoline (Benzina)','175205668-X','English',2019,12,1),(85,'Heaven s Prisoners','672217513-8','Bengali',2014,1,10),(86,'HTM & CSS','607745120-7','Italian',2018,2,1),(87,'Cyrano de Bergerac','611928800-7','Korean',2017,3,7),(88,'State of Siege (État','226372696-9','Hindi',2013,4,1),(89,'Memory','083845517-4','Punjabi',2014,5,5),(90,'Ironclad','184722570-5','Kashmiri',2011,6,9),(91,'Happy People A Year ','653175736-1','Swedish',2012,7,8),(92,'Convoy','989371762-0','German',2015,8,6),(93,'Général Idi Amin Dad','521329516-9','English',2015,9,9),(94,'Come Blow Your Horn','087133062-8','English',2013,10,6),(95,'Carmen Comes Home (K','517581126-6','Hindi',2020,11,2),(96,'Heroine','023019395-1','Dzongkha',2013,12,7),(97,'Luna de Avellaneda','441842932-8','Guaraní',2018,1,5),(98,'Under the Bridges (U','742437654-3','Swedish',2016,2,9),(99,'Story of My Life The','760264513-8','English',2012,3,8),(100,'The Fourth War','171208472-0','English',2020,4,4),(101,'Life of Another The ','009047587-9','English',2015,5,5),(102,'Sergeant Rutledge','372098427-3','Arabic',2011,6,9),(103,'Black Windmill The','449571196-2','English',2013,7,6),(104,'Nicholas on Holiday','362309208-8','English',2018,8,4),(105,'Beefcake','457456450-4','Aymara',2016,9,1),(106,'Oliver Twist','369048652-1','Guaraní',2020,10,1),(107,'Salvage','190222315-2','Belarusian',2014,11,9),(108,'Cassandra Crossing T','945660604-X','Arabic',2016,12,10),(109,'Crocodile Hunter Col','711604128-1','English',2014,1,10),(110,'Abbott and Costello ','465297052-8','English',2016,2,9),(111,'Wolf Man The','836374770-X','Indonesian',2013,3,8),(112,'Vehicle 19','509808775-9','English',2013,4,2),(113,'Rollerball','595626866-2','Hungarian',2014,5,7),(114,'Carbon Nation','168316748-1','Portuguese',2012,6,7),(115,'Times Square','744780754-0','English',2020,7,7),(116,'Memory Keeper s Daug','594275024-6','English',2012,8,5),(117,'And Nobody Weeps for','992229254-8','Italian',2017,9,4),(118,'Tyler Perry s I Can ','560211284-7','Italian',2018,10,7),(119,'Day of the Triffids ','179592990-1','English',2011,11,8),(120,'Deadline','663119553-5','Spanish',2015,12,7),(121,'Holy Flying Circus','521847642-0','English',2016,1,9),(122,'Mala Noche','190401007-5','Northern Sotho',2017,2,8),(123,'Tracks','288231977-0','Icelandic',2010,3,8),(124,'Sound of Music The','103300276-3','Khmer',2019,4,4),(125,'Nick and Norah s Inf','671158165-2','Czech',2019,5,6),(126,'Purple Rose of Cairo','292051296-X','Guaraní',2013,6,3),(127,'Thief of Hearts','000369692-8','English',2016,7,10),(128,'Hollywood Party','769740772-8','English',2018,8,7),(129,'Absolute Power','946684198-X','Czech',2016,9,1),(130,'In the Park','264788349-1','Haitian Creole',2018,10,9),(131,'Life is to Whistle (','421128511-4','English',2012,11,7),(132,'Avengers The','843331705-9','Bengali',2012,12,1),(133,'Kirikou and the Wild','978061177-0','Khmer',2010,1,7),(134,'Love s Labour s Lost','368515943-7','Czech',2011,2,9),(135,'Attack of the 50 Foo','075305079-X','Danish',2010,3,2),(136,'Longest Yard The','014330257-4','Georgian',2010,4,6),(137,'PHP 7 development','331424241-7','Italian',2015,5,3),(138,'Great Expectations','436501926-0','Catalan',2013,6,1),(139,'Concrete Night (Beto','222223087-X','Irish Gaelic',2010,7,5),(140,'Deep Impact','385828979-5','Bengali',2019,8,8),(141,'Big Squeeze The','516983356-3','English',2014,9,10),(142,'Red White & Blue','253760945-X','English',2016,10,4),(143,'Saboteur','167947701-3','English',2014,11,1),(144,'Children Are Watchin','015674765-0','English',2018,12,4),(145,'Flight of the Living','391578830-9','Kazakh',2014,1,8),(146,'Phil Spector','065646345-7','Irish Gaelic',2020,2,3),(147,'Inhale','259418123-4','English',2011,3,9),(148,'Little Children','756564271-1','English',2014,4,10),(149,'No Distance Left to ','192373118-1','English',2019,5,6),(150,'Addams Family The','131544489-5','English',2019,6,4),(151,'From Above','872379238-8','English',2018,7,1),(152,'Enemy','216013488-0','Arabic',2012,8,2),(153,'Waydowntown','259579784-0','English',2018,9,7),(154,'Dead Man Walking','052706515-3','English',2011,10,8),(155,'Agent Vinod','526942871-7','Catalan',2017,11,4),(156,'Young Cassidy','280992700-6','German',2018,12,4),(157,'A Viking Saga The Da','835266674-6','Hindi',2012,1,7),(158,'Million Ways to Die ','875127371-3','Norwegian',2014,2,10),(159,'High Spirits','256739345-5','Swedish',2016,3,8),(160,'Day the Universe Cha','672560381-5','Northern Sotho',2018,4,4),(161,'Captain America The ','144577227-2','English',2020,5,8),(162,'Strangers on a Train','565659819-5','Dutch',2014,6,1),(163,'Buddy','170243376-5','English',2015,7,10),(164,'Death Defying Acts','009140312-X','Dhivehi',2017,8,3),(165,'History Boys The','333748888-9','Catalan',2017,9,2),(166,'Battle Royale 2 Requ','585173205-9','English',2018,10,2),(167,'Counterfeiters The (','006821799-4','Estonian',2018,11,9),(168,'Svidd Neger','376459959-6','English',2018,12,2),(169,'Altman','404884623-X','Czech',2010,1,4),(170,'Incredibly Strange C','335294364-8','Italian',2018,2,6),(171,'Mondays in the Sun (','060088686-7','English',2019,3,9),(172,'Shaka Zulu The Citad','829509196-4','Swedish',2014,4,10),(173,'Peculiarities of the','947990234-6','English',2019,5,2),(174,'Sting II The','966859767-2','English',2020,6,9),(175,'Renaissance','554021569-9','English',2018,7,7),(176,'Jubilee','343838580-5','English',2015,8,5),(177,'Open Windows','405663612-5','English',2015,9,2),(178,'Elizabeth','356414253-3','English',2012,10,10),(179,'LA Without a Map','421308038-2','English',2014,11,1),(180,'Almanya - Welcome to','022938411-0','Guaraní',2014,12,7),(181,'City Hall','687448355-2','English',2019,1,8),(182,'Kleines Arschloch - ','768148078-1','Korean',2017,2,7),(183,'Last Ride','347737564-5','Haitian Creole',2019,3,6),(184,'Starflight The Plane','659332931-2','Italian',2016,4,9),(185,'Fundamentals of Data','740153355-3','Italian',2019,5,2),(186,'Raisin in the Sun A','469863297-8','Punjabi',2015,6,5),(187,'Boys of St Vincent T','366292343-2','English',2013,7,1),(188,'Wall Street','600597433-5','English',2020,8,7),(189,'19th Wife The','371268896-2','Belarusian',2016,9,5),(190,'Shuttle','271280652-2','English',2017,10,4),(191,'Doc Savage The Man o','093035174-6','English',2015,11,3),(192,'Family Life','394873350-3','English',2014,12,3),(193,'Mon oncle d Amérique','136320382-7','English',2017,1,6),(194,'The Dark Horse','132261731-7','Guaraní',2018,2,3),(195,'My Bloody Valentine','685607790-4','Danish',2014,3,8),(196,'Breakdown','127368309-9','Chinese',2011,4,8),(197,'From the Life of the','542931356-4','Italian',2015,5,5),(198,'Split Second','816886703-3','Italian',2012,6,4),(199,'Knack and How to Get','657583349-7','English',2015,7,1);
/*!40000 ALTER TABLE `BOOK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPARTMENT`
--

DROP TABLE IF EXISTS `DEPARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEPARTMENT` (
  `DEPARTMENT_CODE` int NOT NULL,
  `PRINCIPAL` varchar(35) DEFAULT NULL,
  `LIBRARY_CODE` int NOT NULL,
  PRIMARY KEY (`DEPARTMENT_CODE`),
  KEY `LIBRARY_CODE` (`LIBRARY_CODE`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`LIBRARY_CODE`) REFERENCES `LIBRARY` (`LIBRARY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENT`
--

LOCK TABLES `DEPARTMENT` WRITE;
/*!40000 ALTER TABLE `DEPARTMENT` DISABLE KEYS */;
INSERT INTO `DEPARTMENT` VALUES (1,'A.Ippoliti',1),(2,'M.Mazzanti',2),(3,'V.Guidi',3),(4,'S.Forlati',4),(5,'M.Franchini',5),(6,'M.Mella',6),(7,'P.Secchiero',7),(8,'L.Grassi',8),(9,'A.Cavazzini',9),(10,'M.Pinotti',10),(11,'S.Volpato',11),(12,'P.Tangelli',12);
/*!40000 ALTER TABLE `DEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HAS_BORROWED`
--

DROP TABLE IF EXISTS `HAS_BORROWED`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HAS_BORROWED` (
  `STUDENT_ID` char(6) NOT NULL,
  `BOOK_CODE` int NOT NULL,
  `RELEASE_DATE` date DEFAULT NULL,
  `RETURN_DATE` date DEFAULT NULL,
  PRIMARY KEY (`STUDENT_ID`,`BOOK_CODE`),
  KEY `BOOK_CODE` (`BOOK_CODE`),
  CONSTRAINT `has_borrowed_ibfk_1` FOREIGN KEY (`STUDENT_ID`) REFERENCES `USER` (`STUDENT_ID`),
  CONSTRAINT `has_borrowed_ibfk_2` FOREIGN KEY (`BOOK_CODE`) REFERENCES `BOOK` (`BOOK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HAS_BORROWED`
--

LOCK TABLES `HAS_BORROWED` WRITE;
/*!40000 ALTER TABLE `HAS_BORROWED` DISABLE KEYS */;
INSERT INTO `HAS_BORROWED` VALUES ('139818',34,'2022-07-03','2022-08-02'),('139818',69,'2022-05-01',NULL),('143417',69,'2022-07-03','2022-08-02'),('528314',33,'2022-07-02','2022-08-01'),('586566',25,'2022-07-01','2022-07-31'),('601005',5,'2022-07-01','2022-07-31'),('731226',17,'2022-07-02','2022-08-01'),('735048',22,'2022-07-01','2022-07-31'),('820702',22,'2022-07-03','2022-08-02'),('822348',47,'2022-07-02','2022-08-01'),('875639',1,'2022-07-01','2022-07-31');
/*!40000 ALTER TABLE `HAS_BORROWED` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HAS_WRITTEN`
--

DROP TABLE IF EXISTS `HAS_WRITTEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HAS_WRITTEN` (
  `BOOK_CODE` int NOT NULL,
  `AUTHOR_CODE` int NOT NULL,
  PRIMARY KEY (`BOOK_CODE`,`AUTHOR_CODE`),
  KEY `AUTHOR_CODE` (`AUTHOR_CODE`),
  CONSTRAINT `has_written_ibfk_1` FOREIGN KEY (`BOOK_CODE`) REFERENCES `BOOK` (`BOOK_CODE`),
  CONSTRAINT `has_written_ibfk_2` FOREIGN KEY (`AUTHOR_CODE`) REFERENCES `AUTHOR` (`AUTHOR_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HAS_WRITTEN`
--

LOCK TABLES `HAS_WRITTEN` WRITE;
/*!40000 ALTER TABLE `HAS_WRITTEN` DISABLE KEYS */;
INSERT INTO `HAS_WRITTEN` VALUES (1,1),(2,1),(3,17),(7,34),(9,42),(4,69),(5,69),(6,69),(10,73),(14,80),(15,87),(13,90),(12,96),(8,100),(11,100);
/*!40000 ALTER TABLE `HAS_WRITTEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LIBRARY`
--

DROP TABLE IF EXISTS `LIBRARY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LIBRARY` (
  `LIBRARY_CODE` int NOT NULL,
  `NAME` varchar(35) DEFAULT NULL,
  `ADDRESS` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`LIBRARY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LIBRARY`
--

LOCK TABLES `LIBRARY` WRITE;
/*!40000 ALTER TABLE `LIBRARY` DISABLE KEYS */;
INSERT INTO `LIBRARY` VALUES (1,'Architettura','Via Ghiara 36 44121 Ferrara\r'),(2,'Economia e management','Via Voltapaletto 11 44121 Ferrara\r'),(3,'Fisica e Scienze della Terra','Via Saragat 1 44122 Ferrara\r'),(4,'Giurisprudenza','Corso Ercole I d\'Este 37 44121 Ferrara\r'),(5,'Ingegneria','Via Saragat 1 44122 Ferrara\r'),(6,'Matematica e informatica','Via Machiavelli 30 44121 Ferrara\r'),(7,'Morfologia chirurgia e medicina spe','Via Luigi Borsari 46 44121 Ferrara\r'),(8,'Scienze biomediche e chirurgico spe','Via Luigi Borsari 46 44121 Ferrara\r'),(9,'Scienze chimiche e farmaceutiche','Via Luigi Borsari 46 44121 Ferrara\r'),(10,'Scienze della vita e biotecnologie','Via Luigi Borsari 46 44121 Ferrara\r'),(11,'Scienze mediche','Via Fossato di Mortara 64/B 44121 Ferrara\r'),(12,'Studi umanistici','Via Paradiso 12 44121 Ferrara\r');
/*!40000 ALTER TABLE `LIBRARY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER` (
  `STUDENT_ID` char(6) NOT NULL,
  `NAME` varchar(35) DEFAULT NULL,
  `SURNAME` varchar(35) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `PHONE` char(15) DEFAULT NULL,
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES ('139818','Josh ','Booth','9703 Golf St. Hartford CT 06106 ','3434143777\r'),('143417','Sebastian ','Olson','9453 Wrangler Drive Naugatuck CT 06770 ','9927188224\r'),('528314','Jamarion ','Vance','8288 North Buckingham Lane Cocoa FL 32927 ','5170864405\r'),('586566','Logan ','Collier','571 Highland St. San Antonio TX 78213 ','1488370303\r'),('601005','George ','Gutierrez','18 Birchwood St. Bel Air MD 21014 ','563620308\r'),('731226','Kaleb ','Mason','268 6th Drive Muskego WI 53150 ','7755073999\r'),('735048','Jovany ','Larson','406 Forest Dr. Massillon OH 44646 ','2731713285\r'),('820702','Maximillian ','Caldwell','8880 10th Lane Conway SC 29526 ','4300135010\r'),('822348','Eddie ','Hansen','9116 Adams St. Vernon Hills IL 60061 ','1203714548\r'),('875639','Brice ','Sexton','177 Gonzales St. Rock Hill SC 29730 ','8456025624\r');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-08 16:10:33
