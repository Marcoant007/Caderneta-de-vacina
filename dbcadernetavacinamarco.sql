



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acesso`
--

DROP TABLE IF EXISTS `acesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acesso` (
  `idacesso` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(60) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idacesso`),
  KEY `fk_acesso_usuario1_idx` (`usuario`),
  CONSTRAINT `fk_acesso_usuario1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acesso`
--

LOCK TABLES `acesso` WRITE;
/*!40000 ALTER TABLE `acesso` DISABLE KEYS */;
INSERT INTO `acesso` VALUES (1,'marco@gmail.com','123456','user',NULL),(2,'marco@gmail.com','123456','user',NULL),(5,'tavadandoerro@gmail.com','mordekai07','Administrador',16),(7,'testedoteste@gmail.com','123456','Usuario',18),(10,'testedoteste@gmail.com','123','O CRL',22),(15,'MADARAo@gmail.com','123456','Usuario',25),(16,'MADARAOBRABO@GMAIL.COM','123456789','Usuario',26),(17,'sasuke@gmail.com','123456','Usuario',27),(22,'testedoteste@gmail.com','123456','Usuario',30),(23,'SASUKEBOLADO@GMAIL.COM','MORDEKAI07','Usuario',31),(29,'REFATOREI@GMAIL.COM','MORDEKAI07','Usuario',33),(31,'crlmeusalvado@gmail.com','PORRA','Usuario',35),(37,'testando@hotmail.com','123456','Usuario',40),(38,'direito@gmail.com','123','Usuario',41),(39,'direito@gmail.com','123','Usuario',42),(42,'marcositenovo@gmail.com','123456','Usuario',45),(43,'Harland@gmail.com','123456','Administrador',46),(45,'Sancho@gmail.com','123','Usuario',48);
/*!40000 ALTER TABLE `acesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `idendereco` int(11) NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(50) NOT NULL,
  `bairro` varchar(25) NOT NULL,
  `cidade` varchar(25) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `cep` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`idendereco`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'rua joao germano','JACARAIPE','Serra','Espírito Santo','29175-230'),(2,'','','','Escolha',''),(3,'RUA DO BOBAO','BOBAO','Serra','Espírito Santo','29175-230'),(4,'RUA DO BOBAO','BOBAO','Serra','Espírito Santo','29175-230'),(5,'KKKKKKK','KKKKK','KKKKK','Espírito Santo',''),(8,'TESTE TETE','TESTE','TESTEEE','Espírito Santo','29175-230'),(9,'TESTE','TESTE','TEST','Espírito Santo','29175-230'),(12,'','','','Escolha',''),(13,'rua joao germano','TESTE','Serra','Espírito Santo','29175-230'),(14,'RUA DO TESTE','BARRIO DA CABEÇADA ','TESTE','Espírito Santo','29175-230'),(15,'rua joao germano','BARRIO DA CABEÇADA ','Serra','Espírito Santo','29175-230'),(19,'rua joao germano','213321321','Serra','Espírito Santo','29175-230'),(22,'','','','Escolha',''),(23,'RUA DO TESTE DO PARCEIRO','PARC','PARCERIA','Distrito Federal','29175230'),(24,'RUA DO TESTE DO PARCEIRO','PARC','PARCERIA','Distrito Federal','29175230'),(25,'rua joao germano','PARC','Serra','Espírito Santo','29175-230'),(26,'','','','Escolha',''),(27,'rua joao germano','JACARAIPE','Serra','Espírito Santo','29175-230'),(28,'rua joao germano','FEU ROSA','Serra','Espírito Santo','29175-230'),(29,'RUA DO TESTE DO PARCEIRO','CARALHO','PARCERIA','Distrito Federal','29175230'),(30,'MLQ LOGIN','FEU ROSA','Serra','Espírito Santo','29175-230'),(33,'','','','Escolha',''),(34,'rua joao germano','BARRIO DA CABEÇADA ','Serra','Espírito Santo','29175-230'),(35,'rua joao germano','BARRIO DA CABEÇADA ','Serra','Espírito Santo','29175-230'),(36,'RUA DO TESTE DO PARCEIRO','konorra','PARCERIA','Distrito Federal','29184-848'),(38,'','','','Escolha',''),(39,'','','','Escolha',''),(40,'','','','Escolha',''),(41,'','','','Escolha',''),(42,'rua joao germano','Serafim','Serra','EspÃ­rito Santo','29175-230'),(43,'rua joao germano','','Serra','Espírito Santo','29175-230'),(45,'RUA DO BOBAO','CARALHO','Serra','Espírito Santo','29175-230'),(50,'rua joao germano','','Serra','Espírito Santo','29175-230'),(51,'RUA DO PARCEIRO','ARVORE','PARCERIA DO TESTE','Amazonas','29175-820'),(52,'RUA DO PARCEIRO','ARVORE','PARCERIA DO TESTE','Amazonas','29175-820'),(53,'RUA DO PARCEIRO','ARVORE','PARCERIA DO TESTE','Amazonas','29175-820'),(54,'rua joao germano','ARVORE','Serra','Espírito Santo','29175-230'),(55,'DIFERENCIADO AVENIDA','ARVORE','DIFERENTE','Ceará','21984-848'),(56,'DIFERENCIADO AVENIDA','ARVORE','DIFERENTE','Ceará','21984-848'),(59,'','','','Escolha',''),(60,'','','','Escolha',''),(61,'RUA MARIA MENDOÃA','SERRA','CABEÃADA','CearÃ¡','29175-230'),(62,'RUA SITE NOVO','SITE','SITE NOVO','Espírito Santo','29175230'),(63,'','','','Selecione seu estado',''),(64,'Alemanha','Berlin','Berlin','Espírito Santo','74157845'),(65,'RUA DO HOSPITAL NOVO','VITORIA','VITORIA','EspÃ­rito Santo','29178523'),(66,'RUA DO HOSPITAL NOVO','VITORIA','VITORIA','EspÃ­rito Santo','29178523'),(67,'RUA DO HOSPITAL NOVO','VITORIA','VITORIA','EspÃ­rito Santo','29178523'),(68,'SUCECASSADA','SUCESAACSA','Berlin','EspÃ­rito Santo','74157845'),(70,'Alemanha','ARAACAS','Berlin','Espírito Santo','74157845'),(71,'RUA DA UNIMED','VITORIA','VITORIA','EspÃ­rito Santo','291785496');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico` (
  `idhistorico` int(11) NOT NULL AUTO_INCREMENT,
  `peso` float NOT NULL,
  `altura` float NOT NULL,
  `idade` int(11) NOT NULL,
  `perimetro` float DEFAULT NULL,
  `lancamento` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `unidade` varchar(11) NOT NULL,
  PRIMARY KEY (`idhistorico`),
  KEY `fk_historico_usuario1_idx` (`usuario`),
  CONSTRAINT `fk_historico_usuario1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,123,200,25,1,'2020-03-11',46,'UNIMED'),(15,125,2,21,1,'2020-03-11',48,'Jovem');
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local` (
  `idlocal` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `endereco` int(11) NOT NULL,
  PRIMARY KEY (`idlocal`),
  KEY `fk_local_endereco1_idx` (`endereco`),
  CONSTRAINT `fk_local_endereco1` FOREIGN KEY (`endereco`) REFERENCES `endereco` (`idendereco`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES (3,'Hospital meridional pega no meu pal','(27) 3252-4620',42),(4,'HOSPITAL MARIA DAS GRAÃAS','(27) 3252-4620',61),(5,'Hospital NOVO','32458612',65),(6,'Hospital NOVO','32458612',66),(7,'Hospital NOVO','32458612',67),(8,'Haarland','2733025262',68),(9,'UNIMED VITÓRIA','322054621',71);
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parceiro`
--

DROP TABLE IF EXISTS `parceiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parceiro` (
  `idparceiro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `contato` varchar(25) NOT NULL,
  `site` varchar(50) DEFAULT NULL,
  `cnpj` varchar(18) NOT NULL,
  `endereco` int(11) NOT NULL,
  PRIMARY KEY (`idparceiro`),
  KEY `fk_parceiro_endereco1_idx` (`endereco`),
  CONSTRAINT `fk_parceiro_endereco1` FOREIGN KEY (`endereco`) REFERENCES `endereco` (`idendereco`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parceiro`
--

LOCK TABLES `parceiro` WRITE;
/*!40000 ALTER TABLE `parceiro` DISABLE KEYS */;
INSERT INTO `parceiro` VALUES (1,'aseasdassad','2732524620','(45) 6546-6545','6546546456546','54.645.654/5645-46',25),(2,'CHEGOU O PARCEIRO','(27) 3252-4620','parceiro@gmail.com','WWW.SITEDOPARCEIRO.COM','12.345.648/8787-87',54);
/*!40000 ALTER TABLE `parceiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_vacinas`
--

DROP TABLE IF EXISTS `registro_vacinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_vacinas` (
  `idregistro_vacinas` int(11) NOT NULL AUTO_INCREMENT,
  `vacina` int(11) NOT NULL,
  `lote` varchar(10) NOT NULL,
  `laboratorio` varchar(30) NOT NULL,
  `dose` int(11) NOT NULL,
  `local` int(11) NOT NULL,
  `atendente` int(11) NOT NULL,
  `data` date NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idregistro_vacinas`),
  KEY `fk_registro_vacinas_vacina_idx` (`vacina`),
  KEY `fk_registro_vacinas_usuario1_idx` (`usuario_id`),
  KEY `fk_registro_vacinas_local1_idx` (`local`),
  CONSTRAINT `fk_registro_vacinas_local1` FOREIGN KEY (`local`) REFERENCES `local` (`idlocal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_registro_vacinas_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_registro_vacinas_vacina` FOREIGN KEY (`vacina`) REFERENCES `vacina` (`idvacina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_vacinas`
--

LOCK TABLES `registro_vacinas` WRITE;
/*!40000 ALTER TABLE `registro_vacinas` DISABLE KEYS */;
INSERT INTO `registro_vacinas` VALUES (9,1,'2','MedSenior',1,9,1,'2020-03-09',48),(10,1,'1','MedSenior',1,9,1,'2020-03-09',46),(11,7,'2','MedSenior',2,9,1,'2020-03-09',46),(12,11,'3','2',2,6,2,'2020-03-09',46),(13,10,'1','UNIMED',3,9,1,'2020-03-09',46);
/*!40000 ALTER TABLE `registro_vacinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `pai` varchar(45) DEFAULT NULL,
  `mae` varchar(45) NOT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `endereco` int(11) DEFAULT NULL,
  `cartao_sus` varchar(16) DEFAULT NULL,
  `nascimento` date NOT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `etnia` varchar(14) DEFAULT NULL,
  `registro_civil` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fk_usuario_endereco1_idx` (`endereco`),
  CONSTRAINT `fk_usuario_endereco1` FOREIGN KEY (`endereco`) REFERENCES `endereco` (`idendereco`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (11,'MARCO TESTE','','MARCO ANTONIO TESTE','TESTE','',9,'','2019-12-10','(27) 3252-4620'),(16,'O TESTE DE AGORA','17816783752','TESTE AGORA','DE SÁ','',13,'','2019-12-24','(27) 3252-4620'),(17,'ANTONIO TESTE TESTE TESTE MAE','','ANTONIO TESTE','TESTE MAE','',14,'','2019-12-17','(27) 3252-4620'),(18,'MARCO ANTONIO EDNA DE SÁ','17816783752','MARCO ANTONIO','DE SÁ','',15,'','2019-12-11','(27) 3252-4620'),(22,'MARCO ANTONIO EDNA DE SÁ','','MARCO ANTONIO','DE SÁ','',19,'','1222-12-12','(27) 3252-4620'),(25,'MARIA','17816783752','MARIA','DE SÁ','',28,'','2019-12-25','2732524620'),(26,'MADARA O BRABINHO','178.167.837-52','ANTONIO TESTE','TESTE MAE','',29,'1233484749','1998-08-27','27988710752'),(27,'sasuke','17816783752','MARCO ANTONIO','MAE DO TESTE','',30,'','2019-12-25','(27) 3252-4620'),(30,'MARCO ANTONIO EDNA DE SÁ','17816783752','MARCO ANTONIO','DE SÁ','3.333.333-33',35,'','3333-03-31','(27) 3252-4620'),(31,'SASUKE XARINGAM','184.818.118-18','SASUKE MORRIDO','ITACHI','1.874.151-51',36,'23254684','1998-02-27','(27) 9887-4075'),(33,'O MALUCO REFATORO','178.167.837-52','MARCO ANTONIO','DE SÁ','',43,'','2019-12-21','(27) 3252-4620'),(35,'STONKS EDNA STONKS','178.167.837-52','STONKS','STONKS','',45,'','2019-12-27','(27) 3252-4620'),(40,'MARCO ANTONIO EDNA DE SÁ','333.333.333-33','MARCO ANTONIO','DE SÁ','3.333.333-33',50,'333333','3333-03-31','(27) 3252-4620'),(41,'DIFERENCIADO','154.687.848-48','ARVORE DO PAI','ARVORE DA MAE','1.234.567-89',55,'23254684','1998-02-27','(27) 3251-4777'),(42,'OUTRO CARA','154.687.848-48','ARVORE DO PAI','ARVORE DA MAE','1.234.567-89',56,'23254684','1998-02-27','(27) 3251-4777'),(45,'MARCO NOVO SITE','17816783752','MARCO NOVO SITE','EDNA NOVO SITE','3.333.333-33',62,'1233484749','1998-02-27','2732524620'),(46,'Halandd','17816783752','PAI DO HARLAND','MAE DO HARLAND','17816783752',64,'123456789','1998-02-27','2733025262'),(48,'Sancho','123432423','PAI DO CARA','MAE DO CARA','123432432',70,'1233484749','3620-07-28','2733025262');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacina`
--

DROP TABLE IF EXISTS `vacina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacina` (
  `idvacina` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `doses` int(11) NOT NULL,
  `intervalo` int(11) NOT NULL,
  `primeira_dose` int(11) NOT NULL,
  PRIMARY KEY (`idvacina`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacina`
--

LOCK TABLES `vacina` WRITE;
/*!40000 ALTER TABLE `vacina` DISABLE KEYS */;
INSERT INTO `vacina` VALUES (1,'SARAMPO',2,2,2),(7,'BGC',1,0,0),(8,'PENTA',3,2,2),(9,'Hepatite B ',2,1,0),(10,'VIP',3,2,2),(11,'Pneumo10',3,2,2);
/*!40000 ALTER TABLE `vacina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-13 15:20:22
