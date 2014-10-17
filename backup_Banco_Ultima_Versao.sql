CREATE DATABASE  IF NOT EXISTS `morarfora` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `morarfora`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: morarcom
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `bairros`
--

DROP TABLE IF EXISTS `bairros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairros` (
  `co_bairros` int(255) NOT NULL,
  `co_regionais` int(255) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  PRIMARY KEY (`co_bairros`),
  KEY `fk_Regionais_Bairros` (`co_regionais`),
  CONSTRAINT `fk_Regionais_Bairros` FOREIGN KEY (`co_regionais`) REFERENCES `regionais_bairro` (`co_regionais`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairros`
--

LOCK TABLES `bairros` WRITE;
/*!40000 ALTER TABLE `bairros` DISABLE KEYS */;
INSERT INTO `bairros` VALUES (11,1,'DIAMANTE'),(12,1,'ITAIPU'),(13,1,'ALTA TENSÃO SEGUNDA SEÇÃO'),(14,1,'TEIXEIRA DIAS'),(15,1,'BERNADETE'),(16,1,'CASTANHEIRA'),(17,1,'VILA CEMIG'),(18,1,'SÃO JOÃO'),(19,1,'BAIRRO DAS INDÚSTRIAS I'),(20,1,'BAIRRO NOVO DAS INDÚSTRIAS'),(21,1,'SANTA MARGARIDA'),(22,1,'BONSUCESSO'),(23,1,'ÁTILA DE PAIVA'),(24,1,'BRASIL INDUSTRIAL'),(25,1,'VILA PIRATININGA'),(26,1,'ESPERANÇA'),(27,1,'ARAGUAIA'),(28,1,'FLÁVIO MARQUES LISBOA'),(29,1,'OLARIA'),(30,1,'MARIETA SEGUNDA SEÇÃO'),(31,1,'SANTA CECÍLIA'),(32,1,'CDI JATOBÁ'),(33,1,'VILA NOVA DOS MILIONÁRIOS'),(34,1,'VILA TIROL'),(35,1,'SANTA HELENA'),(36,1,'LINDÉIA'),(37,1,'TIROL'),(38,1,'TÚNEL DE IBIRITÉ'),(39,1,'MINEIRÃO'),(40,1,'SERRA DO CURRAL'),(41,1,'VILA PILAR'),(42,1,'CARDOSO'),(43,1,'VILA PINHO'),(44,1,'VILA FORMOSA'),(45,1,'BARREIRO'),(46,1,'CONJUNTO BONSUCESSO'),(47,1,'JATOBÁ'),(48,1,'MARILÂNDIA'),(49,1,'VILA OLHOS D\'ÁGUA'),(50,1,'VILA COPASA'),(51,1,'FLÁVIO DE OLIVEIRA'),(52,1,'DISTRITO INDUSTRIAL DO JATOBÁ'),(53,1,'VILA BATIK'),(54,1,'CONJUNTO JATOBÁ'),(55,1,'NOVO SANTA CECÍLIA'),(56,1,'VILA MANGUEIRAS'),(57,1,'VALE DO JATOBÁ'),(58,1,'SOLAR DO BARREIRO'),(59,1,'SANTA RITA'),(60,1,'JARDIM DO VALE'),(61,1,'CORUMBIARA'),(62,1,'ERNESTO DO NASCIMENTO'),(63,1,'PONGELUPE'),(64,1,'VILA ECOLÓGICA'),(65,1,'ÁGUAS CLARAS'),(66,1,'MANGUEIRAS'),(67,1,'PETRÓPOLIS'),(68,1,'VITÓRIA DA CONQUISTA'),(69,1,'VILA PETRÓPOLIS'),(70,1,'INDEPENDÊNCIA'),(71,1,'VILA INDEPENDÊNCIA PRIMEIRA SEÇÃO'),(72,1,'VILA INDEPENDÊNCIA SEGUNDA SEÇÃO'),(73,1,'VILA INDEPENDÊNCIA TERCEIRA SEÇÃO'),(74,1,'MIRAMAR'),(75,1,'MARIETA PRIMEIRA SEÇÃO'),(76,1,'MILIONÁRIOS'),(77,1,'VILA ÁTILA DE PAIVA'),(78,1,'ADEMAR MALDONADO'),(79,1,'JOÃO PAULO II'),(80,1,'PILAR'),(81,1,'ALTA TENSÃO PRIMEIRA SEÇÃO'),(82,1,'ALTO DAS ANTENAS'),(83,1,'MARIETA TERCEIRA SEÇÃO'),(84,1,'OLHOS D\'ÁGUA'),(85,2,'NOSSA SENHORA DO ROSÁRIO'),(86,2,'SÃO LUCAS'),(87,2,'CENTRO'),(88,2,'SERRA'),(89,2,'SANTO ANTÔNIO'),(90,2,'BARRO PRETO'),(91,2,'SANTO AGOSTINHO'),(92,2,'FUNCIONÁRIOS'),(93,2,'CARMO'),(94,2,'BOA VIAGEM'),(95,2,'LOURDES'),(96,2,'SAVASSI'),(97,2,'CIDADE JARDIM'),(98,2,'COMITECO'),(99,2,'CRUZEIRO'),(100,2,'SÃO PEDRO'),(101,2,'ANCHIETA'),(102,2,'SION'),(103,2,'VILA PARIS'),(104,2,'LUXEMBURGO'),(105,2,'CORAÇÃO DE JESUS'),(106,2,'SÃO BENTO'),(107,2,'ACABA MUNDO'),(108,2,'ÁPIA'),(109,2,'CONJUNTO SANTA MARIA'),(110,2,'VILA BANDEIRANTES'),(111,2,'MONTE SÃO JOSÉ'),(112,2,'MALA E CUIA'),(113,2,'PINDURA SAIA'),(114,2,'VILA FUMEC'),(115,2,'SANTA ISABEL'),(116,2,'SANTA RITA DE CÁSSIA'),(117,2,'VILA BARRAGEM SANTA LÚCIA'),(118,2,'ESTRELA'),(119,2,'MARÇOLA'),(120,2,'NOSSA SENHORA DE FÁTIMA'),(121,2,'SANTANA DO CAFEZAL'),(122,2,'NOSSA SENHORA DA CONCEIÇÃO'),(123,2,'NOSSA SENHORA DA APARECIDA'),(124,2,'VILA NOVO SÃO LUCAS'),(125,2,'FAZENDINHA'),(126,2,'SANTA LÚCIA'),(127,2,'FLORESTA'),(128,2,'CARLOS PRATES'),(129,2,'NOVO SÃO LUCAS'),(130,2,'SANTA EFIGÊNIA'),(131,2,'MANGABEIRAS'),(132,2,'BELVEDERE'),(133,2,'BALEIA'),(134,3,'GRANJA DE FREITAS'),(135,3,'VILA VERA CRUZ PRIMEIRA SEÇÃO'),(136,3,'SANTA INÊS'),(137,3,'TAQUARIL'),(138,3,'NOVA VISTA'),(139,3,'ESPLANADA'),(140,3,'SÃO GERALDO'),(141,3,'SAGRADA FAMÍLIA'),(142,3,'CASA BRANCA'),(143,3,'HORTO'),(144,3,'PARAÍSO'),(145,3,'SANTA TEREZA'),(146,3,'SAUDADE'),(147,3,'POMPÉIA'),(148,3,'CIDADE JARDIM TAQUARIL'),(149,3,'PIRINEUS'),(150,3,'MARIANO DE ABREU'),(151,3,'VILA SÃO GERALDO'),(152,3,'CAMPONESA PRIMEIRA SEÇÃO'),(153,3,'VILA DIAS'),(154,3,'JONAS VEIGA'),(155,3,'ALTO VERA CRUZ'),(156,3,'SÃO VICENTE'),(157,3,'VILA UNIÃO'),(158,3,'JOÃO ALFREDO'),(159,3,'VILA NOSSA SENHORA DO ROSÁRIO'),(160,3,'VILA SÃO RAFAEL'),(161,3,'BELÉM'),(162,3,'VILA PARAÍSO'),(163,3,'CÔNEGO PINHEIRO PRIMEIRA SEÇÃO'),(164,3,'CÔNEGO PINHEIRO SEGUNDA SEÇÃO'),(165,3,'VILA VERA CRUZ SEGUNDA SEÇÃO'),(166,3,'CAETANO FURQUIM'),(167,3,'CONJUNTO TAQUARIL'),(168,3,'VILA BOA VISTA'),(169,3,'VILA DA ÁREA'),(170,3,'CAMPONESA SEGUNDA SEÇÃO'),(171,3,'GROTA'),(172,3,'BOA VISTA'),(173,3,'VERA CRUZ'),(174,3,'HORTO FLORESTAL'),(175,3,'BALEIA'),(176,3,'FLORESTA'),(177,3,'NOVO SÃO LUCAS'),(178,3,'COLÉGIO BATISTA'),(179,3,'SANTA EFIGÊNIA'),(180,3,'MANGABEIRAS'),(181,4,'PAULO VI'),(182,4,'CONJUNTO CAPITÃO EDUARDO'),(183,4,'GROTINHA'),(184,4,'JARDIM VITÓRIA'),(185,4,'ANTÔNIO RIBEIRO DE ABREU'),(186,4,'BELMONTE'),(187,4,'MIRTES'),(188,4,'ACAIACA'),(189,4,'BOA ESPERANÇA'),(190,4,'OURO MINAS'),(191,4,'VITÓRIA'),(192,4,'GUANABARA'),(193,4,'VISTA DO SOL'),(194,4,'VILA MARIA'),(195,4,'DOM SILVÉRIO'),(196,4,'SÃO PAULO'),(197,4,'SÃO MARCOS'),(198,4,'NAZARÉ'),(199,4,'CONJUNTO PAULO VI'),(200,4,'VILA SÃO DIMAS'),(201,4,'VILA NOVA CACHOEIRINHA TERCEIRA SEÇÃO'),(202,4,'RENASCENÇA'),(203,4,'CIDADE NOVA'),(204,4,'TRÊS MARIAS'),(205,4,'GOIÂNIA'),(206,4,'VILA ESPLANADA'),(207,4,'FERNÃO DIAS'),(208,4,'VILA SÃO GABRIEL JACUÍ'),(209,4,'POUSADA SANTO ANTÔNIO'),(210,4,'EYMARD'),(211,4,'MARIA GORETTI'),(212,4,'PALMARES'),(213,4,'SÃO BENEDITO'),(214,4,'SÃO SEBASTIÃO'),(215,4,'DOM JOAQUIM'),(216,4,'SANTA CRUZ'),(217,4,'MARIA VIRGÍNIA'),(218,4,'BELA VITÓRIA'),(219,4,'IPIRANGA'),(220,4,'VILA DA PAZ'),(221,4,'UNIÃO'),(222,4,'PENHA'),(223,4,'VILA INESTAN'),(224,4,'MORRO DOS MACACOS'),(225,4,'CACHOEIRINHA'),(226,4,'VILA DE SÁ'),(227,4,'VILA IPIRANGA'),(228,4,'IPÊ'),(229,4,'PIRAJÁ'),(230,4,'VILA SÃO PAULO'),(231,4,'CONCÓRDIA'),(232,4,'VILA DO POMBAL'),(233,4,'GRAÇA'),(234,4,'CANADÁ'),(235,4,'SILVEIRA'),(236,4,'NOVA FLORESTA'),(237,4,'TIRADENTES'),(238,4,'BEIRA-LINHA'),(239,4,'VILA DA LUZ'),(240,4,'VILA OURO MINAS'),(241,4,'VILA SÃO GABRIEL'),(242,4,'ANDIROBA'),(243,4,'BEIJA FLOR'),(244,4,'RIBEIRO DE ABREU'),(245,4,'SÃO CRISTÓVÃO'),(246,4,'SÃO GABRIEL'),(247,4,'COLÉGIO BATISTA'),(248,4,'CAPITÃO EDUARDO'),(249,4,'LAGOINHA'),(250,4,'ERMELINDA'),(251,4,'SUMARÉ'),(252,4,'CAIÇARAS'),(253,4,'VILA MALOCA'),(254,4,'VILA NOVA CACHOEIRINHA PRIMEIRA SEÇÃO'),(255,4,'VILA SUMARÉ'),(256,4,'GLÓRIA'),(257,4,'COQUEIROS'),(258,4,'SANTO ANDRÉ'),(259,4,'SÃO SALVADOR'),(260,4,'VILA NOVA CACHOEIRINHA SEGUNDA SEÇÃO'),(261,4,'VILA COQUEIRAL'),(262,4,'LORENA'),(263,4,'NOVO GLÓRIA'),(264,4,'PINDORAMA'),(265,4,'APARECIDA, SÉTIMA SEÇÃO'),(266,4,'NOVA ESPERANÇA'),(267,4,'BONFIM'),(268,4,'CALIFÓRNIA'),(269,4,'CORAÇÃO EUCARÍSTICO'),(270,4,'VILA PUC'),(271,4,'CONJUNTO CALIFÓRNIA I'),(272,4,'MARMITEIROS'),(273,4,'VILA TRINTA E UM DE MARÇO'),(274,4,'CAIÇARA-ADELAIDE'),(275,4,'SENHOR DOS PASSOS'),(276,4,'ALTO CAIÇARAS'),(277,4,'ÁLVARO CAMARGOS'),(278,4,'DOM BOSCO'),(279,4,'SÃO FRANCISCO DAS CHAGAS'),(280,4,'MONSENHOR MESSIAS'),(281,4,'DOM CABRAL'),(282,4,'CONJUNTO CALIFÓRNIA II'),(283,4,'BOM JESUS'),(284,4,'PADRE EUSTÁQUIO'),(285,4,'JARDIM MONTANHÊS'),(286,4,'VILA DAS OLIVEIRAS'),(287,4,'CONJUNTO NOVO DOM BOSCO'),(288,4,'MINAS BRASIL'),(289,4,'VILA CALIFÓRNIA'),(290,4,'CONJUNTO JARDIM FILADÉLFIA'),(291,4,'ALTO DOS PINHEIROS'),(292,4,'JOÃO PINHEIRO'),(293,4,'DELTA'),(294,4,'PEDREIRA PRADO LOPES'),(295,4,'APARECIDA'),(296,4,'NOVA CACHOEIRINHA'),(297,4,'OESTE'),(298,4,'CARLOS PRATES'),(299,4,'SÃO CRISTÓVÃO'),(300,4,'INCONFIDÊNCIA'),(301,4,'LAGOINHA'),(302,5,'ETELVINA CARNEIRO'),(303,5,'FREI LEOPOLDO'),(304,5,'ZILAH SPÓSITO'),(305,5,'VILA NOVA'),(306,5,'GRANJA WERNECK'),(307,5,'JULIANA'),(308,5,'TUPI B'),(309,5,'MARIQUINHAS'),(310,5,'MADRI'),(311,5,'MONTE AZUL'),(312,5,'MARIA TERESA'),(313,5,'XODÓ-MARIZE'),(314,5,'SOLIMÕES'),(315,5,'PLANALTO'),(316,5,'BACURAU'),(317,5,'SATÉLITE'),(318,5,'NOVO TUPI'),(319,5,'FLORAMAR'),(320,5,'TUPI A'),(321,5,'BIQUINHAS'),(322,5,'SÃO TOMÁZ'),(323,5,'MIRANTE'),(324,5,'GUARANI'),(325,5,'CAMPO ALEGRE'),(326,5,'LAJEDO'),(327,5,'PROVIDÊNCIA'),(328,5,'SÃO GONÇALO'),(329,5,'CONJUNTO PROVIDÊNCIA'),(330,5,'VILA AEROPORTO'),(331,5,'MINASLÂNDIA'),(332,5,'AARÃO REIS'),(333,5,'HELIÓPOLIS'),(334,5,'NOVO AARÃO REIS'),(335,5,'SÃO BERNARDO'),(336,5,'BOA UNIÃO SEGUNDA SEÇÃO'),(337,5,'VILA PRIMEIRO DE MAIO'),(338,5,'VILA MINASLÂNDIA'),(339,5,'BOA UNIÃO PRIMEIRA SEÇÃO'),(340,5,'PRIMEIRO DE MAIO'),(341,5,'JARDIM GUANABARA'),(342,5,'JARDIM FELICIDADE'),(343,5,'CONJUNTO FLORAMAR'),(344,5,'CAPITÃO EDUARDO'),(345,5,'SUZANA'),(346,5,'VILA CLÓRIS'),(347,5,'JAQUELINE'),(348,5,'OURO MINAS'),(349,5,'RIBEIRO DE ABREU'),(350,5,'SÃO GABRIEL'),(351,6,'SÃO JORGE TERCEIRA SEÇÃO'),(352,6,'JARDIM AMERICA'),(353,6,'AMBROSINA'),(354,6,'GAMELEIRA'),(355,6,'NOVA SUISSA'),(356,6,'BARÃO HOMEM DE MELO SEGUNDA SEÇÃO'),(357,6,'CABANA DO PAI TOMÁS'),(358,6,'VILA NOVA GAMELEIRA SEGUNDA SEÇÃO'),(359,6,'MADRE GERTRUDES'),(360,6,'PRADO'),(361,6,'GRAJAÚ'),(362,6,'VILA NOVA GAMELEIRA TERCEIRA SEÇÃO'),(363,6,'MARAVILHA'),(364,6,'SANTA MARIA'),(365,6,'CAMARGOS'),(366,6,'VILA OESTE'),(367,6,'NOVA GAMELEIRA'),(368,6,'VISTA ALEGRE'),(369,6,'CALAFATE'),(370,6,'VILA CALAFATE'),(371,6,'NOVA GRANADA'),(372,6,'VIRGÍNIA'),(373,6,'SPORT CLUB'),(374,6,'LEONINA'),(375,6,'GUTIERREZ'),(376,6,'ALTO BARROCA'),(377,6,'BARROCA'),(378,6,'GUARATÃ'),(379,6,'VENTOSA'),(380,6,'VILA MADRE GERTRUDES TERCEIRA SEÇÃO'),(381,6,'SANTA SOFIA'),(382,6,'CUSTODINHA'),(383,6,'VILA NOVA GAMELEIRA PRIMEIRA SEÇÃO'),(384,6,'SÃO JORGE PRIMEIRA SEÇÃO'),(385,6,'BARÃO HOMEM DE MELO TERCEIRA SEÇÃO'),(386,6,'BURITIS'),(387,6,'PANTANAL'),(388,6,'BAIRRO DAS INDÚSTRIAS II'),(389,6,'MARAJÓ'),(390,6,'VILA VISTA ALEGRE'),(391,6,'ALPES'),(392,6,'VILA MADRE GERTRUDES QUARTA SEÇÃO'),(393,6,'ESTORIL'),(394,6,'CHÁCARA LEONINA'),(395,6,'BETÂNIA'),(396,6,'HAVAÍ'),(397,6,'CINQÜENTENÁRIO'),(398,6,'VILA MADRE GERTRUDES SEGUNDA SEÇÃO'),(399,6,'NOVA CINTRA'),(400,6,'PARQUE SÃO JOSÉ'),(401,6,'VILA HAVAÍ'),(402,6,'ESTRELA DO ORIENTE'),(403,6,'PALMEIRAS'),(404,6,'IMBAÚBAS'),(405,6,'VILA MADRE GERTRUDES PRIMEIRA SEÇÃO'),(406,6,'VILA ANTENA'),(407,6,'BARÃO HOMEM DE MELO PRIMEIRA SEÇÃO'),(408,6,'VILA NOVA PARAÍSO'),(409,6,'VILA BETÂNIA'),(410,6,'SÃO JORGE SEGUNDA SEÇÃO'),(411,6,'VILA DA AMIZADE'),(412,6,'JARDINÓPOLIS'),(413,6,'SALGADO FILHO'),(414,6,'OLHOS D\'ÁGUA'),(415,6,'OESTE'),(416,6,'SANTA LÚCIA'),(417,6,'BELVEDERE'),(418,7,'GARÇAS'),(419,7,'TREVO'),(420,7,'BISPO DE MAURA'),(421,7,'SANTA BRANCA'),(422,7,'XANGRI-LÁ'),(423,7,'ITAPOÃ'),(424,7,'NOVA PAMPULHA'),(425,7,'SANTA AMÉLIA'),(426,7,'CONJUNTO SÃO FRANCISCO DE ASSIS'),(427,7,'CAMPUS UFMG'),(428,7,'SÃO JOSÉ'),(429,7,'VILA SUZANA PRIMEIRA SEÇÃO'),(430,7,'JARAGUÁ'),(431,7,'OURO PRETO'),(432,7,'SANTA TEREZINHA'),(433,7,'URCA'),(434,7,'UNIDAS'),(435,7,'SANTA ROSA'),(436,7,'NOVO OURO PRETO'),(437,7,'VILA RICA'),(438,7,'DONA CLARA'),(439,7,'VILA AEROPORTO JARAGUÁ'),(440,7,'CONFISCO'),(441,7,'LIBERDADE'),(442,7,'SÃO FRANCISCO'),(443,7,'CONJUNTO LAGOA'),(444,7,'VILA SANTA ROSA'),(445,7,'CASTELO'),(446,7,'VILA ENGENHO NOGUEIRA'),(447,7,'VILA REAL PRIMEIRA SEÇÃO'),(448,7,'VILA SÃO FRANCISCO'),(449,7,'VILA JARDIM ALVORADA'),(450,7,'VILA REAL SEGUNDA SEÇÃO'),(451,7,'CONJUNTO CELSO MACHADO'),(452,7,'UNIVERSITÁRIO'),(453,7,'VILA SANTO ANTÔNIO'),(454,7,'VILA PAQUETÁ'),(455,7,'VILA SUZANA SEGUNDA SEÇÃO'),(456,7,'ITATIAIA'),(457,7,'PAQUETÁ'),(458,7,'VILA JARDIM MONTANHÊS'),(459,7,'ENGENHO NOGUEIRA'),(460,7,'VILA SANTO ANTÔNIO BARROQUINHA'),(461,7,'INDAIÁ'),(462,7,'BANDEIRANTES'),(463,7,'SERRANO'),(464,7,'BRAÚNAS'),(465,7,'JARDIM ATLÂNTICO'),(466,7,'MANACÁS'),(467,7,'JARDIM SÃO JOSÉ'),(468,7,'JARDIM ALVORADA'),(469,7,'ALÍPIO DE MELO'),(470,7,'VILA ANTENA MONTANHÊS'),(471,7,'LAGOA DA PAMPULHA'),(472,7,'VILA JARDIM SÃO JOSÉ'),(473,7,'SÃO LUÍZ'),(474,7,'AEROPORTO'),(475,7,'INCONFIDÊNCIA'),(476,7,'SUZANA'),(477,7,'CÉU AZUL'),(478,7,'SANTA MÔNICA'),(479,7,'UNIVERSO'),(480,7,'COPACABANA'),(481,8,'NOVA AMÉRICA'),(482,8,'EUROPA'),(483,8,'VILA SESC'),(484,8,'MARIA HELENA'),(485,8,'CANAÃ'),(486,8,'VILA MANTIQUEIRA'),(487,8,'CANDELÁRIA'),(488,8,'LARANJEIRAS'),(489,8,'CONJUNTO MINASCAIXA'),(490,8,'LETÍCIA'),(491,8,'PIRATININGA'),(492,8,'LAGOINHA LEBLON'),(493,8,'CENÁCULO'),(494,8,'MINASCAIXA'),(495,8,'SÃO DAMIÃO'),(496,8,'SERRA VERDE'),(497,8,'MANTIQUEIRA'),(498,8,'JARDIM DOS COMERCIÁRIOS'),(499,8,'VILA PIRATININGA VENDA NOVA'),(500,8,'RIO BRANCO'),(501,8,'VILA SANTA MÔNICA PRIMEIRA SEÇÃO'),(502,8,'APOLÔNIA'),(503,8,'PARQUE SÃO PEDRO'),(504,8,'SÃO JOÃO BATISTA'),(505,8,'VILA SATÉLITE'),(506,8,'JARDIM LEBLON'),(507,8,'VILA DOS ANJOS'),(508,8,'VILA SÃO JOÃO BATISTA'),(509,8,'VÁRZEA DA PALMA'),(510,8,'CONJUNTO SERRA VERDE'),(511,8,'NOSSA SENHORA APARECIDA'),(512,8,'FLAMENGO'),(513,8,'LAGOA'),(514,8,'VENDA NOVA'),(515,8,'VILA COPACABANA'),(516,8,'VILA JARDIM LEBLON'),(517,8,'VILA SANTA MÔNICA SEGUNDA SEÇÃO'),(518,8,'VILA CANTO DO SABIÁ'),(519,8,'VILA CLÓRIS'),(520,8,'SANTA MÔNICA'),(521,8,'CÉU AZUL'),(522,8,'JAQUELINE'),(523,8,'UNIVERSO'),(524,8,'COPACABANA');
/*!40000 ALTER TABLE `bairros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidaturas`
--

DROP TABLE IF EXISTS `candidaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidaturas` (
  `co_candidatura` int(255) NOT NULL,
  `co_usuario` int(255) NOT NULL,
  `co_vagas` int(255) NOT NULL,
  `data_registro` date DEFAULT NULL,
  `data_atualizacao` date DEFAULT NULL,
  `data_cancelamento` date DEFAULT NULL,
  PRIMARY KEY (`co_candidatura`),
  KEY `fk_Candidaturas_pessoa1_idx` (`co_usuario`),
  KEY `fk_Candidaturas_Vagas1_idx` (`co_vagas`),
  CONSTRAINT `fk_Candidaturas_pessoa1` FOREIGN KEY (`co_usuario`) REFERENCES `pessoa` (`co_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Candidaturas_Vagas1` FOREIGN KEY (`co_vagas`) REFERENCES `vagas` (`co_vagas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidaturas`
--

LOCK TABLES `candidaturas` WRITE;
/*!40000 ALTER TABLE `candidaturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faixa_preco`
--

DROP TABLE IF EXISTS `faixa_preco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faixa_preco` (
  `co_faixa_preco` int(255) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `max_Valor` decimal(10,0) NOT NULL,
  `min_Valor` decimal(10,0) NOT NULL,
  PRIMARY KEY (`co_faixa_preco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faixa_preco`
--

LOCK TABLES `faixa_preco` WRITE;
/*!40000 ALTER TABLE `faixa_preco` DISABLE KEYS */;
INSERT INTO `faixa_preco` VALUES (1,'R$200 - R$400',400,200),(2,'R$400 - R$600',600,400),(3,'R$600 - R$800',800,600),(4,'Acima de R$800',9999999,801);
/*!40000 ALTER TABLE `faixa_preco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imovel`
--

DROP TABLE IF EXISTS `imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imovel` (
  `co_imovel` int(255) NOT NULL,
  `co_usuario` int(255) NOT NULL,
  `tipo_imovel_id` int(255) NOT NULL,
  `Valor_Aluguel` decimal(10,0) NOT NULL,
  PRIMARY KEY (`co_imovel`),
  KEY `fk_Imovel_Tipo_Imovel1_idx` (`tipo_imovel_id`),
  KEY `fk_imovel_pessoa1_idx` (`co_usuario`),
  CONSTRAINT `fk_imovel_pessoa1` FOREIGN KEY (`co_usuario`) REFERENCES `pessoa` (`co_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Imovel_Tipo_Imovel1` FOREIGN KEY (`tipo_imovel_id`) REFERENCES `tipo_imovel` (`tipo_imovel_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imovel`
--

LOCK TABLES `imovel` WRITE;
/*!40000 ALTER TABLE `imovel` DISABLE KEYS */;
INSERT INTO `imovel` VALUES (1,0,1,600),(2,0,2,300),(3,0,3,200),(4,0,4,100),(5,0,5,300),(6,0,6,500),(7,0,7,300),(8,0,8,250),(9,0,2,460),(10,0,6,550);
/*!40000 ALTER TABLE `imovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imovel_perfil`
--

DROP TABLE IF EXISTS `imovel_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imovel_perfil` (
  `co_imovel` int(255) NOT NULL,
  `co_perfil` int(255) NOT NULL,
  `data_criacao` date DEFAULT NULL,
  `data_atualizacao` date DEFAULT NULL,
  `data_cancelamento` date DEFAULT NULL,
  PRIMARY KEY (`co_imovel`,`co_perfil`),
  KEY `fk_imovel_has_perfil_perfil1_idx` (`co_perfil`),
  KEY `fk_imovel_has_perfil_imovel1_idx` (`co_imovel`),
  CONSTRAINT `fk_imovel_has_perfil_imovel1` FOREIGN KEY (`co_imovel`) REFERENCES `imovel` (`co_imovel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_imovel_has_perfil_perfil1` FOREIGN KEY (`co_perfil`) REFERENCES `perfil` (`co_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imovel_perfil`
--

LOCK TABLES `imovel_perfil` WRITE;
/*!40000 ALTER TABLE `imovel_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `imovel_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `co_perfil` int(255) NOT NULL AUTO_INCREMENT,
  `co_bairros` int(255) NOT NULL,
  `co_tipo_moradia` int(255) NOT NULL,
  `co_tipos_quartos` int(255) NOT NULL,
  `co_perfil_pisicologico` int(255) NOT NULL,
  `co_faixa_preco` int(255) NOT NULL,
  `fumante` char(1) DEFAULT NULL,
  `animal` char(1) DEFAULT NULL,
  `mobiliado` char(1) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `data_Criacao` date DEFAULT NULL,
  `data_atualizacao` date DEFAULT NULL,
  `data_cancelamento` date DEFAULT NULL,
  PRIMARY KEY (`co_perfil`),
  KEY `fk_perfil_faixa_preco1_idx` (`co_faixa_preco`),
  KEY `fk_perfil_tipo_moradia1_idx` (`co_tipo_moradia`),
  KEY `fk_perfil_tipos_quartos1_idx` (`co_tipos_quartos`),
  KEY `fk_perfil_perfil_pisicologico1_idx` (`co_perfil_pisicologico`),
  KEY `fk_perfil_bairros1_idx` (`co_bairros`),
  CONSTRAINT `fk_perfil_bairros1` FOREIGN KEY (`co_bairros`) REFERENCES `bairros` (`co_bairros`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_perfil_faixa_preco1` FOREIGN KEY (`co_faixa_preco`) REFERENCES `faixa_preco` (`co_faixa_preco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_perfil_perfil_pisicologico1` FOREIGN KEY (`co_perfil_pisicologico`) REFERENCES `perfil_pisicologico` (`co_perfil_pisicologico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_perfil_tipos_quartos1` FOREIGN KEY (`co_tipos_quartos`) REFERENCES `tipos_quartos` (`co_tipos_quartos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_perfil_tipo_moradia1` FOREIGN KEY (`co_tipo_moradia`) REFERENCES `tipo_moradia` (`co_tipo_moradia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,11,1,1,1,1,'N','S','S',NULL,NULL,NULL,NULL,NULL),(2,11,1,1,1,1,'N','N','N',NULL,NULL,NULL,NULL,NULL),(3,11,1,1,1,1,'N','N','N',NULL,NULL,NULL,NULL,NULL),(4,11,1,1,1,1,'N','N','N',NULL,NULL,NULL,NULL,NULL),(5,11,1,1,1,1,'N','N','N',NULL,NULL,NULL,NULL,NULL),(6,11,1,1,1,1,'N','N','N',NULL,NULL,NULL,NULL,NULL),(7,11,1,1,1,1,'N','N','N',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_pisicologico`
--

DROP TABLE IF EXISTS `perfil_pisicologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_pisicologico` (
  `co_perfil_pisicologico` int(255) NOT NULL,
  `Descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`co_perfil_pisicologico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_pisicologico`
--

LOCK TABLES `perfil_pisicologico` WRITE;
/*!40000 ALTER TABLE `perfil_pisicologico` DISABLE KEYS */;
INSERT INTO `perfil_pisicologico` VALUES (1,'Racionais'),(2,'Guardiões'),(3,'Artesãos'),(4,'Idealista');
/*!40000 ALTER TABLE `perfil_pisicologico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `co_usuario` int(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `data_atualizacao` date DEFAULT NULL,
  `data_Criacao` date DEFAULT NULL,
  `data_Cancelamento` date DEFAULT NULL,
  `data_Nascimento` date DEFAULT NULL,
  PRIMARY KEY (`co_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'jose Vicente','morbios@gmail.com','827ccb0eea8a706c4c34a16891f84e7b','(31) 8775-1169','M',NULL,'2014-09-23',NULL,'1985-07-29');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_perfil`
--

DROP TABLE IF EXISTS `pessoa_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa_perfil` (
  `co_usuario` int(255) NOT NULL,
  `co_perfil` int(255) NOT NULL,
  `data_criacao` date DEFAULT NULL,
  `data_atualizacao` date DEFAULT NULL,
  `data_cancelamento` date DEFAULT NULL,
  PRIMARY KEY (`co_usuario`,`co_perfil`),
  KEY `fk_pessoa_has_perfil_perfil1_idx` (`co_perfil`),
  KEY `fk_pessoa_has_perfil_pessoa1_idx` (`co_usuario`),
  CONSTRAINT `fk_pessoa_has_perfil_perfil1` FOREIGN KEY (`co_perfil`) REFERENCES `perfil` (`co_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoa_has_perfil_pessoa1` FOREIGN KEY (`co_usuario`) REFERENCES `pessoa` (`co_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_perfil`
--

LOCK TABLES `pessoa_perfil` WRITE;
/*!40000 ALTER TABLE `pessoa_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoa_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regionais_bairro`
--

DROP TABLE IF EXISTS `regionais_bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regionais_bairro` (
  `co_regionais` int(255) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  PRIMARY KEY (`co_regionais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regionais_bairro`
--

LOCK TABLES `regionais_bairro` WRITE;
/*!40000 ALTER TABLE `regionais_bairro` DISABLE KEYS */;
INSERT INTO `regionais_bairro` VALUES (1,'BARREIRO'),(2,'CENTRO SUL'),(3,'LESTE'),(4,'NORDESTE'),(5,'NORTE'),(6,'OESTE'),(7,'PAMPULHA'),(8,'VENDA NOVA');
/*!40000 ALTER TABLE `regionais_bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_imovel`
--

DROP TABLE IF EXISTS `tipo_imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_imovel` (
  `tipo_imovel_id` int(255) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  PRIMARY KEY (`tipo_imovel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_imovel`
--

LOCK TABLES `tipo_imovel` WRITE;
/*!40000 ALTER TABLE `tipo_imovel` DISABLE KEYS */;
INSERT INTO `tipo_imovel` VALUES (1,'Apartamento'),(2,'Casa'),(3,'Pensão'),(4,'República'),(5,'Kitnet'),(6,'Ap.Cobertura'),(7,'Pensão'),(8,'Barracão');
/*!40000 ALTER TABLE `tipo_imovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_moradia`
--

DROP TABLE IF EXISTS `tipo_moradia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_moradia` (
  `co_tipo_moradia` int(255) NOT NULL COMMENT 'Masculina, Feminina, Misata',
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`co_tipo_moradia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_moradia`
--

LOCK TABLES `tipo_moradia` WRITE;
/*!40000 ALTER TABLE `tipo_moradia` DISABLE KEYS */;
INSERT INTO `tipo_moradia` VALUES (1,'Masculino'),(2,'Feminino'),(3,'Misto');
/*!40000 ALTER TABLE `tipo_moradia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_quartos`
--

DROP TABLE IF EXISTS `tipos_quartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_quartos` (
  `co_tipos_quartos` int(255) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`co_tipos_quartos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_quartos`
--

LOCK TABLES `tipos_quartos` WRITE;
/*!40000 ALTER TABLE `tipos_quartos` DISABLE KEYS */;
INSERT INTO `tipos_quartos` VALUES (1,'Suite'),(2,'Quarto individual'),(3,'Comp. 2 pessoas'),(4,'Comp.3 pessoas ou mais'),(5,'Suíte individual');
/*!40000 ALTER TABLE `tipos_quartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vagas`
--

DROP TABLE IF EXISTS `vagas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vagas` (
  `co_vagas` int(255) NOT NULL AUTO_INCREMENT,
  `co_Imovel` int(255) NOT NULL,
  `ide_vaga` char(2) NOT NULL,
  `data_registro` date DEFAULT NULL,
  `data_atualizacao` date DEFAULT NULL,
  `data_cancelamento` date DEFAULT NULL,
  PRIMARY KEY (`co_vagas`),
  KEY `fk_Vagas_imovel1_idx` (`co_Imovel`),
  CONSTRAINT `fk_Vagas_imovel1` FOREIGN KEY (`co_Imovel`) REFERENCES `imovel` (`co_imovel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagas`
--

LOCK TABLES `vagas` WRITE;
/*!40000 ALTER TABLE `vagas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vagas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-04 19:27:02
