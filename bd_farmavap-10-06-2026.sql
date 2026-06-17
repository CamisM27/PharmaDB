-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: farmavap
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `bairros`
--

DROP TABLE IF EXISTS `bairros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairros` (
  `id_bairro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `regiao` varchar(50) NOT NULL,
  `id_cidade` int(11) NOT NULL,
  PRIMARY KEY (`id_bairro`),
  KEY `fk_BAIRRO_CIDADE1_idx` (`id_cidade`),
  CONSTRAINT `fk_BAIRRO_CIDADE1` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairros`
--

LOCK TABLES `bairros` WRITE;
/*!40000 ALTER TABLE `bairros` DISABLE KEYS */;
INSERT INTO `bairros` VALUES (1,'Vila Industrial','Centro',3),(2,'Moema','Sul',8),(3,'Pinheiros','Oeste',1),(4,'Vila Mariana','Sul',1),(5,'Tatuapé','Leste',1),(6,'Santana','Centro',3),(7,'Ipiranga','Sul',1),(8,'Butantã','Oeste',1),(9,'Morumbi','Centro',3),(10,'Jardim das Indústrias','Sul',3),(11,'Copacabana','Sul',21),(12,'Ipanema','Sul',21),(13,'Leblon','Sul',21),(14,'Tijuca','Norte',21),(15,'Botafogo','Sul',21),(16,'Flamengo','Sul',21),(17,'Barra da Tijuca','Oeste',21),(18,'Laranjeiras','Sul',21),(19,'Méier','Norte',21),(20,'Recreio dos Bandeirantes','Oeste',21),(21,'Savassi','Centro-Sul',31),(22,'Jardim Satélite','Sul',3),(23,'Lourdes','Centro-Sul',31),(24,'Buritis','Oeste',31),(25,'Pampulha','Norte',31),(26,'Santa Efigênia','Leste',31),(27,'Sion','Centro-Sul',31),(28,'Serra','Centro-Sul',31),(29,'Gutierrez','Oeste',8),(30,'Cidade Nova','Nordeste',31),(31,'Vila Industrial','Central',3),(32,'Água Verde','Sul',41),(33,'Cabral','Norte',41),(34,'Boqueirão','Sudeste',41),(35,'Portão','Sul',41),(36,'Santa Felicidade','Oeste',41),(37,'Mercês','Central',41),(38,'Cajuru','Leste',41),(39,'Uberaba','Leste',41),(40,'Vila Adyana','Sul',41),(41,'Trindade','Centro',51),(42,'Agronômica','Central',51),(43,'Coqueiros','Continente',51),(44,'Estreito','Continente',51),(45,'Ingleses','Norte',8),(46,'Pedregulho','Sul',51),(47,'Jurerê','Norte',51),(48,'Itacorubi','Leste',8),(49,'Saco Grande','Norte',51),(50,'Abraão','Continente',51),(51,'Moinhos de Vento','Centro',61),(52,'Menino Deus','Sul',2),(53,'Petrópolis','Leste',61),(54,'Cidade Baixa','Centro',61),(55,'Bom Fim','Centro',2),(56,'Partenon','Leste',61),(57,'Cristal','Sul',61),(58,'Azenha','Centro',2),(59,'Floresta','Norte',61),(60,'Sarandi','Norte',2),(61,'Pituba','Leste',71),(62,'Barra','Sul',71),(63,'Rio Vermelho','Leste',71),(64,'Graça','Sul',8),(65,'Ondina','Sul',71),(66,'Amaralina','Leste',71),(67,'Brotas','Centro',71),(68,'Federação','Centro',71),(69,'Cabula','Centro',71),(70,'Itapuã','Leste',71),(71,'Boa Viagem','Sul',81),(72,'Pina','Sul',81),(73,'Casa Forte','Norte',81),(74,'Graças','Centro',81),(75,'Espinheiro','Centro',81),(76,'Madalena','Oeste',81),(77,'Tamarineira','Norte',81),(78,'Derby','Centro',81),(79,'Afogados','Sul',81),(80,'Imbiribeira','Sul',81),(81,'Aldeota','Leste',4),(82,'Meireles','Leste',91),(83,'Papicu','Leste',91),(84,'Varjota','Leste',91),(85,'Mucuripe','Leste',91),(86,'Montese','Centro',4),(87,'Benfica','Centro',91),(88,'Parangaba','Sul',91),(89,'Messejana','Sul',91),(90,'Cocó','Leste',91),(91,'Asa Sul','Sul',4),(92,'Asa Norte','Norte',7),(93,'Lago Sul','Sul',7),(94,'Lago Norte','Norte',4),(95,'Taguatinga Centro','Oeste',7),(96,'Ceilândia Norte','Oeste',7),(97,'Samambaia Sul','Oeste',7),(98,'Gama Oeste','Sul',7),(99,'Sobradinho II','Norte',4),(100,'Guará I','Centro',7);
/*!40000 ALTER TABLE `bairros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `id_cargos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `id_setor` int(11) NOT NULL,
  PRIMARY KEY (`id_cargos`),
  KEY `fk_CARGOS_SETORES1_idx` (`id_setor`),
  CONSTRAINT `fk_CARGOS_SETORES1` FOREIGN KEY (`id_setor`) REFERENCES `setores` (`id_setor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Estagiário de TI',1),(2,'Atendente',2),(3,'Farmacêutico',3),(4,'Auxiliar Administrativo',4),(5,'Gerente',5),(6,'Operador de Caixa',6),(7,'Estoquista',7),(8,'Assistente de Compras',8),(9,'Analista Financeiro',9),(10,'Supervisor',10),(11,'Auxiliar de Limpeza',11),(12,'Repositor',12),(13,'Conferente',14),(14,'Auxiliar de RH',13),(15,'Analista de Sistemas',1),(16,'Coordenador de Loja',10),(17,'Fiscal de Caixa',6),(18,'Farmacêutico Responsável',3),(19,'Técnico em Informática',1),(20,'Motorista',14),(21,'Auxiliar de Expedição',16),(22,'Assistente Financeiro',9),(23,'Analista de Compras',8),(24,'Balconista',2),(25,'Auxiliar de Estoque',7),(26,'Coordenador de TI',1),(27,'Auxiliar Fiscal',15),(28,'Assistente Comercial',18),(29,'Consultor de Vendas',18),(30,'Recepcionista',2),(31,'Jovem Aprendiz',4),(32,'Treinador Corporativo',21),(33,'Auditor Interno',19),(34,'Assistente Contábil',17),(35,'Analista de Dados',1);
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome_tipos` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Medicamentos'),(2,'Higiene Bucal'),(3,'Higiene Pessoal'),(4,'Higiene Íntima'),(5,'Dermocosméticos'),(6,'Cosméticos'),(7,'Perfumaria'),(8,'Cuidados com a Pele'),(9,'Cuidados Capilares'),(10,'Proteção Solar'),(11,'Vitaminas e Minerais'),(12,'Suplementos Alimentares'),(13,'Nutrição Especial'),(14,'Fitoterápicos'),(15,'Homeopáticos'),(16,'Primeiros Socorros'),(17,'Curativos'),(18,'Equipamentos Médicos'),(19,'Controle de Diabetes'),(20,'Saúde Cardiovascular'),(21,'Saúde Respiratória'),(22,'Oftalmológicos'),(23,'Ortopédicos'),(24,'Infantil e Bebê'),(25,'Gestante e Maternidade'),(26,'Saúde Feminina'),(27,'Saúde Masculina'),(28,'Produtos Naturais'),(29,'Veterinários');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidades` (
  `id_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `id_estado` int(11) NOT NULL,
  PRIMARY KEY (`id_cidade`),
  KEY `fk_CIDADE_ESTADO_idx` (`id_estado`),
  CONSTRAINT `fk_CIDADE_ESTADO` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'São Paulo',25),(2,'Caçapava',25),(3,'São José dos Campos',25),(4,'Taubaté',25),(5,'Sorocaba',25),(6,'Ribeirão Preto',25),(7,'Bauru',25),(8,'Jacareí',25),(9,'Jundiaí',25),(10,'Piracicaba',25),(11,'Guarulhos',25),(12,'Osasco',25),(13,'Mogi das Cruzes',25),(14,'Barueri',25),(15,'Americana',25),(16,'Araraquara',25),(17,'Botucatu',25),(18,'Limeira',25),(19,'Jacareí',25),(20,'Praia Grande',25),(21,'Rio de Janeiro',19),(22,'Niterói',19),(23,'Petrópolis',19),(24,'Volta Redonda',19),(25,'Nova Iguaçu',19),(26,'Duque de Caxias',19),(27,'Campos dos Goytacazes',19),(28,'Macaé',19),(29,'Angra dos Reis',19),(30,'Cabo Frio',19),(31,'Belo Horizonte',13),(32,'Uberlândia',13),(33,'Uberaba',13),(34,'Contagem',13),(35,'Betim',13),(36,'Juiz de Fora',13),(37,'Montes Claros',13),(38,'Poços de Caldas',13),(39,'Varginha',13),(40,'Ipatinga',13),(41,'Curitiba',16),(42,'Londrina',16),(43,'Maringá',16),(44,'Ponta Grossa',16),(45,'Cascavel',16),(46,'Foz do Iguaçu',16),(47,'Guarapuava',16),(48,'Paranaguá',16),(49,'Toledo',16),(50,'Arapongas',16),(51,'Florianópolis',24),(52,'Joinville',24),(53,'Blumenau',24),(54,'Chapecó',24),(55,'Itajaí',24),(56,'Balneário Camboriú',24),(57,'Jaraguá do Sul',24),(58,'Criciúma',24),(59,'Lages',24),(60,'Brusque',24),(61,'Porto Alegre',21),(62,'Caxias do Sul',21),(63,'Pelotas',21),(64,'Santa Maria',21),(65,'Passo Fundo',21),(66,'Novo Hamburgo',21),(67,'Gravataí',21),(68,'Canoas',21),(69,'Bento Gonçalves',21),(70,'Rio Grande',21),(71,'Salvador',5),(72,'Feira de Santana',5),(73,'Vitória da Conquista',5),(74,'Ilhéus',5),(75,'Itabuna',5),(76,'Juazeiro',5),(77,'Lauro de Freitas',5),(78,'Barreiras',5),(79,'Jequié',5),(80,'Alagoinhas',5),(81,'Recife',17),(82,'Olinda',17),(83,'Jaboatão dos Guararapes',17),(84,'Caruaru',17),(85,'Petrolina',17),(86,'Paulista',17),(87,'Garanhuns',17),(88,'Cabo de Santo Agostinho',17),(89,'Igarassu',17),(90,'Arcoverde',17),(91,'Fortaleza',6),(92,'Juazeiro do Norte',6),(93,'Sobral',6),(94,'Crato',6),(95,'Maracanaú',6),(96,'Caucaia',6),(97,'Quixadá',6),(98,'Iguatu',6),(99,'Itapipoca',6),(100,'Aquiraz',6);
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` char(11) NOT NULL,
  `id_convenio` int(11) NOT NULL,
  `id_dados_pessoais` int(11) NOT NULL,
  `data_cadastro` date NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_CLIENTE_CONVENIOS1_idx` (`id_convenio`),
  KEY `fk_CLIENTE_DADOS_PESSOAIS1_idx` (`id_dados_pessoais`),
  CONSTRAINT `fk_CLIENTE_CONVENIOS1` FOREIGN KEY (`id_convenio`) REFERENCES `convenios` (`id_convenio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CLIENTE_DADOS_PESSOAIS1` FOREIGN KEY (`id_dados_pessoais`) REFERENCES `dados_pessoais` (`id_dados_pessoais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Lucas Almeida','12345678901',1,101,'2024-01-10'),(2,'Mariana Souza','12345678902',2,102,'2024-01-11'),(3,'Pedro Santos','12345678903',3,103,'2024-01-12'),(4,'Ana Oliveira','12345678904',4,104,'2024-01-13'),(5,'Gabriel Pereira','12345678905',5,105,'2024-01-14'),(6,'Juliana Costa','12345678906',6,106,'2024-01-15'),(7,'Rafael Rodrigues','12345678907',7,107,'2024-01-16'),(8,'Fernanda Martins','12345678908',8,108,'2024-01-17'),(9,'Bruno Ferreira','12345678909',9,109,'2024-01-18'),(10,'Carla Gomes','12345678910',10,110,'2024-01-19'),(11,'Diego Ribeiro','12345678911',11,111,'2024-01-20'),(12,'Patricia Alves','12345678912',12,112,'2024-01-21'),(13,'Gustavo Carvalho','12345678913',13,113,'2024-01-22'),(14,'Camila Teixeira','12345678914',14,114,'2024-01-23'),(15,'Felipe Araujo','12345678915',15,115,'2024-01-24'),(16,'Larissa Melo','12345678916',16,116,'2024-01-25'),(17,'André Barros','12345678917',17,117,'2024-01-26'),(18,'Beatriz Freitas','12345678918',18,118,'2024-01-27'),(19,'Thiago Duarte','12345678919',19,119,'2024-01-28'),(20,'Renata Nunes','12345678920',20,120,'2024-01-29'),(21,'Lucas Barbosa','12345678921',21,121,'2024-01-30'),(22,'Mariana Rocha','12345678922',22,122,'2024-01-31'),(23,'Pedro Cardoso','12345678923',23,123,'2024-02-01'),(24,'Ana Mendes','12345678924',24,124,'2024-02-02'),(25,'Gabriel Lopes','12345678925',25,125,'2024-02-03'),(26,'Juliana Moreira','12345678926',26,126,'2024-02-04'),(27,'Rafael Castro','12345678927',27,127,'2024-02-05'),(28,'Fernanda Pires','12345678928',28,128,'2024-02-06'),(29,'Bruno Batista','12345678929',29,129,'2024-02-07'),(30,'Carla Ribeiro','12345678930',30,130,'2024-02-08'),(31,'Diego Gomes','12345678931',31,131,'2024-02-09'),(32,'Patricia Fernandes','12345678932',32,132,'2024-02-10'),(33,'Gustavo Silva','12345678933',33,133,'2024-02-11'),(34,'Camila Rocha','12345678934',34,134,'2024-02-12'),(35,'Felipe Martins','12345678935',35,135,'2024-02-13'),(36,'Larissa Souza','12345678936',36,136,'2024-02-14'),(37,'André Costa','12345678937',37,137,'2024-02-15'),(38,'Beatriz Oliveira','12345678938',38,138,'2024-02-16'),(39,'Thiago Pereira','12345678939',39,139,'2024-02-17'),(40,'Renata Rodrigues','12345678940',40,140,'2024-02-18'),(41,'Lucas Gomes','12345678941',41,141,'2024-02-19'),(42,'Mariana Alves','12345678942',42,142,'2024-02-20'),(43,'Pedro Lima','12345678943',43,143,'2024-02-21'),(44,'Ana Ferreira','12345678944',44,144,'2024-02-22'),(45,'Gabriel Rocha','12345678945',45,145,'2024-02-23'),(46,'Juliana Barbosa','12345678946',46,146,'2024-02-24'),(47,'Rafael Cardoso','12345678947',47,147,'2024-02-25'),(48,'Fernanda Mendes','12345678948',48,148,'2024-02-26'),(49,'Bruno Lopes','12345678949',49,149,'2024-02-27'),(50,'Carla Moreira','12345678950',50,150,'2024-02-28'),(51,'Diego Castro','12345678951',51,151,'2024-02-29'),(52,'Patricia Pires','12345678952',52,152,'2024-03-01'),(53,'Gustavo Batista','12345678953',53,153,'2024-03-02'),(54,'Camila Ribeiro','12345678954',54,154,'2024-03-03'),(55,'Felipe Gomes','12345678955',55,155,'2024-03-04'),(56,'Larissa Fernandes','12345678956',56,156,'2024-03-05'),(57,'André Silva','12345678957',57,157,'2024-03-06'),(58,'Beatriz Rocha','12345678958',58,158,'2024-03-07'),(59,'Thiago Martins','12345678959',59,159,'2024-03-08'),(60,'Renata Souza','12345678960',60,160,'2024-03-09'),(61,'Lucas Pereira','12345678961',61,161,'2024-03-10'),(62,'Mariana Costa','12345678962',62,162,'2024-03-11'),(63,'Pedro Rodrigues','12345678963',63,163,'2024-03-12'),(64,'Ana Martins','12345678964',64,164,'2024-03-13'),(65,'Gabriel Silva','12345678965',65,165,'2024-03-14'),(66,'Juliana Oliveira','12345678966',66,166,'2024-03-15'),(67,'Rafael Gomes','12345678967',67,167,'2024-03-16'),(68,'Fernanda Costa','12345678968',68,168,'2024-03-17'),(69,'Bruno Souza','12345678969',69,169,'2024-03-18'),(70,'Carla Almeida','12345678970',70,170,'2024-03-19'),(71,'Diego Pereira','12345678971',71,171,'2024-03-20'),(72,'Patricia Costa','12345678972',72,172,'2024-03-21'),(73,'Gustavo Rodrigues','12345678973',73,173,'2024-03-22'),(74,'Camila Martins','12345678974',74,174,'2024-03-23'),(75,'Felipe Silva','12345678975',75,175,'2024-03-24'),(76,'Larissa Oliveira','12345678976',76,176,'2024-03-25'),(77,'André Gomes','12345678977',77,177,'2024-03-26'),(78,'Beatriz Costa','12345678978',78,178,'2024-03-27'),(79,'Thiago Souza','12345678979',79,179,'2024-03-28'),(80,'Renata Almeida','12345678980',80,180,'2024-03-29'),(81,'Lucas Martins','12345678981',81,181,'2024-03-30'),(82,'Mariana Pereira','12345678982',82,182,'2024-03-31'),(83,'Pedro Costa','12345678983',83,183,'2024-04-01'),(84,'Ana Rodrigues','12345678984',84,184,'2024-04-02'),(85,'Gabriel Martins','12345678985',85,185,'2024-04-03'),(86,'Juliana Silva','12345678986',86,186,'2024-04-04'),(87,'Rafael Oliveira','12345678987',87,187,'2024-04-05'),(88,'Fernanda Souza','12345678988',88,188,'2024-04-06'),(89,'Bruno Costa','12345678989',89,189,'2024-04-07'),(90,'Carla Rodrigues','12345678990',90,190,'2024-04-08'),(91,'Diego Almeida','12345678991',91,191,'2024-04-09'),(92,'Patricia Souza','12345678992',92,192,'2024-04-10'),(93,'Gustavo Pereira','12345678993',93,193,'2024-04-11'),(94,'Camila Costa','12345678994',94,194,'2024-04-12'),(95,'Felipe Rodrigues','12345678995',95,195,'2024-04-13'),(96,'Larissa Martins','12345678996',96,196,'2024-04-14'),(97,'André Oliveira','12345678997',97,197,'2024-04-15'),(98,'Beatriz Souza','12345678998',98,198,'2024-04-16'),(99,'Thiago Costa','12345678999',99,199,'2024-04-17'),(100,'Renata Pereira','12345679000',100,200,'2024-04-18');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contatos` (
  `id_contato` int(11) NOT NULL AUTO_INCREMENT,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` VALUES (1,'(95)99872-3342','patrícia.barros@yahoo.com.br'),(2,'(33)96404-9249','amanda.mendes@gmail.com'),(3,'(27)99267-8840','joão.pedro.souza@hotmail.com'),(4,'(31)92836-3715','rafael.rodrigues@hotmail.com'),(5,'(80)93749-3848','gustavo.rocha@gmail.com'),(6,'(79)99869-3625','eduarda.rodrigues@hotmail.com'),(7,'(94)98827-3041','bruno.nascimento@outlook.com'),(8,'(32)94638-1373','amanda.lima@gmail.com'),(9,'(96)94129-7595','maria.clara.araújo@hotmail.com'),(10,'(99)91643-8421','larissa.souza@outlook.com'),(11,'(27)94327-9005','camila.nascimento@gmail.com'),(12,'(39)95096-6178','carlos.eduardo.barros@outlook.com'),(13,'(88)98416-3864','amanda.rocha@outlook.com'),(14,'(61)92705-9433','eduarda.souza@yahoo.com.br'),(15,'(18)93440-7563','maria.clara.cardoso@yahoo.com.br'),(16,'(74)92387-4254','bianca.costa@outlook.com'),(17,'(43)95564-7420','letícia.nascimento@gmail.com'),(18,'(55)97751-9725','patrícia.teixeira@yahoo.com.br'),(19,'(44)96351-5126','aline.araújo@gmail.com'),(20,'(99)96556-8038','amanda.costa@hotmail.com'),(21,'(63)96662-9263','gabriel.barros@outlook.com'),(22,'(11)93324-5701','felipe.nascimento@hotmail.com'),(23,'(55)91300-3861','amanda.almeida@outlook.com'),(24,'(40)97454-5486','rafael.cardoso@hotmail.com'),(25,'(40)91156-1410','isabela.nascimento@gmail.com'),(26,'(16)92479-6770','vanessa.rocha@hotmail.com'),(27,'(87)95455-5496','isabela.teixeira@outlook.com'),(28,'(89)97184-7717','bianca.pereira@outlook.com'),(29,'(69)93573-2945','mariana.teixeira@hotmail.com'),(30,'(57)96384-1311','gustavo.rodrigues@hotmail.com'),(31,'(89)99837-9383','beatriz.ferreira@yahoo.com.br'),(32,'(72)97459-1140','rafael.barros@gmail.com'),(33,'(25)99207-5923','andré.cardoso@yahoo.com.br'),(34,'(73)96143-3375','caio.ferreira@outlook.com'),(35,'(83)99635-3052','letícia.pereira@yahoo.com.br'),(36,'(35)96168-5683','matheus.mendes@outlook.com'),(37,'(21)98704-3789','renato.araújo@outlook.com'),(38,'(15)99116-8929','felipe.rocha@outlook.com'),(39,'(48)91723-6969','maria.clara.oliveira@yahoo.com.br'),(40,'(79)95721-4440','amanda.mendes@yahoo.com.br'),(41,'(38)95249-1017','felipe.teixeira@gmail.com'),(42,'(51)93527-2349','felipe.araújo@yahoo.com.br'),(43,'(82)92592-3572','camila.teixeira@hotmail.com'),(44,'(26)94372-6484','eduarda.costa@hotmail.com'),(45,'(18)93823-2820','thiago.cardoso@yahoo.com.br'),(46,'(31)95286-8114','rafael.souza@outlook.com'),(47,'(99)93863-1061','lucas.henrique.almeida@hotmail.com'),(48,'(61)95874-3100','ricardo.teixeira@gmail.com'),(49,'(62)96663-7052','amanda.souza@yahoo.com.br'),(50,'(63)99554-5807','andré.almeida@yahoo.com.br'),(51,'(19)93467-8490','felipe.oliveira@yahoo.com.br'),(52,'(14)99019-5463','maria.clara.oliveira@outlook.com'),(53,'(89)98162-4156','eduarda.cardoso@hotmail.com'),(54,'(51)97900-1550','amanda.silva@hotmail.com'),(55,'(44)99107-5012','renato.souza@gmail.com'),(56,'(36)94379-7041','beatriz.pereira@yahoo.com.br'),(57,'(90)91077-4309','ana.beatriz.silva@outlook.com'),(58,'(41)95623-1979','renato.nascimento@gmail.com'),(59,'(33)96941-6327','lucas.henrique.rocha@yahoo.com.br'),(60,'(90)96846-9728','ricardo.mendes@gmail.com'),(61,'(82)95776-5963','leonardo.cardoso@yahoo.com.br'),(62,'(29)99701-8582','renato.lima@hotmail.com'),(63,'(28)99685-2966','lucas.henrique.costa@yahoo.com.br'),(64,'(33)91558-9360','gabriel.barros@gmail.com'),(65,'(32)99103-3919','daniela.silva@gmail.com'),(66,'(81)97259-1419','vanessa.rocha@outlook.com'),(67,'(58)96876-9600','aline.barros@hotmail.com'),(68,'(90)98394-7858','letícia.pereira@outlook.com'),(69,'(55)92889-3445','felipe.pereira@outlook.com'),(70,'(59)92398-4865','mariana.ferreira@gmail.com'),(71,'(44)98167-8477','rafael.rodrigues@yahoo.com.br'),(72,'(87)91632-8834','joão.pedro.teixeira@yahoo.com.br'),(73,'(25)93838-6914','joão.pedro.pereira@hotmail.com'),(74,'(90)92393-6286','gabriel.nascimento@outlook.com'),(75,'(52)96468-5119','renato.costa@yahoo.com.br'),(76,'(25)98500-6713','beatriz.pereira@hotmail.com'),(77,'(37)97466-9926','rafael.barros@outlook.com'),(78,'(89)95899-8288','amanda.araújo@outlook.com'),(79,'(65)99613-6855','juliana.oliveira@yahoo.com.br'),(80,'(72)98319-7037','bianca.rocha@gmail.com'),(81,'(33)94756-4934','maria.clara.araújo@outlook.com'),(82,'(69)97200-6704','ana.beatriz.pereira@gmail.com'),(83,'(44)98819-1670','larissa.cardoso@gmail.com'),(84,'(18)92993-1176','letícia.barros@yahoo.com.br'),(85,'(75)97505-9699','vinicius.cardoso@hotmail.com'),(86,'(99)96434-6995','gustavo.barros@outlook.com'),(87,'(63)99228-1069','gustavo.ferreira@outlook.com'),(88,'(52)94481-8305','caio.lima@yahoo.com.br'),(89,'(51)97666-8823','lucas.henrique.costa@outlook.com'),(90,'(79)94413-1153','lucas.henrique.lima@outlook.com'),(91,'(40)96544-6261','ana.beatriz.cardoso@hotmail.com'),(92,'(25)92937-5137','beatriz.ferreira@gmail.com'),(93,'(82)91673-8821','natália.barros@gmail.com'),(94,'(53)97019-8604','bruno.barros@gmail.com'),(95,'(46)93520-7730','lucas.henrique.rodrigues@outlook.com'),(96,'(21)97722-9229','larissa.lima@gmail.com'),(97,'(37)98980-5547','ricardo.ferreira@outlook.com'),(98,'(55)96968-2198','vanessa.barros@gmail.com'),(99,'(36)93128-1652','larissa.rocha@hotmail.com'),(100,'(15)99234-6204','caio.ferreira@gmail.com'),(101,'12987654321','lucas.almeida@gmail.com'),(102,'12993456782','mariana.souza@gmail.com'),(103,'12981234567','pedro.santos@gmail.com'),(104,'12999887766','ana.oliveira@gmail.com'),(105,'12992345678','gabriel.pereira@gmail.com'),(106,'12994561234','juliana.costa@gmail.com'),(107,'12997812345','rafael.rodrigues@gmail.com'),(108,'12991112233','fernanda.martins@gmail.com'),(109,'12995678901','bruno.ferreira@gmail.com'),(110,'12996789012','carla.gomes@gmail.com'),(111,'12998901234','diego.ribeiro@gmail.com'),(112,'12991239876','patricia.alves@gmail.com'),(113,'12993456129','gustavo.carvalho@gmail.com'),(114,'12994567321','camila.teixeira@gmail.com'),(115,'12995678432','felipe.araujo@gmail.com'),(116,'12996789543','larissa.melo@gmail.com'),(117,'12997890654','andre.barros@gmail.com'),(118,'12998901765','beatriz.freitas@gmail.com'),(119,'12999012876','thiago.duarte@gmail.com'),(120,'12990123987','renata.nunes@gmail.com'),(121,'12991234098','lucas.barbosa@gmail.com'),(122,'12992345109','mariana.rocha@gmail.com'),(123,'12993456210','pedro.cardoso@gmail.com'),(124,'12994567322','ana.mendes@gmail.com'),(125,'12995678433','gabriel.lopes@gmail.com'),(126,'12996789544','juliana.moreira@gmail.com'),(127,'12997890655','rafael.castro@gmail.com'),(128,'12998901766','fernanda.pires@gmail.com'),(129,'12999012877','bruno.batista@gmail.com'),(130,'12990123988','carla.ribeiro@gmail.com'),(131,'12991234567','diego.gomes@gmail.com'),(132,'12992345678','patricia.fernandes@gmail.com'),(133,'12993456789','gustavo.silva@gmail.com'),(134,'12994567890','camila.rocha@gmail.com'),(135,'12995678901','felipe.martins@gmail.com'),(136,'12996789012','larissa.souza@gmail.com'),(137,'12997890123','andre.costa@gmail.com'),(138,'12998901235','beatriz.oliveira@gmail.com'),(139,'12999012346','thiago.pereira@gmail.com'),(140,'12990123457','renata.rodrigues@gmail.com'),(141,'12993214567','lucas.costa@gmail.com'),(142,'12994325678','mariana.alves@gmail.com'),(143,'12995436789','pedro.melo@gmail.com'),(144,'12996547890','ana.ribeiro@gmail.com'),(145,'12997658901','gabriel.freitas@gmail.com'),(146,'12998769012','juliana.barros@gmail.com'),(147,'12999870123','rafael.nunes@gmail.com'),(148,'12990981234','fernanda.duarte@gmail.com'),(149,'12991892345','bruno.carvalho@gmail.com'),(150,'12992783456','carla.teixeira@gmail.com'),(151,'12993674567','diego.almeida@gmail.com'),(152,'12994585678','patricia.souza@gmail.com'),(153,'12995496789','gustavo.santos@gmail.com'),(154,'12996407890','camila.oliveira@gmail.com'),(155,'12997318901','felipe.pereira@gmail.com'),(156,'12998229012','larissa.costa@gmail.com'),(157,'12999130123','andre.rodrigues@gmail.com'),(158,'12990041234','beatriz.martins@gmail.com'),(159,'12991952345','thiago.ferreira@gmail.com'),(160,'12992863456','renata.gomes@gmail.com'),(161,'12993774567','lucas.ribeiro@gmail.com'),(162,'12994685678','mariana.alves2@gmail.com'),(163,'12995596789','pedro.carvalho@gmail.com'),(164,'12996507890','ana.teixeira@gmail.com'),(165,'12997418901','gabriel.araujo@gmail.com'),(166,'12998329012','juliana.melo@gmail.com'),(167,'12999230123','rafael.barros@gmail.com'),(168,'12990141234','fernanda.freitas@gmail.com'),(169,'12991052345','bruno.duarte@gmail.com'),(170,'12992963456','carla.nunes@gmail.com'),(171,'12993874567','diego.barbosa@gmail.com'),(172,'12994785678','patricia.rocha@gmail.com'),(173,'12995696789','gustavo.cardoso@gmail.com'),(174,'12996607890','camila.mendes@gmail.com'),(175,'12997518901','felipe.lopes@gmail.com'),(176,'12998429012','larissa.moreira@gmail.com'),(177,'12999330123','andre.castro@gmail.com'),(178,'12990241234','beatriz.pires@gmail.com'),(179,'12991152345','thiago.batista@gmail.com'),(180,'12993063456','renata.ribeiro@gmail.com'),(181,'12993974567','lucas.gomes@gmail.com'),(182,'12994885678','mariana.fernandes@gmail.com'),(183,'12995796789','pedro.silva@gmail.com'),(184,'12996707890','ana.rocha2@gmail.com'),(185,'12997618901','gabriel.martins@gmail.com'),(186,'12998529012','juliana.souza@gmail.com'),(187,'12999430123','rafael.costa@gmail.com'),(188,'12990341234','fernanda.oliveira@gmail.com'),(189,'12991252345','bruno.pereira@gmail.com'),(190,'12993163456','carla.rodrigues@gmail.com'),(191,'12994074567','diego.martins@gmail.com'),(192,'12994985678','patricia.costa@gmail.com'),(193,'12995896789','gustavo.oliveira@gmail.com'),(194,'12996807890','camila.pereira@gmail.com'),(195,'12997718901','felipe.rodrigues@gmail.com'),(196,'12998629012','larissa.martins@gmail.com'),(197,'12999530123','andre.silva@gmail.com'),(198,'12990441234','beatriz.souza@gmail.com'),(199,'12991352345','thiago.gomes@gmail.com'),(200,'12992263456','renata.almeida@gmail.com'),(201,'11981110001','contato.ems@fornecedor.com.br'),(202,'11981110002','contato.eurofarma@fornecedor.com.br'),(203,'11981110003','contato.neoquimica@fornecedor.com.br'),(204,'11981110004','contato.medley@fornecedor.com.br'),(205,'11981110005','contato.cimed@fornecedor.com.br'),(206,'11981110006','contato.ache@fornecedor.com.br'),(207,'11981110007','contato.hypera@fornecedor.com.br'),(208,'11981110008','contato.biolab@fornecedor.com.br'),(209,'11981110009','contato.uniaoquimica@fornecedor.com.br'),(210,'11981110010','contato.germed@fornecedor.com.br'),(211,'11981110011','contato.pfizer@fornecedor.com.br'),(212,'11981110012','contato.bayer@fornecedor.com.br'),(213,'11981110013','contato.sanofi@fornecedor.com.br'),(214,'11981110014','contato.roche@fornecedor.com.br'),(215,'11981110015','contato.abbott@fornecedor.com.br'),(216,'11981110016','contato.jnj@fornecedor.com.br'),(217,'11981110017','contato.novartis@fornecedor.com.br'),(218,'11981110018','contato.astrazeneca@fornecedor.com.br'),(219,'11981110019','contato.merck@fornecedor.com.br'),(220,'11981110020','contato.gsk@fornecedor.com.br'),(221,'11981110021','contato.colgate@fornecedor.com.br'),(222,'11981110022','contato.oralb@fornecedor.com.br'),(223,'11981110023','contato.listerine@fornecedor.com.br'),(224,'11981110024','contato.closeup@fornecedor.com.br'),(225,'11981110025','contato.sensodyne@fornecedor.com.br'),(226,'11981110026','contato.pg@fornecedor.com.br'),(227,'11981110027','contato.unilever@fornecedor.com.br'),(228,'11981110028','contato.nivea@fornecedor.com.br'),(229,'11981110029','contato.dove@fornecedor.com.br'),(230,'11981110030','contato.johnsonbaby@fornecedor.com.br'),(231,'11981110031','contato.intimus@fornecedor.com.br'),(232,'11981110032','contato.always@fornecedor.com.br'),(233,'11981110033','contato.carefree@fornecedor.com.br'),(234,'11981110034','contato.dermacyd@fornecedor.com.br'),(235,'11981110035','contato.lactacyd@fornecedor.com.br'),(236,'11981110036','contato.larocheposay@fornecedor.com.br'),(237,'11981110037','contato.vichy@fornecedor.com.br'),(238,'11981110038','contato.avene@fornecedor.com.br'),(239,'11981110039','contato.eucerin@fornecedor.com.br'),(240,'11981110040','contato.cerave@fornecedor.com.br'),(241,'11981110041','contato.maybelline@fornecedor.com.br'),(242,'11981110042','contato.loreal@fornecedor.com.br'),(243,'11981110043','contato.rubyrose@fornecedor.com.br'),(244,'11981110044','contato.vult@fornecedor.com.br'),(245,'11981110045','contato.berenice@fornecedor.com.br'),(246,'11981110046','contato.boticario@fornecedor.com.br'),(247,'11981110047','contato.natura@fornecedor.com.br'),(248,'11981110048','contato.eudora@fornecedor.com.br'),(249,'11981110049','contato.avon@fornecedor.com.br'),(250,'11981110050','contato.jequiti@fornecedor.com.br'),(251,'11981110051','contato.simpleorganic@fornecedor.com.br'),(252,'11981110052','contato.neutrogena@fornecedor.com.br'),(253,'11981110053','contato.cetaphil@fornecedor.com.br'),(254,'11981110054','contato.bepantol@fornecedor.com.br'),(255,'11981110055','contato.principia@fornecedor.com.br'),(256,'11981110056','contato.pantene@fornecedor.com.br'),(257,'11981110057','contato.elseve@fornecedor.com.br'),(258,'11981110058','contato.tresemme@fornecedor.com.br'),(259,'11981110059','contato.salonline@fornecedor.com.br'),(260,'11981110060','contato.skala@fornecedor.com.br'),(261,'11981110061','contato.sundown@fornecedor.com.br'),(262,'11981110062','contato.niveasun@fornecedor.com.br'),(263,'11981110063','contato.minesol@fornecedor.com.br'),(264,'11981110064','contato.anthelios@fornecedor.com.br'),(265,'11981110065','contato.episol@fornecedor.com.br'),(266,'11981110066','contato.centrum@fornecedor.com.br'),(267,'11981110067','contato.lavitan@fornecedor.com.br'),(268,'11981110068','contato.equaliv@fornecedor.com.br'),(269,'11981110069','contato.redoxon@fornecedor.com.br'),(270,'11981110070','contato.vitafor@fornecedor.com.br'),(271,'11981110071','contato.maxtitanium@fornecedor.com.br'),(272,'11981110072','contato.integralmedica@fornecedor.com.br'),(273,'11981110073','contato.probiotica@fornecedor.com.br'),(274,'11981110074','contato.blackskull@fornecedor.com.br'),(275,'11981110075','contato.growth@fornecedor.com.br'),(276,'11981110076','contato.nestlehealth@fornecedor.com.br'),(277,'11981110077','contato.nutricia@fornecedor.com.br'),(278,'11981110078','contato.ensure@fornecedor.com.br'),(279,'11981110079','contato.nutren@fornecedor.com.br'),(280,'11981110080','contato.sustagen@fornecedor.com.br'),(281,'11981110081','contato.herbarium@fornecedor.com.br'),(282,'11981110082','contato.katigua@fornecedor.com.br'),(283,'11981110083','contato.weleda@fornecedor.com.br'),(284,'11981110084','contato.almeidaprado@fornecedor.com.br'),(285,'11981110085','contato.boiron@fornecedor.com.br'),(286,'11981110086','contato.cremer@fornecedor.com.br'),(287,'11981110087','contato.missner@fornecedor.com.br'),(288,'11981110088','contato.curatec@fornecedor.com.br'),(289,'11981110089','contato.gtech@fornecedor.com.br'),(290,'11981110090','contato.omron@fornecedor.com.br'),(291,'11981110091','contato.accuchek@fornecedor.com.br'),(292,'11981110092','contato.freestylelibre@fornecedor.com.br'),(293,'11981110093','contato.incoterm@fornecedor.com.br'),(294,'11981110094','contato.mercur@fornecedor.com.br'),(295,'11981110095','contato.ortobras@fornecedor.com.br'),(296,'11981110096','contato.johnsonbabycare@fornecedor.com.br'),(297,'11981110097','contato.mamypoko@fornecedor.com.br'),(298,'11981110098','contato.pampers@fornecedor.com.br'),(299,'11981110099','contato.petsociety@fornecedor.com.br'),(300,'11981110100','contato.vetnil@fornecedor.com.br');
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenios`
--

DROP TABLE IF EXISTS `convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenios` (
  `id_convenio` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_convenio`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenios`
--

LOCK TABLES `convenios` WRITE;
/*!40000 ALTER TABLE `convenios` DISABLE KEYS */;
INSERT INTO `convenios` VALUES (1,'Unimed'),(2,'Bradesco Saúde'),(3,'SulAmérica'),(4,'Amil'),(5,'Hapvida'),(6,'NotreDame Intermédica'),(7,'Porto Saúde'),(8,'São Cristóvão'),(9,'Prevent Senior'),(10,'MedService'),(11,'Golden Cross'),(12,'Care Plus'),(13,'Omint'),(14,'Santa Helena'),(15,'Cassi'),(16,'Geap'),(17,'Cabesp'),(18,'Economus'),(19,'Assefaz'),(20,'Postal Saúde'),(21,'Convênio Alfa'),(22,'Convênio Beta'),(23,'Convênio Gama'),(24,'Convênio Delta'),(25,'Convênio Ômega'),(26,'Convênio Vida'),(27,'Convênio Saúde Total'),(28,'Convênio Mais Vida'),(29,'Convênio Popular'),(30,'Convênio Bem Estar'),(31,'Convênio Nacional'),(32,'Convênio Regional'),(33,'Convênio Premium'),(34,'Convênio Executivo'),(35,'Convênio Empresarial'),(36,'Convênio Familiar'),(37,'Convênio Essencial'),(38,'Convênio Diamante'),(39,'Convênio Ouro'),(40,'Convênio Prata'),(41,'Convênio Bronze'),(42,'Convênio Smart'),(43,'Convênio Fácil'),(44,'Convênio Max'),(45,'Convênio Plus'),(46,'Convênio Prime'),(47,'Convênio Saúde Já'),(48,'Convênio Clínica'),(49,'Convênio Vida Feliz'),(50,'Convênio Bem Viver'),(51,'Convênio Horizonte'),(52,'Convênio Futuro'),(53,'Convênio Central'),(54,'Convênio Universal'),(55,'Convênio Saúde Brasil'),(56,'Convênio Paulista'),(57,'Convênio Carioca'),(58,'Convênio Mineiro'),(59,'Convênio Sul'),(60,'Convênio Norte'),(61,'Convênio Nordeste'),(62,'Convênio Centro-Oeste'),(63,'Convênio Integral'),(64,'Convênio Especial'),(65,'Convênio Saúde 1'),(66,'Convênio Saúde 2'),(67,'Convênio Saúde 3'),(68,'Convênio Saúde 4'),(69,'Convênio Saúde 5'),(70,'Convênio Saúde 6'),(71,'Convênio Saúde 7'),(72,'Convênio Saúde 8'),(73,'Convênio Saúde 9'),(74,'Convênio Saúde 10'),(75,'Convênio Corporativo'),(76,'Convênio Empresarial Plus'),(77,'Convênio Executivo Plus'),(78,'Convênio Select'),(79,'Convênio Top Saúde'),(80,'Convênio Master'),(81,'Convênio Vip'),(82,'Convênio Green'),(83,'Convênio Blue'),(84,'Convênio White'),(85,'Convênio Black'),(86,'Convênio Gold'),(87,'Convênio Silver'),(88,'Convênio Platinum'),(89,'Convênio Infinity'),(90,'Convênio Excellence'),(91,'Convênio Saúde Popular'),(92,'Convênio Saúde Fácil'),(93,'Convênio Vida Melhor'),(94,'Convênio Vida Plena'),(95,'Convênio Bem Saúde'),(96,'Convênio Nova Vida'),(97,'Convênio Total Care'),(98,'Convênio Health Plus'),(99,'Convênio Saúde Total Plus'),(100,'Convênio Farma Saúde');
/*!40000 ALTER TABLE `convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados_artigos`
--

DROP TABLE IF EXISTS `dados_artigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dados_artigos` (
  `id_artigos` int(11) NOT NULL AUTO_INCREMENT,
  `preco` decimal(10,2) NOT NULL,
  `vencimento` date NOT NULL,
  `marca_laboratorio` varchar(100) NOT NULL,
  `id_fornecedores` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_medicamento` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_artigos`),
  KEY `fk_PRODUTOS_MEDICAMENTOS_FORNECEDORES1_idx` (`id_fornecedores`),
  KEY `fk_PRODUTOS_MEDICAMENTOS_CATEGORIAS1_idx` (`id_categoria`),
  KEY `fk_DADOS_ARTIGOS_MEDICAMENTO1_idx` (`id_medicamento`),
  KEY `fk_DADOS_ARTIGOS_PRODUTO1_idx` (`id_produto`),
  CONSTRAINT `fk_PRODUTOS_MEDICAMENTOS_CATEGORIAS1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUTOS_MEDICAMENTOS_FORNECEDORES1` FOREIGN KEY (`id_fornecedores`) REFERENCES `fornecedores` (`id_fornecedores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_artigos`
--

LOCK TABLES `dados_artigos` WRITE;
/*!40000 ALTER TABLE `dados_artigos` DISABLE KEYS */;
INSERT INTO `dados_artigos` VALUES (1,39.90,'2029-12-31','G-Tech',89,18,NULL,1),(2,1.50,'2029-12-31','Cremer',86,16,NULL,2),(3,12.90,'2029-12-31','Cremer',86,3,NULL,3),(4,8.90,'2029-12-31','Johnson & Johnson',16,17,NULL,4),(5,6.50,'2029-12-31','Eurofarma',2,21,NULL,5),(6,9.90,'2030-12-31','Colgate',21,2,NULL,6),(7,7.90,'2030-12-31','Colgate',21,2,NULL,7),(8,15.90,'2030-12-31','Listerine',23,2,NULL,8),(9,5.90,'2029-12-31','Procter & Gamble',26,3,NULL,9),(10,49.90,'2029-12-31','Nivea Sun',62,10,NULL,10),(11,12.90,'2029-12-31','Johnson Baby',30,24,NULL,11),(12,18.90,'2029-12-31','Johnson Baby',30,24,NULL,12),(13,69.90,'2029-12-31','Pampers',98,24,NULL,13),(14,8.90,'2030-12-31','Intimus',31,26,NULL,14),(15,4.90,'2030-12-31','Cremer',86,17,NULL,15),(16,2.90,'2030-12-31','Cremer',86,17,NULL,16),(17,6.90,'2030-12-31','Missner',87,17,NULL,17),(18,9.90,'2030-12-31','Missner',87,17,NULL,18),(19,149.90,'2030-12-31','Omron',90,18,NULL,19),(20,89.90,'2030-12-31','Accu-Chek',91,19,NULL,20),(21,179.90,'2030-12-31','G-Tech',89,21,NULL,21),(22,39.90,'2030-12-31','Mercur',94,23,NULL,22),(23,16.90,'2029-12-31','Hipoglós',100,24,NULL,23),(24,24.90,'2030-12-31','Nivea',28,8,NULL,24),(25,12.90,'2030-12-31','Nivea',28,8,NULL,25),(26,39.90,'2030-12-31','Mercur',94,22,NULL,26),(27,24.90,'2029-12-31','Redoxon',69,11,NULL,27),(28,39.90,'2029-12-31','Centrum',66,11,NULL,28),(29,49.90,'2029-12-31','Equaliv',68,11,NULL,29),(30,59.90,'2029-12-31','Vitafor',70,12,NULL,30),(31,29.90,'2029-12-31','Lavitan',67,11,NULL,31),(32,34.90,'2029-12-31','Lavitan',67,11,NULL,32),(33,29.90,'2029-12-31','Lavitan',67,11,NULL,33),(34,9.90,'2030-12-31','Herbarium',81,14,NULL,34),(35,12.90,'2030-12-31','Herbarium',81,14,NULL,35),(36,15.90,'2030-12-31','Equaliv',68,13,NULL,36),(37,8.90,'2029-12-31','Max Titanium',71,12,NULL,37),(38,149.90,'2029-12-31','Growth',75,12,NULL,38),(39,89.90,'2029-12-31','Integralmedica',72,12,NULL,39),(40,8.90,'2029-12-31','Vitafor',70,12,NULL,40),(41,4.90,'2030-12-31','Cremer',86,16,NULL,41),(42,17.90,'2030-12-31','Listerine',23,2,NULL,42),(43,7.90,'2030-12-31','Dove',29,3,NULL,43),(44,6.90,'2030-12-31','Johnson Baby',30,3,NULL,44),(45,14.90,'2030-12-31','Dove',29,3,NULL,45),(46,18.90,'2030-12-31','Nivea',28,3,NULL,46),(47,9.90,'2030-12-31','Granado',47,3,NULL,47),(48,8.90,'2030-12-31','Colgate',21,2,NULL,48),(49,19.90,'2030-12-31','Oral-B',22,2,NULL,49),(50,12.90,'2030-12-31','Colgate',21,2,NULL,50),(51,4.90,'2030-12-31','Cremer',86,18,NULL,51),(52,6.90,'2030-12-31','Cremer',86,16,NULL,52),(53,24.90,'2030-12-31','Cremer',86,16,NULL,53),(54,12.90,'2030-12-31','Cremer',86,16,NULL,54),(55,1.90,'2030-12-31','Cremer',86,18,NULL,55),(56,7.90,'2030-12-31','Cremer',86,17,NULL,56),(57,14.90,'2030-12-31','Mercur',94,17,NULL,57),(58,29.90,'2030-12-31','Mercur',94,23,NULL,58),(59,39.90,'2030-12-31','Mercur',94,23,NULL,59),(60,39.90,'2030-12-31','Mercur',94,23,NULL,60),(61,29.90,'2030-12-31','Mercur',94,23,NULL,61),(62,49.90,'2030-12-31','Mercur',94,23,NULL,62),(63,79.90,'2030-12-31','Mercur',94,23,NULL,63),(64,129.90,'2030-12-31','Ortobras',95,23,NULL,64),(65,249.90,'2030-12-31','Ortobras',95,23,NULL,65),(66,199.90,'2030-12-31','Ortobras',95,23,NULL,66),(67,89.90,'2030-12-31','G-Tech',89,18,NULL,67),(68,189.90,'2030-12-31','G-Tech',89,18,NULL,68),(69,24.90,'2030-12-31','Johnson Baby',30,24,NULL,69),(70,39.90,'2030-12-31','Johnson Baby',30,24,NULL,70),(71,19.90,'2030-12-31','Johnson Baby',30,24,NULL,71),(72,14.90,'2030-12-31','Johnson Baby',30,24,NULL,72),(73,29.90,'2030-12-31','Johnson Baby',30,25,NULL,73),(74,9.90,'2030-12-31','Cremer',86,16,NULL,74),(75,24.90,'2030-12-31','Johnson Baby',30,3,NULL,75),(76,12.90,'2030-12-31','Johnson Baby',30,24,NULL,76),(77,18.90,'2030-12-31','Johnson Baby',30,24,NULL,77),(78,24.90,'2030-12-31','Elseve',57,9,NULL,78),(79,22.90,'2030-12-31','Salon Line',59,9,NULL,79),(80,19.90,'2030-12-31','Nivea',28,8,NULL,80),(81,14.90,'2030-12-31','Nivea',28,8,NULL,81),(82,18.90,'2030-12-31','Nivea',28,8,NULL,82),(83,15.90,'2030-12-31','Nivea Sun',62,10,NULL,83),(84,19.90,'2030-12-31','Cremer',86,17,NULL,84),(85,59.90,'2030-12-31','Cremer',86,16,NULL,85),(86,29.90,'2030-12-31','G-Tech',89,18,NULL,86),(87,6.90,'2030-12-31','G-Tech',89,18,NULL,87),(88,19.90,'2030-12-31','G-Tech',89,18,NULL,88),(89,119.90,'2030-12-31','G-Tech',89,18,NULL,89),(90,149.90,'2030-12-31','G-Tech',89,21,NULL,90),(91,199.90,'2030-12-31','Eurofarma',2,18,NULL,91),(92,89.90,'2030-12-31','G-Tech',89,18,NULL,92),(93,99.90,'2030-12-31','G-Tech',89,24,NULL,93),(94,19.90,'2030-12-31','Salon Line',59,9,NULL,94),(95,24.90,'2030-12-31','EMS',1,21,NULL,95),(96,34.90,'2030-12-31','Roche',14,22,NULL,96),(97,49.90,'2030-12-31','Roche',14,22,NULL,97),(98,12.90,'2030-12-31','G-Tech',89,18,NULL,98),(99,24.90,'2030-12-31','Mercur',94,23,NULL,99),(100,8.90,'2028-12-31','EMS',1,1,1,NULL),(101,12.90,'2026-07-09','Sanofi Memedicamentosdley',13,1,2,NULL),(102,6.90,'2028-12-31','Neo Química',3,1,3,NULL),(103,11.90,'2028-12-31','Johnson & Johnson',16,1,4,NULL),(104,9.90,'2026-07-01','Neo Química',3,1,5,NULL),(105,18.90,'2028-12-31','Cimed',5,1,6,NULL),(106,24.90,'2028-12-31','Eurofarma',2,1,7,NULL),(107,34.90,'2028-12-31','Pfizer',11,1,8,NULL),(108,14.90,'2028-12-31','EMS',1,1,9,NULL),(109,29.90,'2028-12-31','Aché',6,1,10,NULL),(110,18.90,'2028-12-31','União Química',9,1,11,NULL),(111,32.90,'2028-12-31','GlaxoSmithKline',20,1,12,NULL),(112,8.90,'2028-12-31','Neo Química',3,1,13,NULL),(113,17.90,'2028-12-31','Bayer',12,1,14,NULL),(114,9.90,'2028-12-31','Eurofarma',2,1,15,NULL),(115,15.90,'2028-12-31','Hypera Pharma',7,1,16,NULL),(116,12.90,'2028-12-31','Medley',4,1,17,NULL),(117,24.90,'2028-12-31','AstraZeneca',18,1,18,NULL),(118,18.90,'2028-12-31','EMS',1,1,19,NULL),(119,29.90,'2028-12-31','Takeda',6,1,20,NULL),(120,16.90,'2028-12-31','Boehringer',8,1,21,NULL),(121,11.90,'2028-12-31','Neo Química',3,1,22,NULL),(122,8.90,'2028-12-31','EMS',1,1,23,NULL),(123,18.90,'2028-12-31','Sanofi',13,1,24,NULL),(124,9.90,'2028-12-31','Eurofarma',2,1,25,NULL),(125,19.90,'2028-12-31','Bayer',12,1,26,NULL),(126,7.90,'2028-12-31','Neo Química',3,1,27,NULL),(127,14.90,'2028-12-31','Merck',19,1,28,NULL),(128,8.90,'2028-12-31','EMS',1,1,29,NULL),(129,18.90,'2028-12-31','Aché',6,1,30,NULL),(130,11.90,'2028-12-31','Medley',4,1,31,NULL),(131,21.90,'2028-12-31','Merck',19,1,32,NULL),(132,16.90,'2028-12-31','EMS',1,1,33,NULL),(133,29.90,'2028-12-31','Servier',7,1,34,NULL),(134,12.90,'2028-12-31','Eurofarma',2,1,35,NULL),(135,24.90,'2028-12-31','Pfizer',11,1,36,NULL),(136,9.90,'2028-12-31','EMS',1,1,37,NULL),(137,19.90,'2028-12-31','Eli Lilly',15,1,38,NULL),(138,7.90,'2028-12-31','Neo Química',3,1,39,NULL),(139,14.90,'2028-12-31','Roche',14,1,40,NULL),(140,8.90,'2028-12-31','EMS',1,1,41,NULL),(141,17.90,'2028-12-31','Roche',14,1,42,NULL),(142,12.90,'2028-12-31','União Química',9,1,43,NULL),(143,28.90,'2028-12-31','Janssen',16,1,44,NULL),(144,14.90,'2028-12-31','EMS',1,1,45,NULL),(145,32.90,'2028-12-31','Novartis',17,1,46,NULL),(146,11.90,'2028-12-31','Neo Química',3,1,47,NULL),(147,21.90,'2028-12-31','Sanofi',13,1,48,NULL),(148,13.90,'2028-12-31','EMS',1,1,49,NULL),(149,26.90,'2028-12-31','Aché',6,1,50,NULL),(150,12.90,'2028-12-31','Eurofarma',2,1,51,NULL),(151,22.90,'2028-12-31','Hypera Pharma',7,1,52,NULL),(152,18.90,'2028-12-31','EMS',1,1,53,NULL),(153,34.90,'2028-12-31','GlaxoSmithKline',20,1,54,NULL),(154,15.90,'2028-12-31','Eurofarma',2,1,55,NULL),(155,28.90,'2028-12-31','Takeda',6,1,56,NULL),(156,19.90,'2028-12-31','EMS',1,1,57,NULL),(157,31.90,'2028-12-31','Zambon',5,1,58,NULL),(158,14.90,'2028-12-31','Neo Química',3,1,59,NULL),(159,24.90,'2028-12-31','Aché',6,1,60,NULL),(160,8.90,'2028-12-31','EMS',1,1,61,NULL),(161,16.90,'2028-12-31','Pfizer',11,1,62,NULL),(162,9.90,'2028-12-31','Eurofarma',2,1,63,NULL),(163,19.90,'2028-12-31','Merck',19,1,64,NULL),(164,12.90,'2028-12-31','Sanofi',13,1,65,NULL),(165,25.90,'2026-07-04','Bayer',12,1,66,NULL),(166,11.90,'2028-12-31','EMS',1,1,67,NULL),(167,18.90,'2028-12-31','Aché',6,1,68,NULL),(168,14.90,'2028-12-31','Neo Química',3,1,69,NULL),(169,26.90,'2028-12-31','Takeda',6,1,70,NULL),(170,7.90,'2028-12-31','EMS',1,1,71,NULL),(171,15.90,'2028-12-31','Sanofi',13,1,72,NULL),(172,18.90,'2028-12-31','Neo Química',3,1,73,NULL),(173,33.90,'2028-12-31','Bristol Myers',18,1,74,NULL),(174,11.90,'2028-12-31','EMS',1,1,75,NULL),(175,21.90,'2028-12-31','Merck',19,1,76,NULL),(176,8.90,'2028-12-31','Neo Química',3,1,77,NULL),(177,18.90,'2028-12-31','Aché',6,1,78,NULL),(178,13.90,'2026-06-27','Eurofarma',2,1,79,NULL),(179,29.90,'2028-12-31','Pfizer',11,1,80,NULL),(180,9.90,'2028-12-31','EMS',1,1,81,NULL),(181,22.90,'2028-12-31','GlaxoSmithKline',20,1,82,NULL),(182,12.90,'2028-12-31','Weleda',83,1,83,NULL),(183,24.90,'2028-12-31','Almeida Prado',84,1,84,NULL),(184,26.90,'2028-12-31','Boiron',85,1,85,NULL),(185,14.90,'2028-12-31','Cremer',86,1,86,NULL),(186,18.90,'2028-12-31','Missner',87,1,87,NULL),(187,21.90,'2028-12-31','Curatec',88,1,88,NULL),(188,16.90,'2028-12-31','G-Tech',89,1,89,NULL),(189,32.90,'2028-12-31','Omron',90,1,90,NULL),(190,89.90,'2028-12-31','Accu-Chek',91,1,91,NULL),(191,299.90,'2028-12-31','FreeStyle Libre',92,1,92,NULL),(192,39.90,'2028-12-31','Incoterm',93,1,93,NULL),(193,49.90,'2026-06-30','Mercur',94,1,94,NULL),(194,69.90,'2028-12-31','Ortobras',95,1,95,NULL),(195,22.90,'2028-12-31','Johnson Baby',96,1,96,NULL),(196,34.90,'2028-12-31','Mamypoko',97,1,97,NULL),(197,64.90,'2028-12-31','Pampers',98,1,98,NULL),(198,39.90,'2028-12-31','Pet Society',99,1,99,NULL),(199,54.90,'2028-12-31','Vetnil',100,1,100,NULL);
/*!40000 ALTER TABLE `dados_artigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados_pessoais`
--

DROP TABLE IF EXISTS `dados_pessoais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dados_pessoais` (
  `id_dados_pessoais` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(20) NOT NULL,
  `data_nascimento` date NOT NULL,
  `id_ruas` int(11) NOT NULL,
  `id_contato` int(11) NOT NULL,
  PRIMARY KEY (`id_dados_pessoais`),
  KEY `fk_DADOS_PESSOAIS_RUAS1_idx` (`id_ruas`),
  KEY `fk_DADOS_PESSOAIS_CONTATOS1_idx` (`id_contato`),
  CONSTRAINT `fk_DADOS_PESSOAIS_CONTATOS1` FOREIGN KEY (`id_contato`) REFERENCES `contatos` (`id_contato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_DADOS_PESSOAIS_RUAS1` FOREIGN KEY (`id_ruas`) REFERENCES `ruas` (`id_ruas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_pessoais`
--

LOCK TABLES `dados_pessoais` WRITE;
/*!40000 ALTER TABLE `dados_pessoais` DISABLE KEYS */;
INSERT INTO `dados_pessoais` VALUES (1,'Masculino','1950-05-11',57,1),(2,'Masculino','1955-05-29',10,2),(3,'Feminino','1960-12-13',49,3),(4,'Masculino','1963-12-18',33,4),(5,'Feminino','2011-11-20',40,5),(6,'Feminino','1990-03-29',21,6),(7,'Masculino','2017-04-01',72,7),(8,'Feminino','1975-08-10',86,8),(9,'Feminino','1981-04-05',66,9),(10,'Feminino','1989-07-15',6,10),(11,'Feminino','2005-04-25',60,11),(12,'Feminino','1989-12-31',54,12),(13,'Feminino','1963-10-22',60,13),(14,'Feminino','1964-02-11',27,14),(15,'Masculino','2003-05-21',68,15),(16,'Masculino','1957-07-09',6,16),(17,'Feminino','1957-10-24',14,17),(18,'Feminino','1986-05-06',11,18),(19,'Masculino','1992-05-04',12,19),(20,'Masculino','1959-11-03',26,20),(21,'Masculino','1999-03-21',60,21),(22,'Masculino','2010-01-17',86,22),(23,'Masculino','1975-10-18',84,23),(24,'Feminino','1984-05-07',9,24),(25,'Masculino','1995-05-26',69,25),(26,'Feminino','1961-02-12',42,26),(27,'Feminino','2018-07-26',20,27),(28,'Masculino','1962-03-28',80,28),(29,'Feminino','1962-05-26',22,29),(30,'Masculino','2059-05-09',4,30),(31,'Feminino','2001-05-12',5,31),(32,'Feminino','1979-05-17',22,32),(33,'Masculino','2012-05-16',62,33),(34,'Feminino','1995-07-24',59,34),(35,'Feminino','1998-08-16',88,35),(36,'Masculino','2012-09-23',68,36),(37,'Masculino','2018-06-24',5,37),(38,'Masculino','2011-11-11',55,38),(39,'Feminino','2007-05-04',37,39),(40,'Feminino','1992-06-04',67,40),(41,'Feminino','2002-01-02',77,41),(42,'Feminino','1995-12-30',5,42),(43,'Feminino','2013-05-07',83,43),(44,'Feminino','1988-08-19',14,44),(45,'Masculino','1976-07-05',3,45),(46,'Feminino','1985-09-08',49,46),(47,'Feminino','1985-07-04',99,47),(48,'Feminino','1987-07-13',5,48),(49,'Masculino','2011-05-29',64,49),(50,'Feminino','2009-08-10',70,50),(51,'Masculino','1981-03-16',61,51),(52,'Feminino','1985-02-15',60,52),(53,'Masculino','2001-11-23',53,53),(54,'Feminino','1981-08-22',1,54),(55,'Feminino','1994-12-20',69,55),(56,'Feminino','1993-11-09',97,56),(57,'Feminino','1983-01-04',20,57),(58,'Feminino','2006-11-29',71,58),(59,'Feminino','1996-04-01',70,59),(60,'Masculino','1984-03-29',60,60),(61,'Feminino','1985-01-06',18,61),(62,'Feminino','1995-05-20',98,62),(63,'Masculino','1999-09-18',54,63),(64,'Masculino','1984-02-19',72,64),(65,'Masculino','1999-12-25',68,65),(66,'Feminino','2014-03-05',41,66),(67,'Masculino','1979-10-30',4,67),(68,'Feminino','1997-07-22',66,68),(69,'Feminino','2009-02-26',90,69),(70,'Masculino','1959-07-21',4,70),(71,'Masculino','1994-12-24',25,71),(72,'Feminino','2007-01-23',79,72),(73,'Masculino','2018-03-24',70,73),(74,'Feminino','1994-11-03',1,74),(75,'Feminino','1979-08-08',78,75),(76,'Feminino','1996-06-30',23,76),(77,'Masculino','2008-04-24',64,77),(78,'Masculino','1983-06-30',18,78),(79,'Feminino','1988-11-12',3,79),(80,'Feminino','1996-04-28',86,80),(81,'Feminino','1975-12-23',83,81),(82,'Masculino','2010-11-08',85,82),(83,'Masculino','1980-10-07',32,83),(84,'Feminino','2015-10-14',39,84),(85,'Masculino','2016-02-01',19,85),(86,'Masculino','1992-08-23',16,86),(87,'Feminino','1998-06-13',99,87),(88,'Masculino','1981-11-12',63,88),(89,'Masculino','1984-10-13',25,89),(90,'Masculino','2015-02-27',16,90),(91,'Feminino','1978-10-01',4,91),(92,'Masculino','1991-04-03',24,92),(93,'Masculino','2010-03-13',13,93),(94,'Feminino','2000-07-28',91,94),(95,'Masculino','2018-05-03',36,95),(96,'Masculino','1981-11-16',19,96),(97,'Feminino','2005-02-14',78,97),(98,'Feminino','1987-07-29',95,98),(99,'Feminino','1976-05-22',76,99),(100,'Masculino','2058-08-10',27,100),(101,'Masculino','1985-04-10',1,101),(102,'Feminino','1955-03-15',2,102),(103,'Masculino','1992-08-21',3,103),(104,'Feminino','1988-12-03',4,104),(105,'Masculino','1995-07-15',5,105),(106,'Feminino','1980-02-27',6,106),(107,'Masculino','1999-06-11',7,107),(108,'Feminino','1978-10-05',8,108),(109,'Masculino','1990-09-13',9,109),(110,'Feminino','1987-01-25',10,110),(111,'Masculino','1993-11-17',11,111),(112,'Feminino','1982-05-08',12,112),(113,'Masculino','1975-07-20',13,113),(114,'Feminino','1998-04-14',14,114),(115,'Masculino','1989-12-22',15,115),(116,'Feminino','1977-08-30',16,116),(117,'Masculino','1991-03-09',17,117),(118,'Feminino','1984-06-28',18,118),(119,'Masculino','1996-02-12',19,119),(120,'Feminino','1983-09-01',20,120),(121,'Masculino','2004-05-16',21,121),(122,'Feminino','2002-07-19',22,122),(123,'Masculino','2006-11-08',23,123),(124,'Feminino','2003-01-24',24,124),(125,'Masculino','2005-09-12',25,125),(126,'Feminino','2001-04-03',26,126),(127,'Masculino','2007-06-17',27,127),(128,'Feminino','2008-02-21',28,128),(129,'Masculino','1948-07-22',29,129),(130,'Feminino','1962-08-14',30,130),(131,'Masculino','1959-10-26',31,131),(132,'Feminino','1964-04-11',32,132),(133,'Masculino','1986-07-09',33,133),(134,'Feminino','1994-03-20',34,134),(135,'Masculino','1981-12-15',35,135),(136,'Feminino','1997-05-30',36,136),(137,'Masculino','1988-09-04',37,137),(138,'Feminino','1990-01-27',38,138),(139,'Masculino','1983-11-13',39,139),(140,'Feminino','1995-06-18',40,140),(141,'Masculino','1960-11-05',41,141),(142,'Feminino','1984-08-25',42,142),(143,'Masculino','1952-09-18',43,143),(144,'Feminino','1992-12-06',44,144),(145,'Masculino','1958-01-30',45,145),(146,'Feminino','2000-01-01',46,146),(147,'Masculino','2000-01-01',47,147),(148,'Feminino','2000-01-01',48,148),(149,'Masculino','2000-01-01',49,149),(150,'Feminino','2000-01-01',50,150),(151,'Masculino','2000-01-01',51,151),(152,'Feminino','2000-01-01',52,152),(153,'Masculino','2000-01-01',53,153),(154,'Feminino','2000-01-01',54,154),(155,'Masculino','2000-01-01',55,155),(156,'Feminino','2000-01-01',56,156),(157,'Masculino','2000-01-01',57,157),(158,'Feminino','2000-01-01',58,158),(159,'Masculino','2000-01-01',59,159),(160,'Feminino','2000-01-01',60,160),(161,'Masculino','2000-01-01',61,161),(162,'Feminino','2000-01-01',62,162),(163,'Masculino','2000-01-01',63,163),(164,'Feminino','2000-01-01',64,164),(165,'Masculino','2000-01-01',65,165),(166,'Feminino','2000-01-01',66,166),(167,'Masculino','2000-01-01',67,167),(168,'Feminino','2000-01-01',68,168),(169,'Masculino','2000-01-01',69,169),(170,'Feminino','2000-01-01',70,170),(171,'Masculino','2000-01-01',71,171),(172,'Feminino','2000-01-01',72,172),(173,'Masculino','2000-01-01',73,173),(174,'Feminino','2000-01-01',74,174),(175,'Masculino','2000-01-01',75,175),(176,'Feminino','2000-01-01',76,176),(177,'Masculino','2000-01-01',77,177),(178,'Feminino','2000-01-01',78,178),(179,'Masculino','2000-01-01',79,179),(180,'Feminino','2000-01-01',80,180),(181,'Masculino','2000-01-01',81,181),(182,'Feminino','2000-01-01',82,182),(183,'Masculino','2000-01-01',83,183),(184,'Feminino','2000-01-01',84,184),(185,'Masculino','2000-01-01',85,185),(186,'Feminino','2000-01-01',86,186),(187,'Masculino','2000-01-01',87,187),(188,'Feminino','2000-01-01',88,188),(189,'Masculino','2000-01-01',89,189),(190,'Feminino','2000-01-01',90,190),(191,'Masculino','2000-01-01',91,191),(192,'Feminino','2000-01-01',92,192),(193,'Masculino','2000-01-01',93,193),(194,'Feminino','2000-01-01',94,194),(195,'Masculino','2000-01-01',95,195),(196,'Feminino','2000-01-01',96,196),(197,'Masculino','2000-01-01',97,197),(198,'Feminino','2000-01-01',98,198),(199,'Masculino','2000-01-01',99,199),(200,'Feminino','2000-01-01',100,200);
/*!40000 ALTER TABLE `dados_pessoais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descontos_convenios`
--

DROP TABLE IF EXISTS `descontos_convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descontos_convenios` (
  `id_desconto_convenio` int(11) NOT NULL AUTO_INCREMENT,
  `id_convenio` int(11) NOT NULL,
  `porcentagem` decimal(5,2) NOT NULL,
  `id_artigos` int(11) NOT NULL,
  PRIMARY KEY (`id_desconto_convenio`),
  KEY `fk_DESCONTO_CONVENIO_CONVENIOS1_idx` (`id_convenio`),
  KEY `fk_DESCONTO_CONVENIO_DADOS_ARTIGOS1_idx` (`id_artigos`),
  CONSTRAINT `fk_DESCONTO_CONVENIO_CONVENIOS1` FOREIGN KEY (`id_convenio`) REFERENCES `convenios` (`id_convenio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_DESCONTO_CONVENIO_DADOS_ARTIGOS1` FOREIGN KEY (`id_artigos`) REFERENCES `dados_artigos` (`id_artigos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descontos_convenios`
--

LOCK TABLES `descontos_convenios` WRITE;
/*!40000 ALTER TABLE `descontos_convenios` DISABLE KEYS */;
INSERT INTO `descontos_convenios` VALUES (1,1,20.00,1),(2,2,15.00,2),(3,3,25.00,3),(4,4,10.00,4),(5,5,30.00,5),(6,6,12.50,6),(7,7,18.00,7),(8,8,22.00,8),(9,9,15.50,9),(10,10,28.00,10),(11,11,20.00,11),(12,12,15.00,12),(13,13,25.00,13),(14,14,10.00,14),(15,15,30.00,15),(16,16,12.50,16),(17,17,18.00,17),(18,18,22.00,18),(19,19,15.50,19),(20,20,28.00,20),(21,21,20.00,21),(22,22,15.00,22),(23,23,25.00,23),(24,24,10.00,24),(25,25,30.00,25),(26,26,12.50,26),(27,27,18.00,27),(28,28,22.00,28),(29,29,15.50,29),(30,30,28.00,30),(31,31,20.00,31),(32,32,15.00,32),(33,33,25.00,33),(34,34,10.00,34),(35,35,30.00,35),(36,36,12.50,36),(37,37,18.00,37),(38,38,22.00,38),(39,39,15.50,39),(40,40,28.00,40),(41,41,20.00,41),(42,42,15.00,42),(43,43,25.00,43),(44,44,10.00,44),(45,45,30.00,45),(46,46,12.50,46),(47,47,18.00,47),(48,48,22.00,48),(49,49,15.50,49),(50,50,28.00,50),(51,51,20.00,51),(52,52,15.00,52),(53,53,25.00,53),(54,54,10.00,54),(55,55,30.00,55),(56,56,12.50,56),(57,57,18.00,57),(58,58,22.00,58),(59,59,15.50,59),(60,60,28.00,60),(61,61,20.00,61),(62,62,15.00,62),(63,63,25.00,63),(64,64,10.00,64),(65,65,30.00,65),(66,66,12.50,66),(67,67,18.00,67),(68,68,22.00,68),(69,69,15.50,69),(70,70,28.00,70),(71,71,20.00,71),(72,72,15.00,72),(73,73,25.00,73),(74,74,10.00,74),(75,75,30.00,75),(76,76,12.50,76),(77,77,18.00,77),(78,78,22.00,78),(79,79,15.50,79),(80,80,28.00,80),(81,81,20.00,81),(82,82,15.00,82),(83,83,25.00,83),(84,84,10.00,84),(85,85,30.00,85),(86,86,12.50,86),(87,87,18.00,87),(88,88,22.00,88),(89,89,15.50,89),(90,90,28.00,90),(91,91,20.00,91),(92,92,15.00,92),(93,93,25.00,93),(94,94,10.00,94),(95,95,30.00,95),(96,96,12.50,96),(97,97,18.00,97),(98,98,22.00,98),(99,99,15.50,99),(100,100,28.00,1);
/*!40000 ALTER TABLE `descontos_convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descontos_farmacia`
--

DROP TABLE IF EXISTS `descontos_farmacia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descontos_farmacia` (
  `id_desconto_farmacia` int(11) NOT NULL AUTO_INCREMENT,
  `porcentagem` decimal(5,2) NOT NULL,
  `id_artigos` int(11) NOT NULL,
  PRIMARY KEY (`id_desconto_farmacia`),
  KEY `fk_DESCONTOS_FARMACIA_DADOS_ARTIGOS1_idx` (`id_artigos`),
  CONSTRAINT `fk_DESCONTOS_FARMACIA_DADOS_ARTIGOS1` FOREIGN KEY (`id_artigos`) REFERENCES `dados_artigos` (`id_artigos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descontos_farmacia`
--

LOCK TABLES `descontos_farmacia` WRITE;
/*!40000 ALTER TABLE `descontos_farmacia` DISABLE KEYS */;
INSERT INTO `descontos_farmacia` VALUES (1,5.00,1),(2,10.00,2),(3,15.00,3),(4,20.00,4),(5,25.00,5),(6,30.00,6),(7,7.50,7),(8,12.50,8),(9,17.50,9),(10,22.50,10),(11,5.00,11),(12,10.00,12),(13,15.00,13),(14,20.00,14),(15,25.00,15),(16,30.00,16),(17,7.50,17),(18,12.50,18),(19,17.50,19),(20,22.50,20),(21,5.00,21),(22,10.00,22),(23,15.00,23),(24,20.00,24),(25,25.00,25),(26,30.00,26),(27,7.50,27),(28,12.50,28),(29,17.50,29),(30,22.50,30),(31,5.00,31),(32,10.00,32),(33,15.00,33),(34,20.00,34),(35,25.00,35),(36,30.00,36),(37,7.50,37),(38,12.50,38),(39,17.50,39),(40,22.50,40),(41,5.00,41),(42,10.00,42),(43,15.00,43),(44,20.00,44),(45,25.00,45),(46,30.00,46),(47,7.50,47),(48,12.50,48),(49,17.50,49),(50,22.50,50),(51,5.00,51),(52,10.00,52),(53,15.00,53),(54,20.00,54),(55,25.00,55),(56,30.00,56),(57,7.50,57),(58,12.50,58),(59,17.50,59),(60,22.50,60),(61,5.00,61),(62,10.00,62),(63,15.00,63),(64,20.00,64),(65,25.00,65),(66,30.00,66),(67,7.50,67),(68,12.50,68),(69,17.50,69),(70,22.50,70),(71,5.00,71),(72,10.00,72),(73,15.00,73),(74,20.00,74),(75,25.00,75),(76,30.00,76),(77,7.50,77),(78,12.50,78),(79,17.50,79),(80,22.50,80),(81,5.00,81),(82,10.00,82),(83,15.00,83),(84,20.00,84),(85,25.00,85),(86,30.00,86),(87,7.50,87),(88,12.50,88),(89,17.50,89),(90,22.50,90),(91,5.00,91),(92,10.00,92),(93,15.00,93),(94,20.00,94),(95,25.00,95),(96,30.00,96),(97,7.50,97),(98,12.50,98),(99,17.50,99),(100,22.50,1);
/*!40000 ALTER TABLE `descontos_farmacia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entregas`
--

DROP TABLE IF EXISTS `entregas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entregas` (
  `id_entrega` int(11) NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int(11) NOT NULL,
  `id_unidade` int(11) NOT NULL,
  `data_entrega` date NOT NULL,
  PRIMARY KEY (`id_entrega`),
  KEY `fk_entrega_fornecedor` (`id_fornecedor`),
  KEY `fk_entrega_unidade` (`id_unidade`),
  CONSTRAINT `fk_entrega_fornecedor` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`id_fornecedores`),
  CONSTRAINT `fk_entrega_unidade` FOREIGN KEY (`id_unidade`) REFERENCES `unidades` (`id_unidade`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregas`
--

LOCK TABLES `entregas` WRITE;
/*!40000 ALTER TABLE `entregas` DISABLE KEYS */;
INSERT INTO `entregas` VALUES (1,2,2,'2026-01-15'),(2,2,7,'2026-02-10'),(3,16,14,'2026-02-20'),(4,18,22,'2026-03-05'),(5,21,25,'2026-03-15'),(6,23,8,'2026-04-01'),(7,26,7,'2026-04-12'),(8,62,10,'2026-04-20'),(9,86,16,'2026-05-02'),(10,89,18,'2026-05-10'),(11,2,2,'2026-05-18'),(12,21,25,'2026-05-22'),(13,62,10,'2026-06-01'),(14,16,14,'2026-06-08'),(15,26,7,'2026-06-15'),(16,16,16,'2025-04-16'),(17,17,17,'2025-05-17'),(18,18,18,'2025-06-18'),(19,19,19,'2025-07-19'),(20,20,20,'2025-08-20'),(21,21,21,'2025-09-21'),(22,22,22,'2025-10-22'),(23,23,23,'2025-11-23'),(24,24,24,'2025-12-24'),(25,25,25,'2025-01-25'),(26,26,26,'2025-02-26'),(27,27,27,'2025-03-27'),(28,28,28,'2025-04-28'),(29,29,29,'2025-05-01'),(30,30,30,'2025-06-02'),(31,31,31,'2025-07-03'),(32,32,32,'2025-08-04'),(33,33,33,'2025-09-05'),(34,34,34,'2025-10-06'),(35,35,35,'2025-11-07'),(36,36,36,'2025-12-08'),(37,37,37,'2025-01-09'),(38,38,38,'2025-02-10'),(39,39,39,'2025-03-11'),(40,40,40,'2025-04-12'),(41,41,41,'2025-05-13'),(42,42,42,'2025-06-14'),(43,43,43,'2025-07-15'),(44,44,44,'2025-08-16'),(45,45,45,'2025-09-17'),(46,46,46,'2025-10-18'),(47,47,47,'2025-11-19'),(48,48,48,'2025-12-20'),(49,49,49,'2025-01-21'),(50,50,50,'2025-02-22'),(51,51,51,'2025-03-23'),(52,52,52,'2025-04-24'),(53,53,53,'2025-05-25'),(54,54,54,'2025-06-26'),(55,55,55,'2025-07-27'),(56,56,56,'2025-08-28'),(57,57,57,'2025-09-01'),(58,58,58,'2025-10-02'),(59,59,59,'2025-11-03'),(60,60,60,'2025-12-04'),(61,61,61,'2025-01-05'),(62,62,62,'2025-02-06'),(63,63,63,'2025-03-07'),(64,64,64,'2025-04-08'),(65,65,65,'2025-05-09'),(66,66,66,'2025-06-10'),(67,67,67,'2025-07-11'),(68,68,68,'2025-08-12'),(69,69,69,'2025-09-13'),(70,70,70,'2025-10-14'),(71,71,71,'2025-11-15'),(72,72,72,'2025-12-16'),(73,73,73,'2025-01-17'),(74,74,74,'2025-02-18'),(75,75,75,'2025-03-19'),(76,76,76,'2025-04-20'),(77,77,77,'2025-05-21'),(78,78,78,'2025-06-22'),(79,79,79,'2025-07-23'),(80,80,80,'2025-08-24'),(81,81,81,'2025-09-25'),(82,82,82,'2025-10-26'),(83,83,83,'2025-11-27'),(84,84,84,'2025-12-28'),(85,85,85,'2025-01-01'),(86,86,86,'2025-02-02'),(87,87,87,'2025-03-03'),(88,88,88,'2025-04-04'),(89,89,89,'2025-05-05'),(90,1,90,'2025-06-06'),(91,2,91,'2025-07-07'),(92,3,92,'2025-08-08'),(93,4,93,'2025-09-09'),(94,5,94,'2025-10-10'),(95,6,95,'2025-11-11'),(96,7,96,'2025-12-12'),(97,8,97,'2025-01-13'),(98,9,98,'2025-02-14'),(99,10,99,'2025-03-15'),(100,11,100,'2025-04-16');
/*!40000 ALTER TABLE `entregas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `uf` char(2) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Acre','AC'),(2,'Alagoas','AL'),(3,'Amapá','AP'),(4,'Amazonas','AM'),(5,'Bahia','BA'),(6,'Ceará','CE'),(7,'Distrito Federal','DF'),(8,'Espírito Santo','ES'),(9,'Goiás','GO'),(10,'Maranhão','MA'),(11,'Mato Grosso','MT'),(12,'Mato Grosso do Sul','MS'),(13,'Minas Gerais','MG'),(14,'Pará','PA'),(15,'Paraíba','PB'),(16,'Paraná','PR'),(17,'Pernambuco','PE'),(18,'Piauí','PI'),(19,'Rio de Janeiro','RJ'),(20,'Rio Grande do Norte','RN'),(21,'Rio Grande do Sul','RS'),(22,'Rondônia','RO'),(23,'Roraima','RR'),(24,'Santa Catarina','SC'),(25,'São Paulo','SP'),(26,'Sergipe','SE'),(27,'Tocantins','TO');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoques`
--

DROP TABLE IF EXISTS `estoques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoques` (
  `id_estoque` int(11) NOT NULL AUTO_INCREMENT,
  `id_unidade` int(11) NOT NULL,
  PRIMARY KEY (`id_estoque`),
  KEY `id_unidade` (`id_unidade`),
  CONSTRAINT `id_unidade` FOREIGN KEY (`id_unidade`) REFERENCES `unidades` (`id_unidade`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoques`
--

LOCK TABLES `estoques` WRITE;
/*!40000 ALTER TABLE `estoques` DISABLE KEYS */;
INSERT INTO `estoques` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),(70,70),(71,71),(72,72),(73,73),(74,74),(75,75),(76,76),(77,77),(78,78),(79,79),(80,80),(81,81),(82,82),(83,83),(84,84),(85,85),(86,86),(87,87),(88,88),(89,89),(90,90),(91,91),(92,92),(93,93),(94,94),(95,95),(96,96),(97,97),(98,98),(99,99),(100,100);
/*!40000 ALTER TABLE `estoques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoques_dados_artigos`
--

DROP TABLE IF EXISTS `estoques_dados_artigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoques_dados_artigos` (
  `id_estoque` int(11) NOT NULL,
  `id_artigos` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `limite_minimo` int(11) NOT NULL,
  `limite_maximo` int(11) NOT NULL,
  PRIMARY KEY (`id_estoque`,`id_artigos`),
  KEY `fk_ESTOQUE_has_DADOS_ARTIGOS_DADOS_ARTIGOS1_idx` (`id_artigos`),
  KEY `fk_ESTOQUE_has_DADOS_ARTIGOS_ESTOQUE1_idx` (`id_estoque`),
  CONSTRAINT `fk_ESTOQUE_has_DADOS_ARTIGOS_DADOS_ARTIGOS1` FOREIGN KEY (`id_artigos`) REFERENCES `dados_artigos` (`id_artigos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ESTOQUE_has_DADOS_ARTIGOS_ESTOQUE1` FOREIGN KEY (`id_estoque`) REFERENCES `estoques` (`id_estoque`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoques_dados_artigos`
--

LOCK TABLES `estoques_dados_artigos` WRITE;
/*!40000 ALTER TABLE `estoques_dados_artigos` DISABLE KEYS */;
INSERT INTO `estoques_dados_artigos` VALUES (1,1,120,20,300),(1,2,5,15,250),(2,3,140,20,350),(2,4,110,15,300),(3,5,80,10,200),(3,6,150,25,400),(4,7,100,20,300),(4,8,130,20,350),(5,9,75,10,200),(5,10,28,30,450),(6,11,90,15,250),(6,12,120,20,300),(7,13,180,30,500),(7,14,100,20,300),(8,15,140,20,400),(8,16,110,15,300),(9,17,95,15,250),(9,18,130,20,350),(10,19,85,10,220),(10,20,170,30,450),(11,21,120,20,300),(11,22,100,15,250),(12,23,10,20,350),(12,24,115,15,300),(13,25,90,10,220),(13,26,160,25,450),(14,27,105,20,300),(14,28,140,20,350),(15,29,80,10,200),(15,30,175,30,500),(16,31,120,20,300),(16,32,95,15,250),(17,33,145,20,400),(17,34,4,15,300),(18,35,100,15,250),(18,36,155,25,450),(19,37,85,10,220),(19,38,135,20,350),(20,39,115,15,300),(20,40,23,30,500),(21,41,120,20,300),(21,42,95,15,250),(22,43,140,20,350),(22,44,110,15,300),(23,45,80,10,200),(23,46,150,25,400),(24,47,100,20,300),(24,48,130,20,350),(25,49,75,10,200),(25,50,160,30,450),(26,51,120,20,300),(26,52,95,15,250),(27,53,140,20,350),(27,54,110,15,300),(28,55,0,10,200),(28,56,150,25,400),(29,57,100,20,300),(29,58,130,20,350),(30,59,75,10,200),(30,60,160,30,450),(31,61,90,15,250),(31,62,120,20,300),(32,63,180,30,500),(32,64,100,20,300),(33,65,140,20,400),(33,66,9,15,300),(34,67,95,15,250),(34,68,17,20,350),(35,69,85,10,220),(35,70,170,30,450),(36,71,120,20,300),(36,72,100,15,250),(37,73,135,20,350),(37,74,115,15,300),(38,75,90,10,220),(38,76,160,25,450),(39,77,105,20,300),(39,78,140,20,350),(40,79,80,10,200),(40,80,175,30,500),(41,81,120,20,300),(41,82,95,15,250),(42,83,11,20,400),(42,84,110,15,300),(43,85,100,15,250),(43,86,155,25,450),(44,87,85,10,220),(44,88,135,20,350),(45,89,115,15,300),(45,90,170,30,500),(46,91,120,20,300),(46,92,95,15,250),(47,93,140,20,350),(47,94,110,15,300),(48,95,80,10,200),(48,96,150,25,400),(49,97,100,20,300),(49,98,130,20,350),(50,99,75,10,200),(50,100,0,30,450),(51,101,90,15,250),(51,102,120,20,300),(52,103,180,30,500),(52,104,100,20,300),(53,105,140,20,400),(53,106,110,15,300),(54,107,95,15,250),(54,108,130,20,350),(55,109,85,10,220),(55,110,170,30,450),(56,111,120,20,300),(56,112,100,15,250),(57,113,135,20,350),(57,114,115,15,300),(58,115,90,10,220),(58,116,160,25,450),(59,117,105,20,300),(59,118,140,20,350),(60,119,80,10,200),(60,120,175,30,500),(61,121,120,20,300),(61,122,95,15,250),(62,123,145,20,400),(62,124,110,15,300),(63,125,100,15,250),(63,126,155,25,450),(64,127,85,10,220),(64,128,135,20,350),(65,129,115,15,300),(65,130,170,30,500),(66,131,120,20,300),(66,132,95,15,250),(67,133,140,20,350),(67,134,110,15,300),(68,135,80,10,200),(68,136,150,25,400),(69,137,100,20,300),(69,138,15,20,350),(70,139,75,10,200),(70,140,160,30,450),(71,141,90,15,250),(71,142,120,20,300),(72,143,180,30,500),(72,144,100,20,300),(73,145,140,20,400),(73,146,110,15,300),(74,147,95,15,250),(74,148,130,20,350),(75,149,85,10,220),(75,150,170,30,450),(76,151,120,20,300),(76,152,100,15,250),(77,153,135,20,350),(77,154,115,15,300),(78,155,90,10,220),(78,156,160,25,450),(79,157,105,20,300),(79,158,140,20,350),(80,159,80,10,200),(80,160,0,30,500),(81,161,120,20,300),(81,162,95,15,250),(82,163,145,20,400),(82,164,110,15,300),(83,165,100,15,250),(83,166,155,25,450),(84,167,85,10,220),(84,168,135,20,350),(85,169,115,15,300),(85,170,27,30,500),(86,171,19,20,300),(86,172,3,15,250),(87,173,140,20,350),(87,174,110,15,300),(88,175,80,10,200),(88,176,150,25,400),(89,177,100,20,300),(89,178,130,20,350),(90,179,75,10,200),(90,180,160,30,450),(91,181,90,15,250),(91,182,120,20,300),(92,183,180,30,500),(92,184,100,20,300),(93,185,140,20,400),(93,186,12,15,300),(94,187,95,15,250),(94,188,130,20,350),(95,189,85,10,220),(95,190,170,30,450),(96,191,120,20,300),(96,192,100,15,250),(97,193,135,20,350),(97,194,115,15,300),(98,195,90,10,220),(98,196,160,25,450),(99,197,7,20,300),(99,198,140,20,350),(100,199,80,10,200);
/*!40000 ALTER TABLE `estoques_dados_artigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id_fornecedores` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cnpj` char(14) NOT NULL,
  `id_contato` int(11) NOT NULL,
  PRIMARY KEY (`id_fornecedores`,`id_contato`),
  KEY `fk_FORNECEDORES_CONTATO1_idx` (`id_contato`),
  CONSTRAINT `fk_FORNECEDORES_CONTATO1` FOREIGN KEY (`id_contato`) REFERENCES `contatos` (`id_contato`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'EMS S.A.','11111111000101',1),(2,'Eurofarma Laboratórios S.A.','11111111000102',2),(3,'Neo Química Genéricos Ltda','11111111000103',3),(4,'Medley Farmacêutica Ltda','11111111000104',4),(5,'Cimed Indústria S.A.','11111111000105',5),(6,'Aché Laboratórios Farmacêuticos S.A.','11111111000106',6),(7,'Hypera Pharma S.A.','11111111000107',7),(8,'Biolab Sanus Farmacêutica Ltda','11111111000108',8),(9,'União Química Farmacêutica Nacional S.A.','11111111000109',9),(10,'Germed Pharma Ltda','11111111000110',10),(11,'Pfizer Brasil Ltda','11111111000111',11),(12,'Bayer S.A.','11111111000112',12),(13,'Sanofi Medley Farmacêutica Ltda','11111111000113',13),(14,'Roche Diagnóstica Brasil Ltda','11111111000114',14),(15,'Abbott Laboratórios do Brasil Ltda','11111111000115',15),(16,'Johnson & Johnson do Brasil Ltda','11111111000116',16),(17,'Novartis Biociências S.A.','11111111000117',17),(18,'AstraZeneca do Brasil Ltda','11111111000118',18),(19,'Merck S.A.','11111111000119',19),(20,'GlaxoSmithKline Brasil Ltda','11111111000120',20),(21,'Colgate-Palmolive Comercial Ltda','11111111000121',21),(22,'Oral-B Brasil Ltda','11111111000122',22),(23,'Listerine Brasil Ltda','11111111000123',23),(24,'Close-Up Higiene Bucal Ltda','11111111000124',24),(25,'Sensodyne Brasil Ltda','11111111000125',25),(26,'Procter & Gamble do Brasil Ltda','11111111000126',26),(27,'Unilever Brasil Ltda','11111111000127',27),(28,'Nivea Brasil Ltda','11111111000128',28),(29,'Dove Cuidados Pessoais Ltda','11111111000129',29),(30,'Johnson Baby Brasil Ltda','11111111000130',30),(31,'Intimus Higiene Ltda','11111111000131',31),(32,'Always Brasil Ltda','11111111000132',32),(33,'Carefree Produtos Femininos Ltda','11111111000133',33),(34,'Dermacyd Higiene Íntima Ltda','11111111000134',34),(35,'Lactacyd Brasil Ltda','11111111000135',35),(36,'La Roche-Posay Brasil Ltda','11111111000136',36),(37,'Vichy Laboratórios Ltda','11111111000137',37),(38,'Avène Dermatológica Ltda','11111111000138',38),(39,'Eucerin Brasil Ltda','11111111000139',39),(40,'CeraVe Brasil Ltda','11111111000140',40),(41,'Maybelline New York Brasil Ltda','11111111000141',41),(42,'L\'Oréal Paris Brasil Ltda','11111111000142',42),(43,'Ruby Rose Cosméticos Ltda','11111111000143',43),(44,'Vult Cosmética Ltda','11111111000144',44),(45,'Quem Disse Berenice Ltda','11111111000145',45),(46,'O Boticário Fragrâncias Ltda','11111111000146',46),(47,'Natura Cosméticos S.A.','11111111000147',47),(48,'Eudora Cosméticos Ltda','11111111000148',48),(49,'Avon Cosméticos Ltda','11111111000149',49),(50,'Jequiti Cosméticos Ltda','11111111000150',50),(51,'Simple Organic Ltda','11111111000151',51),(52,'Neutrogena Brasil Ltda','11111111000152',52),(53,'Cetaphil Brasil Ltda','11111111000153',53),(54,'Bepantol Derma Ltda','11111111000154',54),(55,'Principia Dermocosméticos Ltda','11111111000155',55),(56,'Pantene Brasil Ltda','11111111000156',56),(57,'Elseve Cosméticos Ltda','11111111000157',57),(58,'TRESemmé Brasil Ltda','11111111000158',58),(59,'Salon Line Cosméticos Ltda','11111111000159',59),(60,'Skala Cosméticos Ltda','11111111000160',60),(61,'Sundown Produtos Solares Ltda','11111111000161',61),(62,'Nivea Sun Brasil Ltda','11111111000162',62),(63,'Minesol Proteção Solar Ltda','11111111000163',63),(64,'Anthelios Brasil Ltda','11111111000164',64),(65,'Episol Produtos Dermatológicos Ltda','11111111000165',65),(66,'Centrum Vitaminas Ltda','11111111000166',66),(67,'Lavitan Suplementos Ltda','11111111000167',67),(68,'Equaliv Nutrição Ltda','11111111000168',68),(69,'Redoxon Vitaminas Ltda','11111111000169',69),(70,'Vitafor Suplementos Ltda','11111111000170',70),(71,'Max Titanium Suplementos Ltda','11111111000171',71),(72,'Integralmedica S.A.','11111111000172',72),(73,'Probiótica Laboratórios Ltda','11111111000173',73),(74,'Black Skull Pharma Ltda','11111111000174',74),(75,'Growth Supplements Ltda','11111111000175',75),(76,'Nestlé Health Science Ltda','11111111000176',76),(77,'Danone Nutricia Ltda','11111111000177',77),(78,'Ensure Nutrição Especial Ltda','11111111000178',78),(79,'Nutren Brasil Ltda','11111111000179',79),(80,'Sustagen Nutrição Ltda','11111111000180',80),(81,'Herbarium Laboratório Botânico Ltda','11111111000181',81),(82,'Katiguá Fitoterápicos Ltda','11111111000182',82),(83,'Weleda do Brasil Ltda','11111111000183',83),(84,'Almeida Prado Homeopatia Ltda','11111111000184',84),(85,'Boiron Homeopatia Ltda','11111111000185',85),(86,'Cremer S.A.','11111111000186',86),(87,'Missner Produtos Médicos Ltda','11111111000187',87),(88,'Curatec Produtos Hospitalares Ltda','11111111000188',88),(89,'G-Tech Equipamentos Médicos Ltda','11111111000189',89),(90,'Omron Healthcare Brasil Ltda','11111111000190',90),(91,'Accu-Chek Roche Diabetes Care Ltda','11111111000191',91),(92,'FreeStyle Libre Abbott Ltda','11111111000192',92),(93,'Incoterm Equipamentos Ltda','11111111000193',93),(94,'Mercur S.A.','11111111000194',94),(95,'Ortobras Indústria Ltda','11111111000195',95),(96,'Johnson Baby Care Ltda','11111111000196',96),(97,'Mamypoko Brasil Ltda','11111111000197',97),(98,'Pampers Brasil Ltda','11111111000198',98),(99,'Pet Society Produtos Veterinários Ltda','11111111000199',99),(100,'Vetnil Indústria Veterinária Ltda','11111111000200',100);
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id_funcionarios` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` char(11) NOT NULL,
  `id_unidade` int(11) NOT NULL,
  `id_cargos` int(11) NOT NULL,
  `id_dados_pessoais` int(11) NOT NULL,
  PRIMARY KEY (`id_funcionarios`),
  KEY `fk_FUNCIONARIOS_FARMACIAS1_idx` (`id_unidade`),
  KEY `fk_FUNCIONARIOS_CARGOS1_idx` (`id_cargos`),
  KEY `fk_FUNCIONARIOS_DADOS_PESSOAIS1_idx` (`id_dados_pessoais`),
  CONSTRAINT `fk_FUNCIONARIOS_CARGOS1` FOREIGN KEY (`id_cargos`) REFERENCES `cargos` (`id_cargos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FUNCIONARIOS_DADOS_PESSOAIS1` FOREIGN KEY (`id_dados_pessoais`) REFERENCES `dados_pessoais` (`id_dados_pessoais`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FUNCIONARIOS_FARMACIAS1` FOREIGN KEY (`id_unidade`) REFERENCES `unidades` (`id_unidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Felipe Nascimento','39783181952',58,5,1),(2,'Thiago Oliveira','67520854814',2,20,2),(3,'Letícia Teixeira','18129604010',7,23,3),(4,'Ricardo Lima','85844723910',8,13,4),(5,'Patrícia Cardoso','19335123833',22,31,5),(6,'Henrique Barros','12668878584',18,22,6),(7,'Larissa Almeida','45234495890',4,26,7),(8,'Renato Oliveira','43856269550',16,30,8),(9,'Thiago Nascimento','72832571567',2,1,9),(10,'Lucas Henrique Lima','12661327451',5,15,10),(11,'Lucas Henrique Silva','95616827570',1,31,11),(12,'Henrique Oliveira','71286495997',7,10,12),(13,'Henrique Cardoso','50392814190',1,19,13),(14,'Bianca Lima','83175482928',14,6,14),(15,'Vinicius Cardoso','15421493924',1,33,15),(16,'Matheus Pereira','94245489795',16,20,16),(17,'Amanda Silva','00038348996',9,23,17),(18,'Gabriel Almeida','47890256472',8,19,18),(19,'Beatriz Teixeira','70827813747',20,5,19),(20,'Gustavo Silva','66093285328',60,8,20),(21,'Amanda Rocha','69441502892',5,34,21),(22,'Murilo Barros','75501709840',15,25,22),(23,'João Pedro Nascimento','20574133944',12,25,23),(24,'Vinicius Costa','02897118096',16,13,24),(25,'Patrícia Araújo','78596491597',8,19,25),(26,'Renato Oliveira','98146805868',4,11,26),(27,'Juliana Costa','11924588298',20,25,27),(28,'Amanda Almeida','83871841472',9,29,28),(29,'Caio Costa','58797604715',2,21,29),(30,'Ricardo Rocha','35162509003',4,30,30),(31,'Vinicius Mendes','22910120227',7,20,31),(32,'Larissa Teixeira','78956576703',8,30,32),(33,'Bruno Costa','34668701325',64,6,33),(34,'Matheus Souza','21233124594',10,12,34),(35,'Patrícia Almeida','24168075779',4,22,35),(36,'Amanda Oliveira','27460240282',4,26,36),(37,'Camila Souza','37531599755',9,10,37),(38,'Vinicius Barros','67810075873',1,19,38),(39,'Patrícia Souza','32401137702',48,2,39),(40,'Natália Lima','41512702053',3,35,40),(41,'João Pedro Costa','16147446128',17,35,41),(42,'Vanessa Araújo','93477298851',2,26,42),(43,'Renato Lima','69597113649',20,5,43),(44,'Isabela Nascimento','33629737977',1,8,44),(45,'Thiago Rodrigues','65927399695',3,28,45),(46,'João Pedro Ferreira','38406839466',3,35,46),(47,'Lucas Henrique Costa','25921237538',17,34,47),(48,'Murilo Souza','08420694005',13,34,48),(49,'Isabela Teixeira','64290088314',9,26,49),(50,'Vanessa Ferreira','74886082871',12,2,50),(51,'Vanessa Almeida','88268728207',16,35,51),(52,'Matheus Nascimento','77816607692',22,15,52),(53,'Bruno Almeida','00579128166',13,19,53),(54,'Carlos Eduardo Pereira','95686082431',4,12,54),(55,'Ana Beatriz Silva','92700830918',5,14,55),(56,'Mariana Rodrigues','47564539382',7,18,56),(57,'Maria Clara Araújo','88008282635',8,26,57),(58,'Caio Teixeira','44949635226',3,15,58),(59,'Ana Beatriz Lima','68019953911',9,27,59),(60,'Bianca Costa','71308129171',18,8,60),(61,'Bruno Lima','89514698738',1,21,61),(62,'Lucas Henrique Costa','05532506497',5,14,62),(63,'Eduarda Teixeira','01608480668',91,21,63),(64,'Felipe Nascimento','56706831855',4,30,64),(65,'Matheus Oliveira','67728114853',2,9,65),(66,'Renato Mendes','04157387840',99,17,66),(67,'Carlos Eduardo Almeida','62329227669',4,14,67),(68,'Bianca Barros','83316079877',40,19,68),(69,'Letícia Cardoso','09151862960',4,21,69),(70,'Larissa Oliveira','91877806316',8,31,70),(71,'Vanessa Oliveira','48846129600',11,31,71),(72,'Matheus Costa','74644847641',46,15,72),(73,'Rafael Almeida','98671478196',8,11,73),(74,'Ana Beatriz Cardoso','18130789856',6,30,74),(75,'Matheus Pereira','22355101504',7,14,75),(76,'Bianca Lima','17624219948',6,29,76),(77,'Thiago Mendes','09484319950',18,8,77),(78,'Isabela Lima','70025112148',9,1,78),(79,'Matheus Nascimento','85520544714',10,8,79),(80,'Henrique Ferreira','78064620817',3,2,80),(81,'Isabela Souza','01118154293',1,1,81),(82,'Carlos Eduardo Oliveira','78007183678',46,25,82),(83,'Felipe Nascimento','85095359619',40,5,83),(84,'Renato Teixeira','49500953309',14,12,84),(85,'Renato Souza','08370264503',10,24,85),(86,'Mariana Barros','21430641442',2,27,86),(87,'Leonardo Oliveira','03120428307',7,31,87),(88,'Bianca Almeida','72971457111',13,2,88),(89,'Vanessa Souza','81404722130',10,1,89),(90,'Larissa Nascimento','14988289967',10,12,90),(91,'Beatriz Rodrigues','16232812856',16,2,91),(92,'Rafael Silva','80723009031',9,9,92),(93,'Isabela Lima','55642504740',2,3,93),(94,'Mariana Pereira','96543944868',6,5,94),(95,'Caio Nascimento','64237903984',8,31,95),(96,'Carlos Eduardo Teixeira','41536293121',8,22,96),(97,'Letícia Nascimento','46284880753',22,12,97),(98,'Camila Nascimento','26171044978',40,3,98),(99,'Isabela Araújo','08137234852',15,13,99),(100,'Letícia Barros','21878102307',1,25,100);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_entrega`
--

DROP TABLE IF EXISTS `itens_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_entrega` (
  `id_entrega` int(11) NOT NULL,
  `id_artigos` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`id_entrega`,`id_artigos`),
  KEY `fk_item_artigo` (`id_artigos`),
  CONSTRAINT `fk_item_artigo` FOREIGN KEY (`id_artigos`) REFERENCES `dados_artigos` (`id_artigos`),
  CONSTRAINT `fk_item_entrega` FOREIGN KEY (`id_entrega`) REFERENCES `entregas` (`id_entrega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_entrega`
--

LOCK TABLES `itens_entrega` WRITE;
/*!40000 ALTER TABLE `itens_entrega` DISABLE KEYS */;
INSERT INTO `itens_entrega` VALUES (1,5,120),(1,15,80),(2,5,150),(2,25,100),(3,4,90),(3,44,110),(4,2,70),(4,3,60),(5,6,100),(5,7,130),(6,8,160),(7,9,190),(8,10,250),(9,2,95),(10,1,175),(11,5,200),(11,35,150),(12,6,180),(12,17,140),(13,10,220),(14,4,140),(14,54,120),(15,9,210),(16,16,58),(17,17,61),(18,18,64),(19,19,67),(20,20,70),(21,21,73),(22,22,76),(23,23,79),(24,24,82),(25,25,85),(26,26,88),(27,27,91),(28,28,94),(29,29,97),(30,30,100),(31,31,103),(32,32,106),(33,33,109),(34,34,112),(35,35,115),(36,36,118),(37,37,121),(38,38,124),(39,39,127),(40,40,130),(41,41,133),(42,42,136),(43,43,139),(44,44,142),(45,45,145),(46,46,148),(47,47,151),(48,48,154),(49,49,157),(50,50,160),(51,51,163),(52,52,166),(53,53,169),(54,54,172),(55,55,175),(56,56,178),(57,57,181),(58,58,184),(59,59,187),(60,60,190),(61,61,193),(62,62,196),(63,63,199),(64,64,11),(65,65,14),(66,66,17),(67,67,20),(68,68,23),(69,69,26),(70,70,29),(71,71,32),(72,72,35),(73,73,38),(74,74,41),(75,75,44),(76,76,47),(77,77,50),(78,78,53),(79,79,56),(80,80,59),(81,81,62),(82,82,65),(83,83,68),(84,84,71),(85,85,74),(86,86,77),(87,87,80),(88,88,83),(89,89,86),(90,90,89),(91,91,92),(92,92,95),(93,93,98),(94,94,101),(95,95,104),(96,96,107),(97,97,110),(98,98,113),(99,99,116),(100,100,119);
/*!40000 ALTER TABLE `itens_entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos` (
  `id_medicamento` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `generico` tinyint(4) NOT NULL,
  `principio_ativo` varchar(100) NOT NULL,
  `id_tipos_medicamentos` int(11) NOT NULL,
  PRIMARY KEY (`id_medicamento`),
  KEY `fk_MEDICAMENTO_TIPOS_MEDICAMENTOS1_idx` (`id_tipos_medicamentos`),
  CONSTRAINT `fk_MEDICAMENTO_TIPOS_MEDICAMENTOS1` FOREIGN KEY (`id_tipos_medicamentos`) REFERENCES `tipos_medicamentos` (`id_tipos_medicamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (1,'Dipirona 500mg',1,'Dipirona Monoidratada',1),(2,'Novalgina 500mg',0,'Dipirona Monoidratada',1),(3,'Paracetamol 750mg',1,'Paracetamol',7),(4,'Tylenol 750mg',0,'Paracetamol',7),(5,'Ibuprofeno 600mg',1,'Ibuprofeno',2),(6,'Alivium 600mg',0,'Ibuprofeno',2),(7,'Amoxicilina 500mg',1,'Amoxicilina',3),(8,'Amoxil 500mg',0,'Amoxicilina',3),(9,'Fluconazol 150mg',1,'Fluconazol',4),(10,'Zoltec 150mg',0,'Fluconazol',4),(11,'Aciclovir 200mg',1,'Aciclovir',5),(12,'Zovirax 200mg',0,'Aciclovir',5),(13,'Loratadina 10mg',1,'Loratadina',6),(14,'Claritin 10mg',0,'Loratadina',6),(15,'Cetirizina 10mg',1,'Cetirizina',6),(16,'Histamin 10mg',0,'Cetirizina',6),(17,'Omeprazol 20mg',1,'Omeprazol',29),(18,'Losec 20mg',0,'Omeprazol',29),(19,'Pantoprazol 40mg',1,'Pantoprazol',29),(20,'Pantozol 40mg',0,'Pantoprazol',29),(21,'Buscopan',0,'Butilbrometo de Escopolamina',30),(22,'Escopolamina',1,'Butilbrometo de Escopolamina',30),(23,'Furosemida 40mg',1,'Furosemida',31),(24,'Lasix 40mg',0,'Furosemida',31),(25,'Losartana 50mg',1,'Losartana Potássica',10),(26,'Cozaar 50mg',0,'Losartana Potássica',10),(27,'Enalapril 10mg',1,'Maleato de Enalapril',10),(28,'Renitec 10mg',0,'Maleato de Enalapril',10),(29,'Atenolol 50mg',1,'Atenolol',10),(30,'Ablok 50mg',0,'Atenolol',10),(31,'Metformina 850mg',1,'Metformina',11),(32,'Glifage 850mg',0,'Metformina',11),(33,'Gliclazida 60mg',1,'Gliclazida',11),(34,'Diamicron 60mg',0,'Gliclazida',11),(35,'Sertralina 50mg',1,'Sertralina',12),(36,'Zoloft 50mg',0,'Sertralina',12),(37,'Fluoxetina 20mg',1,'Fluoxetina',12),(38,'Prozac 20mg',0,'Fluoxetina',12),(39,'Clonazepam 2mg',1,'Clonazepam',13),(40,'Rivotril 2mg',0,'Clonazepam',13),(41,'Diazepam 10mg',1,'Diazepam',13),(42,'Valium 10mg',0,'Diazepam',13),(43,'Risperidona 2mg',1,'Risperidona',14),(44,'Risperdal 2mg',0,'Risperidona',14),(45,'Carbamazepina 200mg',1,'Carbamazepina',15),(46,'Tegretol 200mg',0,'Carbamazepina',15),(47,'Fenobarbital 100mg',1,'Fenobarbital',16),(48,'Gardenal 100mg',0,'Fenobarbital',16),(49,'Zolpidem 10mg',1,'Zolpidem',17),(50,'Stilnox 10mg',0,'Zolpidem',25),(51,'Ciclobenzaprina 10mg',1,'Ciclobenzaprina',18),(52,'Miosan 10mg',0,'Ciclobenzaprina',18),(53,'Salbutamol Spray',1,'Salbutamol',19),(54,'Aerolin Spray',0,'Salbutamol',19),(55,'Ambroxol Xarope',1,'Ambroxol',20),(56,'Mucosolvan Xarope',0,'Ambroxol',20),(57,'Acetilcisteína 600mg',1,'Acetilcisteína',21),(58,'Fluimucil 600mg',0,'Acetilcisteína',21),(59,'Dropropizina Xarope',1,'Dropropizina',22),(60,'Notuss Xarope',0,'Dropropizina',22),(61,'Oximetazolina',1,'Cloridrato de Oximetazolina',2),(62,'Afrin',0,'Cloridrato de Oximetazolina',23),(63,'Montelucaste 10mg',1,'Montelucaste',24),(64,'Singulair 10mg',0,'Montelucaste',24),(65,'Ondansetrona 8mg',1,'Ondansetrona',25),(66,'Vonau 8mg',0,'Ondansetrona',25),(67,'Loperamida 2mg',1,'Loperamida',26),(68,'Imosec 2mg',0,'Loperamida',26),(69,'Lactulose Xarope',1,'Lactulose',27),(70,'Duphalac Xarope',0,'Lactulose',27),(71,'Hidróxido de Magnésio',1,'Hidróxido de Magnésio',28),(72,'Leite de Magnésia Phillips',0,'Hidróxido de Magnésio',28),(73,'Varfarina 5mg',1,'Varfarina',9),(74,'Marevan 5mg',0,'Varfarina',9),(75,'Sinvastatina 20mg',1,'Sinvastatina',2),(76,'Zocor 20mg',0,'Sinvastatina',35),(77,'Prednisona 20mg',1,'Prednisona',44),(78,'Meticorten 20mg',0,'Prednisona',44),(79,'Colchicina 0,5mg',1,'Colchicina',2),(80,'Colchis 0,5mg',0,'Colchicina',46),(81,'Albendazol 400mg',1,'Albendazol',48),(82,'Zentel 400mg',0,'Albendazol',48),(83,'Metronidazol 250mg',1,'Metronidazol',50),(84,'Flagyl 250mg',0,'Metronidazol',50),(85,'Lidocaína Gel',1,'Lidocaína',56),(86,'Xylocaína Gel',0,'Lidocaína',56),(87,'Morfina 10mg',1,'Sulfato de Morfina',58),(88,'Dimorf 10mg',0,'Sulfato de Morfina',58),(89,'Naloxona',1,'Naloxona',59),(90,'Narcan',0,'Naloxona',59),(91,'Vitamina C 1g',1,'Ácido Ascórbico',62),(92,'Redoxon 1g',0,'Ácido Ascórbico',62),(93,'Sulfato Ferroso',1,'Sulfato Ferroso',63),(94,'Neutrofer',0,'Sulfato Ferroso',1),(95,'Ginkgo Biloba',1,'Ginkgo Biloba',64),(96,'Tebonin',0,'Ginkgo Biloba',64),(97,'Minancora',0,'Óxido de Zinco',1),(98,'Nebacetin',0,'Bacitracina + Neomicina',67),(99,'Hipoglós',0,'Retinol + Zinco',68),(100,'Diclofenaco Gel',1,'Diclofenaco Dietilamônio',69);
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Termômetro Digital'),(2,'Máscara Cirúrgica'),(3,'Álcool Gel 70%'),(4,'Curativo Band-Aid'),(5,'Soro Fisiológico'),(6,'Escova Dental'),(7,'Fio Dental'),(8,'Enxaguante Bucal'),(9,'Sabonete Antisséptico'),(10,'Protetor Solar FPS 50'),(11,'Lenço Umedecido'),(12,'Shampoo Infantil'),(13,'Fralda Infantil'),(14,'Absorvente'),(15,'Algodão Hidrófilo'),(16,'Gaze Estéril'),(17,'Micropore'),(18,'Esparadrapo'),(19,'Monitor de Pressão Digital'),(20,'Glicosímetro'),(21,'Nebulizador'),(22,'Bolsa Térmica'),(23,'Pomada para Assaduras'),(24,'Hidratante Corporal'),(25,'Protetor Labial'),(26,'Óculos de Leitura'),(27,'Vitamina C'),(28,'Multivitamínico'),(29,'Ômega 3'),(30,'Colágeno Hidrolisado'),(31,'Magnésio'),(32,'Zinco'),(33,'Melatonina'),(34,'Chá de Camomila'),(35,'Chá Verde'),(36,'Adoçante Dietético'),(37,'Barra de Proteína'),(38,'Whey Protein'),(39,'Creatina'),(40,'Isotônico'),(41,'Água Oxigenada'),(42,'Antisséptico Bucal'),(43,'Sabonete Líquido'),(44,'Sabonete Glicerinado'),(45,'Desodorante Roll-On'),(46,'Desodorante Aerosol'),(47,'Talco Antisséptico'),(48,'Creme Dental'),(49,'Escova Interdental'),(50,'Limpador de Língua'),(51,'Protetor Auricular'),(52,'Máscara N95'),(53,'Luva Descartável'),(54,'Touca Descartável'),(55,'Seringa Descartável'),(56,'Compressa de Gaze'),(57,'Atadura Elástica'),(58,'Faixa Ortopédica'),(59,'Joelheira Elástica'),(60,'Tornozeleira Elástica'),(61,'Munhequeira Elástica'),(62,'Palmilha Ortopédica'),(63,'Bengala Ajustável'),(64,'Muleta Alumínio'),(65,'Andador Adulto'),(66,'Cadeira de Banho'),(67,'Oxímetro de Pulso'),(68,'Inalador Ultrassônico'),(69,'Aspirador Nasal'),(70,'Mamadeira Anticólica'),(71,'Chupeta Ortodôntica'),(72,'Escova para Mamadeira'),(73,'Protetor de Seios'),(74,'Lenço Antisséptico'),(75,'Repelente de Insetos'),(76,'Pente Fino'),(77,'Condicionador Infantil'),(78,'Shampoo Anticaspa'),(79,'Creme para Pentear'),(80,'Óleo Corporal'),(81,'Creme Hidratante para Mãos'),(82,'Creme para Pés'),(83,'Protetor Labial FPS 30'),(84,'Removedor de Curativos'),(85,'Kit Primeiros Socorros'),(86,'Caixa Organizadora de Medicamentos'),(87,'Copo Medidor'),(88,'Pill Box Semanal'),(89,'Termômetro Infravermelho'),(90,'Umidificador de Ar'),(91,'Purificador de Água'),(92,'Balança Digital'),(93,'Balança Infantil'),(94,'Escova Massageadora'),(95,'Spray Nasal'),(96,'Lubrificante Ocular'),(97,'Solução para Lentes de Contato'),(98,'Porta Comprimidos'),(99,'Máscara de Descanso');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruas`
--

DROP TABLE IF EXISTS `ruas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruas` (
  `id_ruas` int(11) NOT NULL AUTO_INCREMENT,
  `id_bairro` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cep` char(8) NOT NULL,
  PRIMARY KEY (`id_ruas`),
  KEY `fk_RUAS_BAIRRO1_idx` (`id_bairro`),
  CONSTRAINT `fk_RUAS_BAIRRO1` FOREIGN KEY (`id_bairro`) REFERENCES `bairros` (`id_bairro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruas`
--

LOCK TABLES `ruas` WRITE;
/*!40000 ALTER TABLE `ruas` DISABLE KEYS */;
INSERT INTO `ruas` VALUES (1,1,'Avenida Paulista','01001-00'),(2,1,'Rua Augusta','01002-00'),(3,1,'Rua da Consolação','01003-00'),(4,1,'Avenida Brigadeiro Luís Antônio','01004-00'),(5,1,'Rua Haddock Lobo','01005-00'),(6,2,'Avenida Ibirapuera','01006-00'),(7,2,'Alameda dos Arapanés','01007-00'),(8,2,'Avenida Moema','01008-00'),(9,2,'Rua Gaivota','01009-00'),(10,2,'Alameda Jauaperi','01010-00'),(11,3,'Rua dos Pinheiros','01011-00'),(12,3,'Rua Teodoro Sampaio','01012-00'),(13,3,'Rua Cardeal Arcoverde','01013-00'),(14,3,'Rua Cunha Gago','01014-00'),(15,3,'Rua Artur de Azevedo','01015-00'),(16,4,'Rua Vergueiro','01016-00'),(17,4,'Rua Domingos de Morais','01017-00'),(18,4,'Rua França Pinto','01018-00'),(19,4,'Rua Joaquim Távora','01019-00'),(20,4,'Rua Humberto I','01020-00'),(21,5,'Rua Serra de Bragança','01021-00'),(22,5,'Rua Tuiuti','01022-00'),(23,5,'Rua Itapura','01023-00'),(24,5,'Rua Coelho Lisboa','01024-00'),(25,5,'Rua Apucarana','01025-00'),(26,6,'Rua Voluntários da Pátria','01026-00'),(27,6,'Rua Leite de Morais','01027-00'),(28,6,'Rua Alfredo Pujol','01028-00'),(29,6,'Rua Conselheiro Moreira de Barros','01029-00'),(30,6,'Rua Doutor César','01030-00'),(31,7,'Rua Bom Pastor','01031-00'),(32,7,'Rua Lino Coutinho','01032-00'),(33,7,'Rua Silva Bueno','01033-00'),(34,7,'Rua Cipriano Barata','01034-00'),(35,7,'Rua dos Patriotas','01035-00'),(36,8,'Avenida Professor Francisco Morato','01036-00'),(37,8,'Rua Alvarenga','01037-00'),(38,8,'Rua Camargo','01038-00'),(39,8,'Rua MMDC','01039-00'),(40,8,'Rua Sapetuba','01040-00'),(41,9,'Avenida Giovanni Gronchi','01041-00'),(42,9,'Rua Doutor Luiz Migliano','01042-00'),(43,9,'Rua Deputado João Sussumu Hirata','01043-00'),(44,9,'Rua José Ramon Urtiza','01044-00'),(45,9,'Rua Oscar Americano','01045-00'),(46,10,'Alameda Lorena','01046-00'),(47,10,'Alameda Jaú','01047-00'),(48,10,'Rua Peixoto Gomide','01048-00'),(49,10,'Rua Bela Cintra','01049-00'),(50,10,'Alameda Campinas','01050-00'),(51,11,'Avenida Atlântica','01051-00'),(52,11,'Rua Santa Clara','01052-00'),(53,11,'Rua Barata Ribeiro','01053-00'),(54,11,'Rua Figueiredo Magalhães','01054-00'),(55,11,'Rua Siqueira Campos','01055-00'),(56,12,'Rua Visconde de Pirajá','01056-00'),(57,12,'Rua Garcia D\'Ávila','01057-00'),(58,12,'Rua Joana Angélica','01058-00'),(59,12,'Rua Prudente de Morais','01059-00'),(60,12,'Rua Vinicius de Moraes','01060-00'),(61,13,'Avenida Ataulfo de Paiva','01061-00'),(62,13,'Rua Dias Ferreira','01062-00'),(63,13,'Rua General Artigas','01063-00'),(64,13,'Rua Cupertino Durão','01064-00'),(65,13,'Rua Rainha Guilhermina','01065-00'),(66,14,'Rua Conde de Bonfim','01066-00'),(67,14,'Rua Haddock Lobo','01067-00'),(68,14,'Rua Uruguai','01068-00'),(69,14,'Rua Mariz e Barros','01069-00'),(70,14,'Rua São Francisco Xavier','01070-00'),(71,15,'Rua Voluntários da Pátria','01071-00'),(72,15,'Rua São Clemente','01072-00'),(73,15,'Rua Real Grandeza','01073-00'),(74,15,'Rua Sorocaba','01074-00'),(75,15,'Rua Mena Barreto','01075-00'),(76,16,'Rua Paissandu','01076-00'),(77,16,'Rua Marquês de Abrantes','01077-00'),(78,16,'Rua Senador Vergueiro','01078-00'),(79,16,'Rua Dois de Dezembro','01079-00'),(80,16,'Rua Correia Dutra','01080-00'),(81,17,'Avenida das Américas','01081-00'),(82,17,'Avenida Ayrton Senna','01082-00'),(83,17,'Avenida Lúcio Costa','01083-00'),(84,17,'Rua Jornalista Ricardo Marinho','01084-00'),(85,17,'Rua Rachel de Queiroz','01085-00'),(86,18,'Rua das Laranjeiras','01086-00'),(87,18,'Rua General Glicério','01087-00'),(88,18,'Rua Pereira da Silva','01088-00'),(89,18,'Rua Pinheiro Machado','01089-00'),(90,18,'Rua Alice','01090-00'),(91,19,'Rua Dias da Cruz','01091-00'),(92,19,'Rua Arquias Cordeiro','01092-00'),(93,19,'Rua Carolina Santos','01093-00'),(94,19,'Rua Magalhães Couto','01094-00'),(95,19,'Rua Silva Rabelo','01095-00'),(96,20,'Avenida Lúcio Costa','01096-00'),(97,20,'Rua Glaucio Gil','01097-00'),(98,20,'Rua Gilka Machado','01098-00'),(99,20,'Rua Professor Hermes Lima','01099-00'),(100,20,'Rua Desembargador Paulo Alonso','01100-00');
/*!40000 ALTER TABLE `ruas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarios`
--

DROP TABLE IF EXISTS `salarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salarios` (
  `id_salario` int(11) NOT NULL AUTO_INCREMENT,
  `valor` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_salario`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarios`
--

LOCK TABLES `salarios` WRITE;
/*!40000 ALTER TABLE `salarios` DISABLE KEYS */;
INSERT INTO `salarios` VALUES (1,7868.00),(2,3836.00),(3,4910.00),(4,3464.00),(5,3114.00),(6,2559.00),(7,3246.00),(8,3811.00),(9,3004.00),(10,4682.00),(11,5502.00),(12,9011.00),(13,7287.00),(14,2380.00),(15,3127.00),(16,8048.00),(17,2308.00),(18,6441.00),(19,3769.00),(20,8064.00),(21,8456.00),(22,2949.00),(23,2152.00),(24,3691.00),(25,3449.00),(26,8155.00),(27,1541.00),(28,1452.00),(29,3089.00),(30,2296.00),(31,3910.00),(32,1750.00),(33,6790.00),(34,2756.00),(35,2825.00),(36,1696.00),(37,2452.00),(38,5327.00),(39,1626.00),(40,2580.00),(41,1882.00),(42,4254.00),(43,2636.00),(44,2627.00),(45,8321.00),(46,6632.00),(47,2104.00),(48,9063.00),(49,8380.00),(50,2575.00),(51,6242.00),(52,1952.00),(53,6788.00),(54,4909.00),(55,2729.00),(56,2561.00),(57,6989.00),(58,8277.00),(59,2738.00),(60,6764.00),(61,7967.00),(62,6550.00),(63,1735.00),(64,1911.00),(65,3349.00),(66,4185.00),(67,1885.00),(68,2861.00),(69,1917.00),(70,2231.00),(71,2187.00),(72,1777.00),(73,2358.00),(74,1794.00),(75,7143.00),(76,1811.00),(77,2581.00),(78,4730.00),(79,3356.00),(80,7253.00),(81,2508.00),(82,2806.00),(83,3530.00),(84,1656.00),(85,3996.00),(86,2218.00),(87,2306.00),(88,2451.00),(89,9060.00),(90,6830.00),(91,6400.00),(92,7889.00),(93,5732.00),(94,6814.00),(95,3263.00),(96,3556.00),(97,4646.00),(98,6181.00),(99,3529.00),(100,2549.00);
/*!40000 ALTER TABLE `salarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarios_cargos`
--

DROP TABLE IF EXISTS `salarios_cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salarios_cargos` (
  `SALARIO_id_salario` int(11) NOT NULL,
  `CARGOS_id_cargos` int(11) NOT NULL,
  PRIMARY KEY (`SALARIO_id_salario`,`CARGOS_id_cargos`),
  KEY `fk_SALARIO_has_CARGOS_CARGOS1_idx` (`CARGOS_id_cargos`),
  KEY `fk_SALARIO_has_CARGOS_SALARIO1_idx` (`SALARIO_id_salario`),
  CONSTRAINT `fk_SALARIO_has_CARGOS_CARGOS1` FOREIGN KEY (`CARGOS_id_cargos`) REFERENCES `cargos` (`id_cargos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_SALARIO_has_CARGOS_SALARIO1` FOREIGN KEY (`SALARIO_id_salario`) REFERENCES `salarios` (`id_salario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarios_cargos`
--

LOCK TABLES `salarios_cargos` WRITE;
/*!40000 ALTER TABLE `salarios_cargos` DISABLE KEYS */;
INSERT INTO `salarios_cargos` VALUES (1,4),(2,9),(3,8),(4,7),(5,28),(6,32),(7,17),(8,6),(9,23),(10,21),(11,18),(12,35),(13,9),(14,5),(15,9),(16,32),(17,14),(18,31),(19,9),(20,32),(21,29),(22,17),(23,24),(24,24),(25,35),(26,25),(27,11),(28,20),(29,27),(30,1),(31,4),(32,27),(33,30),(34,12),(35,8),(36,33),(37,26),(38,7),(39,19),(40,5),(41,28),(42,23),(43,24),(44,3),(45,17),(46,22),(47,10),(48,16),(49,29),(50,31),(51,7),(52,18),(53,19),(54,29),(55,22),(56,2),(57,29),(58,6),(59,1),(60,22),(61,10),(62,1),(63,17),(64,26),(65,17),(66,20),(67,1),(68,14),(69,4),(70,4),(71,3),(72,7),(73,3),(74,23),(75,5),(76,23),(77,1),(78,33),(79,32),(80,31),(81,35),(82,21),(83,27),(84,31),(85,15),(86,34),(87,6),(88,26),(89,28),(90,22),(91,33),(92,16),(93,11),(94,26),(95,3),(96,12),(97,29),(98,22),(99,5),(100,14);
/*!40000 ALTER TABLE `salarios_cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setores`
--

DROP TABLE IF EXISTS `setores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setores` (
  `id_setor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id_setor`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setores`
--

LOCK TABLES `setores` WRITE;
/*!40000 ALTER TABLE `setores` DISABLE KEYS */;
INSERT INTO `setores` VALUES (1,'Tecnologia da Informação'),(2,'Atendimento'),(3,'Farmácia'),(4,'Administrativo'),(5,'Gerência'),(6,'Caixa'),(7,'Estoque'),(8,'Compras'),(9,'Financeiro'),(10,'Supervisão'),(11,'Limpeza'),(12,'Reposição'),(13,'Recursos Humanos'),(14,'Logística'),(15,'Controladoria'),(16,'Expedição'),(17,'Contabilidade'),(18,'Comercial'),(19,'Auditoria'),(20,'Marketing'),(21,'Treinamento'),(22,'Delivery'),(23,'Segurança Patrimonial'),(24,'Jurídico'),(25,'Suporte Técnico');
/*!40000 ALTER TABLE `setores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_medicamentos`
--

DROP TABLE IF EXISTS `tipos_medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_medicamentos` (
  `id_tipos_medicamentos` int(11) NOT NULL AUTO_INCREMENT,
  `nomes` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipos_medicamentos`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_medicamentos`
--

LOCK TABLES `tipos_medicamentos` WRITE;
/*!40000 ALTER TABLE `tipos_medicamentos` DISABLE KEYS */;
INSERT INTO `tipos_medicamentos` VALUES (1,'Analgésico'),(2,'Anti-inflamatório'),(3,'Antibiótico'),(4,'Antifúngico'),(5,'Antiviral'),(6,'Antialérgico'),(7,'Antipirético'),(8,'Antisséptico'),(9,'Anticoagulante'),(10,'Anti-hipertensivo'),(11,'Antidiabético'),(12,'Antidepressivo'),(13,'Ansiolítico'),(14,'Antipsicótico'),(15,'Anticonvulsivante'),(16,'Sedativo'),(17,'Hipnótico'),(18,'Relaxante Muscular'),(19,'Broncodilatador'),(20,'Expectorante'),(21,'Mucolítico'),(22,'Antitussígeno'),(23,'Descongestionante Nasal'),(24,'Antiasmático'),(25,'Anti-térmico'),(26,'Antidiarreico'),(27,'Laxante'),(28,'Antiácido'),(29,'Protetor Gástrico'),(30,'Antiespasmódico'),(31,'Diurético'),(32,'Vasodilatador'),(33,'Cardiotônico'),(34,'Antiarrítmico'),(35,'Hipolipemiante'),(36,'Imunossupressor'),(37,'Imunomodulador'),(38,'Vacina'),(39,'Antineoplásico'),(40,'Quimioterápico'),(41,'Hormonal'),(42,'Contraceptivo'),(43,'Repositor Hormonal'),(44,'Corticosteroide'),(45,'Antirreumático'),(46,'Antigotoso'),(47,'Antiparasitário'),(48,'Anti-helmíntico'),(49,'Antimalárico'),(50,'Antiprotozoário'),(51,'Antituberculoso'),(52,'Antileproso'),(53,'Antifibrinolítico'),(54,'Hemostático'),(55,'Trombolítico'),(56,'Anestésico Local'),(57,'Anestésico Geral'),(58,'Opioide'),(59,'Antagonista Opioide'),(60,'Estimulante'),(61,'Antioxidante'),(62,'Vitamina'),(63,'Suplemento Mineral'),(64,'Fitoterápico'),(65,'Homeopático'),(66,'Dermatológico'),(67,'Pomada Medicinal'),(68,'Creme Medicinal'),(69,'Gel Medicinal'),(70,'Colírio'),(71,'Otológico'),(72,'Oftalmológico'),(73,'Ginecológico'),(74,'Urológico'),(75,'Pediátrico'),(76,'Geriátrico'),(77,'Odontológico'),(78,'Antisséptico Bucal'),(79,'Cicatrizante'),(80,'Regenerador Tecidual'),(81,'Antiacne'),(82,'Anticaspa'),(83,'Antipediculose'),(84,'Antivertiginoso'),(85,'Antienxaqueca'),(86,'Neuroprotetor'),(87,'Nootrópico'),(88,'Antianginoso'),(89,'Anti-isquêmico'),(90,'Antiobesidade'),(91,'Inibidor de Apetite'),(92,'Antitabagismo'),(93,'Antialcoólico'),(94,'Antidoto'),(95,'Radiofármaco'),(96,'Biológico'),(97,'Biossimilar'),(98,'Probiótico'),(99,'Prebiótico'),(100,'Nutracêutico');
/*!40000 ALTER TABLE `tipos_medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades`
--

DROP TABLE IF EXISTS `unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidades` (
  `id_unidade` int(11) NOT NULL AUTO_INCREMENT,
  `id_bairro` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_unidade`),
  KEY `fk_UNIDADES_BAIRROS1_idx` (`id_bairro`),
  CONSTRAINT `fk_UNIDADES_BAIRROS1` FOREIGN KEY (`id_bairro`) REFERENCES `bairros` (`id_bairro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades`
--

LOCK TABLES `unidades` WRITE;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
INSERT INTO `unidades` VALUES (1,1,'Farmavap Vila Industrial'),(2,2,'Farmavap Moema'),(3,3,'Farmavap Pinheiros'),(4,4,'Farmavap Vila Mariana'),(5,5,'Farmavap Tatuapé'),(6,6,'Farmavap Santana'),(7,7,'Farmavap Ipiranga'),(8,8,'Farmavap Butantã'),(9,9,'Farmavap Morumbi'),(10,10,'Farmavap Jardim das Indústrias'),(11,11,'Farmavap Copacabana'),(12,12,'Farmavap Ipanema'),(13,13,'Farmavap Leblon'),(14,14,'Farmavap Tijuca'),(15,15,'Farmavap Botafogo'),(16,16,'Farmavap Flamengo'),(17,17,'Farmavap Barra da Tijuca'),(18,18,'Farmavap Laranjeiras'),(19,19,'Farmavap Méier'),(20,20,'Farmavap Recreio'),(21,21,'Farmavap Savassi'),(22,22,'Farmavap Jardim Satélite'),(23,23,'Farmavap Lourdes'),(24,24,'Farmavap Buritis'),(25,25,'Farmavap Pampulha'),(26,26,'Farmavap Santa Efigênia'),(27,27,'Farmavap Sion'),(28,28,'Farmavap Serra'),(29,29,'Farmavap Gutierrez'),(30,30,'Farmavap Cidade Nova'),(31,31,'Farmavap Batel'),(32,32,'Farmavap Água Verde'),(33,33,'Farmavap Cabral'),(34,34,'Farmavap Boqueirão'),(35,35,'Farmavap Portão'),(36,36,'Farmavap Santa Felicidade'),(37,37,'Farmavap Mercês'),(38,38,'Farmavap Cajuru'),(39,39,'Farmavap Uberaba'),(40,40,'Farmavap Vila Adyana'),(41,41,'Farmavap Trindade'),(42,42,'Farmavap Agronômica'),(43,43,'Farmavap Coqueiros'),(44,44,'Farmavap Estreito'),(45,45,'Farmavap Ingleses'),(46,46,'Farmavap Pedregulho'),(47,47,'Farmavap Jurerê'),(48,48,'Farmavap Itacorubi'),(49,49,'Farmavap Saco Grande'),(50,50,'Farmavap Abraão'),(51,51,'Farmavap Moinhos de Vento'),(52,52,'Farmavap Menino Deus'),(53,53,'Farmavap Petrópolis'),(54,54,'Farmavap Cidade Baixa'),(55,55,'Farmavap Bom Fim'),(56,56,'Farmavap Partenon'),(57,57,'Farmavap Cristal'),(58,58,'Farmavap Azenha'),(59,59,'Farmavap Floresta'),(60,60,'Farmavap Sarandi'),(61,61,'Farmavap Pituba'),(62,62,'Farmavap Barra Salvador'),(63,63,'Farmavap Rio Vermelho'),(64,64,'Farmavap Graça'),(65,65,'Farmavap Ondina'),(66,66,'Farmavap Amaralina'),(67,67,'Farmavap Brotas'),(68,68,'Farmavap Federação'),(69,69,'Farmavap Cabula'),(70,70,'Farmavap Itapuã'),(71,71,'Farmavap Boa Viagem'),(72,72,'Farmavap Pina'),(73,73,'Farmavap Casa Forte'),(74,74,'Farmavap Graças'),(75,75,'Farmavap Espinheiro'),(76,76,'Farmavap Madalena'),(77,77,'Farmavap Tamarineira'),(78,78,'Farmavap Derby'),(79,79,'Farmavap Afogados'),(80,80,'Farmavap Imbiribeira'),(81,81,'Farmavap Aldeota'),(82,82,'Farmavap Meireles'),(83,83,'Farmavap Papicu'),(84,84,'Farmavap Varjota'),(85,85,'Farmavap Mucuripe'),(86,86,'Farmavap Montese'),(87,87,'Farmavap Benfica'),(88,88,'Farmavap Parangaba'),(89,89,'Farmavap Messejana'),(90,90,'Farmavap Cocó'),(91,91,'Farmavap Asa Sul'),(92,92,'Farmavap Asa Norte'),(93,93,'Farmavap Lago Sul'),(94,94,'Farmavap Lago Norte'),(95,95,'Farmavap Taguatinga Centro'),(96,96,'Farmavap Ceilândia Norte'),(97,97,'Farmavap Samambaia Sul'),(98,98,'Farmavap Gama Oeste'),(99,99,'Farmavap Sobradinho II'),(100,100,'Farmavap Guará I');
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades_clientes`
--

DROP TABLE IF EXISTS `unidades_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidades_clientes` (
  `id_unidades` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_unidades`,`id_cliente`),
  KEY `fk_FARMACIAS_has_CLIENTE_CLIENTE1_idx` (`id_cliente`),
  KEY `fk_FARMACIAS_has_CLIENTE_FARMACIAS1_idx` (`id_unidades`),
  CONSTRAINT `fk_FARMACIAS_has_CLIENTE_CLIENTE1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FARMACIAS_has_CLIENTE_FARMACIAS1` FOREIGN KEY (`id_unidades`) REFERENCES `unidades` (`id_unidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades_clientes`
--

LOCK TABLES `unidades_clientes` WRITE;
/*!40000 ALTER TABLE `unidades_clientes` DISABLE KEYS */;
INSERT INTO `unidades_clientes` VALUES (1,1),(1,100),(2,1),(2,2),(3,2),(3,3),(4,3),(4,4),(5,4),(5,5),(6,5),(6,6),(7,6),(7,7),(8,7),(8,8),(9,8),(9,9),(10,9),(10,10),(11,10),(11,11),(12,11),(12,12),(13,12),(13,13),(14,13),(14,14),(15,14),(15,15),(16,15),(16,16),(17,16),(17,17),(18,17),(18,18),(19,18),(19,19),(20,19),(20,20),(21,20),(21,21),(22,21),(22,22),(23,22),(23,23),(24,23),(24,24),(25,24),(25,25),(26,25),(26,26),(27,26),(27,27),(28,27),(28,28),(29,28),(29,29),(30,29),(30,30),(31,30),(31,31),(32,31),(32,32),(33,32),(33,33),(34,33),(34,34),(35,34),(35,35),(36,35),(36,36),(37,36),(37,37),(38,37),(38,38),(39,38),(39,39),(40,39),(40,40),(41,40),(41,41),(42,41),(42,42),(43,42),(43,43),(44,43),(44,44),(45,44),(45,45),(46,45),(46,46),(47,46),(47,47),(48,47),(48,48),(49,48),(49,49),(50,49),(50,50),(51,50),(51,51),(52,51),(52,52),(53,52),(53,53),(54,53),(54,54),(55,54),(55,55),(56,55),(56,56),(57,56),(57,57),(58,57),(58,58),(59,58),(59,59),(60,59),(60,60),(61,60),(61,61),(62,61),(62,62),(63,62),(63,63),(64,63),(64,64),(65,64),(65,65),(66,65),(66,66),(67,66),(67,67),(68,67),(68,68),(69,68),(69,69),(70,69),(70,70),(71,70),(71,71),(72,71),(72,72),(73,72),(73,73),(74,73),(74,74),(75,74),(75,75),(76,75),(76,76),(77,76),(77,77),(78,77),(78,78),(79,78),(79,79),(80,79),(80,80),(81,80),(81,81),(82,81),(82,82),(83,82),(83,83),(84,83),(84,84),(85,84),(85,85),(86,85),(86,86),(87,86),(87,87),(88,87),(88,88),(89,88),(89,89),(90,89),(90,90),(91,90),(91,91),(92,91),(92,92),(93,92),(93,93),(94,93),(94,94),(95,94),(95,95),(96,95),(96,96),(97,96),(97,97),(98,97),(98,98),(99,98),(99,99),(100,99),(100,100);
/*!40000 ALTER TABLE `unidades_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id_vendas` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `forma_pagamento` varchar(50) NOT NULL,
  `id_funcionarios` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `valor_liquido` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_vendas`),
  KEY `fk_VENDAS_FUNCIONARIOS1_idx` (`id_funcionarios`),
  KEY `fk_VENDAS_CLIENTE1_idx` (`id_cliente`),
  CONSTRAINT `fk_VENDAS_CLIENTE1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_VENDAS_FUNCIONARIOS1` FOREIGN KEY (`id_funcionarios`) REFERENCES `funcionarios` (`id_funcionarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,'2023-01-15','Pix',1,1,89.90),(2,'2023-02-03','Cartão de Crédito',2,2,145.50),(3,'2023-03-10','Dinheiro',1,3,32.75),(4,'2023-04-18','Cartão de Débito',34,14,210.40),(5,'2023-05-22','Pix',5,5,67.30),(6,'2023-06-07','Boleto',74,6,180.00),(7,'2023-07-11','Cartão de Crédito',66,100,54.90),(8,'2023-08-29','Pix',39,8,299.99),(9,'2023-09-13','Dinheiro',33,9,42.50),(10,'2023-10-05','Cartão de Débito',63,10,125.80),(11,'2023-11-17','Pix',11,11,78.60),(12,'2023-12-02','Cartão de Crédito',33,12,340.20),(13,'2023-01-28','Dinheiro',13,13,25.90),(14,'2023-02-14','Pix',14,14,91.40),(15,'2023-03-25','Cartão de Débito',15,15,150.75),(16,'2023-04-09','Boleto',16,16,220.00),(17,'2023-05-31','Pix',17,17,63.20),(18,'2023-06-16','Cartão de Crédito',18,18,410.90),(19,'2023-07-04','Dinheiro',19,19,37.80),(20,'2023-08-21','Pix',20,20,98.50),(21,'2023-09-09','Cartão de Débito',21,21,175.40),(22,'2023-10-30','Boleto',22,22,260.00),(23,'2023-11-12','Pix',1,20,84.90),(24,'2023-12-19','Cartão de Crédito',24,24,315.60),(25,'2023-01-08','Dinheiro',25,25,29.90),(26,'2024-01-10','Pix',26,26,72.50),(27,'2024-01-25','Cartão de Débito',27,27,140.80),(28,'2024-02-06','Boleto',34,28,199.90),(29,'2024-02-17','Pix',63,29,58.40),(30,'2024-03-03','Cartão de Crédito',66,30,275.30),(31,'2024-03-15','Dinheiro',20,31,46.20),(32,'2024-03-28','Pix',1,32,103.90),(33,'2024-04-09','Cartão de Débito',33,33,188.60),(34,'2024-04-22','Boleto',34,34,240.00),(35,'2024-05-11','Pix',5,100,66.70),(36,'2024-05-26','Cartão de Crédito',36,36,390.50),(37,'2024-06-14','Dinheiro',37,37,34.80),(38,'2024-06-29','Pix',39,26,119.90),(39,'2024-07-08','Cartão de Débito',39,39,160.20),(40,'2024-07-27','Boleto',74,40,285.00),(41,'2024-08-13','Pix',41,70,74.60),(42,'2024-08-30','Cartão de Crédito',42,42,320.80),(43,'2024-09-11','Dinheiro',43,70,39.90),(44,'2024-09-24','Pix',44,44,95.30),(45,'2024-10-05','Cartão de Débito',45,45,170.40),(46,'2024-10-21','Boleto',46,46,230.00),(47,'2024-11-07','Pix',47,47,81.90),(48,'2024-11-23','Cartão de Crédito',48,48,355.70),(49,'2024-12-10','Dinheiro',49,30,28.50),(50,'2024-12-28','Pix',50,50,112.40),(51,'2025-01-09','Cartão de Débito',51,51,189.90),(52,'2025-01-23','Boleto',52,52,249.00),(53,'2025-02-06','Pix',53,53,59.80),(54,'2025-02-18','Cartão de Crédito',54,54,310.50),(55,'2025-03-04','Dinheiro',1,55,44.70),(56,'2025-03-21','Pix',56,26,129.90),(57,'2025-04-03','Cartão de Débito',1,57,199.30),(58,'2025-04-16','Boleto',58,58,270.00),(59,'2025-05-02','Pix',2,59,88.40),(60,'2025-05-19','Cartão de Crédito',60,60,345.80),(61,'2025-06-07','Dinheiro',61,61,31.90),(62,'2025-06-25','Pix',33,62,104.20),(63,'2025-07-08','Cartão de Débito',63,63,178.60),(64,'2025-07-29','Boleto',64,64,295.00),(65,'2025-08-10','Pix',33,65,73.50),(66,'2025-08-27','Cartão de Crédito',66,66,332.40),(67,'2025-09-12','Dinheiro',63,67,40.80),(68,'2025-09-26','Pix',34,68,121.90),(69,'2025-10-04','Cartão de Débito',69,69,165.30),(70,'2025-10-20','Boleto',20,70,245.00),(71,'2025-11-06','Pix',17,71,79.90),(72,'2025-11-24','Cartão de Crédito',20,72,360.20),(73,'2025-12-11','Dinheiro',39,73,36.50),(74,'2025-12-22','Pix',74,74,109.70),(75,'2025-12-30','Cartão de Débito',75,75,192.80),(76,'2026-01-08','Boleto',76,76,255.00),(77,'2026-01-19','Pix',77,77,68.90),(78,'2026-02-03','Cartão de Crédito',78,70,325.40),(79,'2026-02-17','Dinheiro',79,30,41.60),(80,'2026-03-05','Pix',80,14,118.50),(81,'2026-03-20','Cartão de Débito',81,20,185.90),(82,'2026-04-02','Boleto',82,26,278.00),(83,'2026-04-15','Pix',83,30,76.30),(84,'2026-04-28','Cartão de Crédito',84,70,349.90),(85,'2026-05-09','Dinheiro',85,70,33.40),(86,'2026-05-21','Pix',86,100,126.80),(87,'2026-06-04','Cartão de Débito',87,87,172.50),(88,'2026-06-18','Boleto',88,88,239.00),(89,'2026-07-07','Pix',39,89,82.60),(90,'2026-07-22','Cartão de Crédito',90,90,370.10),(91,'2026-08-05','Dinheiro',91,91,38.90),(92,'2026-08-19','Pix',92,92,114.20),(93,'2026-09-03','Cartão de Débito',93,93,198.70),(94,'2026-09-17','Boleto',94,94,265.00),(95,'2026-10-01','Pix',95,95,69.40),(96,'2026-10-15','Cartão de Crédito',96,96,341.60),(97,'2026-11-04','Dinheiro',97,97,35.70),(98,'2026-11-18','Pix',33,98,123.90),(99,'2026-12-02','Cartão de Débito',99,99,181.40),(100,'2026-12-20','Boleto',100,100,289.00),(201,'2026-04-01','PIX',1,99,45.90),(202,'2026-05-02','Cartão Crédito',2,32,89.50),(203,'2026-06-03','Dinheiro',3,34,120.00),(204,'2026-05-04','PIX',4,98,34.90),(205,'2026-04-05','Cartão Débito',5,2,67.80),(206,'2026-05-06','PIX',6,45,150.20),(207,'2026-05-07','Dinheiro',85,22,28.50),(208,'2026-06-08','Cartão Crédito',83,22,99.90),(209,'2026-05-09','PIX',74,29,75.30),(210,'2026-04-10','Cartão Débito',72,29,42.70),(211,'2026-06-11','PIX',1,29,63.40),(212,'2026-05-12','Dinheiro',68,95,88.10),(213,'2026-04-13','Cartão Crédito',34,21,110.50),(214,'2026-04-14','PIX',1,43,39.90),(215,'2026-04-15','Cartão Débito',5,65,54.60),(216,'2026-05-16','PIX',63,2,145.00),(224,'2026-04-04','PIX',4,87,55.60),(225,'2026-04-05','Cartão Débito',5,43,81.70),(226,'2026-04-06','PIX',20,45,178.90),(227,'2026-04-07','Dinheiro',66,41,45.20),(228,'2026-04-08','Cartão Crédito',1,29,111.40),(229,'2026-04-09','PIX',44,29,92.80),(230,'2026-04-10','Cartão Débito',11,2,68.50);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_artigos`
--

DROP TABLE IF EXISTS `vendas_artigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas_artigos` (
  `id_artigos` int(11) NOT NULL,
  `id_vendas` int(11) NOT NULL,
  `quantidade_artigos` int(11) NOT NULL,
  `id_desconto_convenio` int(11) DEFAULT NULL,
  `id_desconto_farmacia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_artigos`,`id_vendas`),
  KEY `fk_DADOS_ARTIGOS_has_VENDAS_VENDAS1_idx` (`id_vendas`),
  KEY `fk_DADOS_ARTIGOS_has_VENDAS_DADOS_ARTIGOS1_idx` (`id_artigos`),
  KEY `fk_VENDAS_ARTIGOS_DESCONTOS_CONVENIOS1_idx` (`id_desconto_convenio`),
  KEY `fk_VENDAS_ARTIGOS_DESCONTOS_FARMACIA1_idx` (`id_desconto_farmacia`),
  CONSTRAINT `fk_DADOS_ARTIGOS_has_VENDAS_DADOS_ARTIGOS1` FOREIGN KEY (`id_artigos`) REFERENCES `dados_artigos` (`id_artigos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_DADOS_ARTIGOS_has_VENDAS_VENDAS1` FOREIGN KEY (`id_vendas`) REFERENCES `vendas` (`id_vendas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_VENDAS_ARTIGOS_DESCONTOS_CONVENIOS1` FOREIGN KEY (`id_desconto_convenio`) REFERENCES `descontos_convenios` (`id_desconto_convenio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_VENDAS_ARTIGOS_DESCONTOS_FARMACIA1` FOREIGN KEY (`id_desconto_farmacia`) REFERENCES `descontos_farmacia` (`id_desconto_farmacia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_artigos`
--

LOCK TABLES `vendas_artigos` WRITE;
/*!40000 ALTER TABLE `vendas_artigos` DISABLE KEYS */;
INSERT INTO `vendas_artigos` VALUES (1,62,1,NULL,NULL),(2,32,1,NULL,2),(3,1,2,15,NULL),(4,42,1,NULL,NULL),(5,3,4,22,NULL),(5,72,1,NULL,NULL),(6,52,1,NULL,NULL),(7,21,2,NULL,7),(7,92,1,NULL,NULL),(8,14,4,14,8),(8,82,1,NULL,NULL),(9,70,2,NULL,NULL),(10,38,1,NULL,10),(11,26,1,NULL,11),(12,11,3,33,NULL),(12,90,2,NULL,NULL),(13,50,2,NULL,NULL),(14,5,3,7,25),(15,60,2,NULL,NULL),(16,30,2,NULL,NULL),(17,46,2,17,17),(18,18,2,18,18),(18,80,2,NULL,NULL),(19,56,4,19,19),(20,9,2,9,9),(20,86,2,20,20),(21,36,4,21,21),(22,76,4,22,22),(23,66,2,23,23),(24,24,2,NULL,NULL),(24,96,4,24,24),(25,78,1,NULL,25),(26,40,2,NULL,NULL),(27,2,1,NULL,12),(27,98,1,NULL,27),(28,58,1,NULL,28),(29,16,1,29,NULL),(30,48,1,NULL,30),(31,68,1,NULL,31),(32,28,3,NULL,NULL),(33,88,1,NULL,33),(34,34,3,NULL,34),(35,54,3,35,NULL),(36,20,5,36,NULL),(37,64,3,37,NULL),(38,7,1,40,NULL),(39,44,3,39,NULL),(40,84,3,40,NULL),(41,23,3,41,41),(42,74,3,42,NULL),(44,94,3,44,NULL),(45,12,2,NULL,45),(45,100,2,NULL,45),(49,31,5,49,NULL),(51,91,4,51,51),(52,6,2,NULL,31),(53,61,4,53,53),(54,17,3,NULL,54),(55,41,4,55,55),(56,81,5,56,56),(57,51,5,57,57),(58,25,4,58,NULL),(59,71,4,59,59),(60,37,2,NULL,NULL),(61,77,2,NULL,NULL),(62,97,2,NULL,NULL),(63,15,2,NULL,NULL),(64,47,4,NULL,NULL),(65,87,4,NULL,NULL),(66,57,2,NULL,NULL),(67,10,1,NULL,NULL),(68,67,5,NULL,NULL),(70,27,2,70,NULL),(71,93,2,NULL,71),(72,43,2,NULL,72),(73,73,2,NULL,73),(74,53,2,NULL,74),(75,8,5,NULL,18),(76,33,2,76,NULL),(77,83,2,NULL,77),(79,63,2,NULL,79),(81,49,3,81,NULL),(82,19,1,NULL,NULL),(83,99,3,83,NULL),(84,39,3,84,NULL),(85,69,3,85,NULL),(86,89,3,86,NULL),(87,29,1,87,87),(88,59,3,88,NULL),(89,4,1,NULL,NULL),(90,79,3,90,NULL),(91,13,1,NULL,NULL),(92,65,1,NULL,NULL),(93,35,1,NULL,NULL),(94,85,1,NULL,NULL),(95,22,1,NULL,NULL),(96,55,1,NULL,NULL),(97,75,1,NULL,NULL),(98,45,1,NULL,NULL),(99,95,1,NULL,NULL),(103,201,2,15,NULL),(103,230,2,15,NULL),(105,203,4,22,NULL),(105,228,4,22,NULL),(108,214,4,14,8),(112,211,3,33,NULL),(114,205,3,7,25),(114,226,3,7,25),(120,209,2,9,9),(127,202,1,NULL,12),(127,229,1,NULL,12),(129,216,1,29,NULL),(138,207,1,40,NULL),(138,224,1,40,NULL),(145,212,2,NULL,45),(152,206,2,NULL,31),(152,225,2,NULL,31),(163,215,2,NULL,NULL),(167,210,1,NULL,NULL),(175,208,5,NULL,18),(189,204,1,NULL,NULL),(189,227,1,NULL,NULL),(191,213,1,NULL,NULL);
/*!40000 ALTER TABLE `vendas_artigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_clientes_idosos_mais_compras_semestre`
--

DROP TABLE IF EXISTS `vw_clientes_idosos_mais_compras_semestre`;
/*!50001 DROP VIEW IF EXISTS `vw_clientes_idosos_mais_compras_semestre`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_clientes_idosos_mais_compras_semestre` AS SELECT 
 1 AS `id_cliente`,
 1 AS `cliente`,
 1 AS `idade`,
 1 AS `bairro`,
 1 AS `total_compras`,
 1 AS `valor_total_gasto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_faturamento_unidades_5_anos`
--

DROP TABLE IF EXISTS `vw_faturamento_unidades_5_anos`;
/*!50001 DROP VIEW IF EXISTS `vw_faturamento_unidades_5_anos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_faturamento_unidades_5_anos` AS SELECT 
 1 AS `cidade`,
 1 AS `unidade`,
 1 AS `2022`,
 1 AS `2023`,
 1 AS `2024`,
 1 AS `2025`,
 1 AS `2026`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_fornecedores_maior_volume_regiao_sul`
--

DROP TABLE IF EXISTS `vw_fornecedores_maior_volume_regiao_sul`;
/*!50001 DROP VIEW IF EXISTS `vw_fornecedores_maior_volume_regiao_sul`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_fornecedores_maior_volume_regiao_sul` AS SELECT 
 1 AS `id_fornecedores`,
 1 AS `fornecedor`,
 1 AS `volume_entregue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_funcionarios_masculinos_mais_vendas`
--

DROP TABLE IF EXISTS `vw_funcionarios_masculinos_mais_vendas`;
/*!50001 DROP VIEW IF EXISTS `vw_funcionarios_masculinos_mais_vendas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_funcionarios_masculinos_mais_vendas` AS SELECT 
 1 AS `id_funcionarios`,
 1 AS `funcionario`,
 1 AS `id_unidade`,
 1 AS `unidade`,
 1 AS `total_vendas`,
 1 AS `faturamento_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_media_vendas_categoria`
--

DROP TABLE IF EXISTS `vw_media_vendas_categoria`;
/*!50001 DROP VIEW IF EXISTS `vw_media_vendas_categoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_media_vendas_categoria` AS SELECT 
 1 AS `categoria`,
 1 AS `total_vendas`,
 1 AS `total_itens_vendidos`,
 1 AS `media_itens_por_venda`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_medicamentos_abaixo_estoque_minimo`
--

DROP TABLE IF EXISTS `vw_medicamentos_abaixo_estoque_minimo`;
/*!50001 DROP VIEW IF EXISTS `vw_medicamentos_abaixo_estoque_minimo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_medicamentos_abaixo_estoque_minimo` AS SELECT 
 1 AS `medicamento`,
 1 AS `quantidade`,
 1 AS `limite_minimo`,
 1 AS `faltante`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_medicamentos_genericos_estoque`
--

DROP TABLE IF EXISTS `vw_medicamentos_genericos_estoque`;
/*!50001 DROP VIEW IF EXISTS `vw_medicamentos_genericos_estoque`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_medicamentos_genericos_estoque` AS SELECT 
 1 AS `id_medicamento`,
 1 AS `medicamento`,
 1 AS `quantidade_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_medicamentos_proximos_vencimento`
--

DROP TABLE IF EXISTS `vw_medicamentos_proximos_vencimento`;
/*!50001 DROP VIEW IF EXISTS `vw_medicamentos_proximos_vencimento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_medicamentos_proximos_vencimento` AS SELECT 
 1 AS `id_medicamento`,
 1 AS `medicamento`,
 1 AS `tipo_medicamento`,
 1 AS `id_artigos`,
 1 AS `vencimento`,
 1 AS `dias_para_vencer`,
 1 AS `quantidade_estoque`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_top_medicamento_unidade`
--

DROP TABLE IF EXISTS `vw_top_medicamento_unidade`;
/*!50001 DROP VIEW IF EXISTS `vw_top_medicamento_unidade`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_top_medicamento_unidade` AS SELECT 
 1 AS `bairro`,
 1 AS `unidade`,
 1 AS `medicamento`,
 1 AS `total_vendido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_vendas_com_desconto_convenio_2026`
--

DROP TABLE IF EXISTS `vw_vendas_com_desconto_convenio_2026`;
/*!50001 DROP VIEW IF EXISTS `vw_vendas_com_desconto_convenio_2026`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_vendas_com_desconto_convenio_2026` AS SELECT 
 1 AS `id_vendas`,
 1 AS `data`,
 1 AS `id_unidade`,
 1 AS `unidade`,
 1 AS `id_cliente`,
 1 AS `cliente`,
 1 AS `valor_liquido`,
 1 AS `tipo_desconto`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_clientes_idosos_mais_compras_semestre`
--

/*!50001 DROP VIEW IF EXISTS `vw_clientes_idosos_mais_compras_semestre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_clientes_idosos_mais_compras_semestre` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nome` AS `cliente`,timestampdiff(YEAR,`dp`.`data_nascimento`,curdate()) AS `idade`,`b`.`nome` AS `bairro`,count(`v`.`id_vendas`) AS `total_compras`,sum(`v`.`valor_liquido`) AS `valor_total_gasto` from (((((`clientes` `c` join `dados_pessoais` `dp` on(`c`.`id_dados_pessoais` = `dp`.`id_dados_pessoais`)) join `ruas` `r` on(`dp`.`id_ruas` = `r`.`id_ruas`)) join `bairros` `b` on(`r`.`id_bairro` = `b`.`id_bairro`)) join `cidades` `ci` on(`b`.`id_cidade` = `ci`.`id_cidade`)) join `vendas` `v` on(`c`.`id_cliente` = `v`.`id_cliente`)) where timestampdiff(YEAR,`dp`.`data_nascimento`,curdate()) >= 60 and `b`.`regiao` = 'Centro' and `ci`.`nome` = 'São José dos Campos' and `v`.`data` >= curdate() - interval 6 month group by `c`.`id_cliente`,`c`.`nome`,`dp`.`data_nascimento`,`b`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_faturamento_unidades_5_anos`
--

/*!50001 DROP VIEW IF EXISTS `vw_faturamento_unidades_5_anos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_faturamento_unidades_5_anos` AS select `c`.`nome` AS `cidade`,`u`.`nome` AS `unidade`,sum(case when year(`v`.`data`) = year(curdate()) - 4 then `v`.`valor_liquido` else 0 end) AS `2022`,sum(case when year(`v`.`data`) = year(curdate()) - 3 then `v`.`valor_liquido` else 0 end) AS `2023`,sum(case when year(`v`.`data`) = year(curdate()) - 2 then `v`.`valor_liquido` else 0 end) AS `2024`,sum(case when year(`v`.`data`) = year(curdate()) - 1 then `v`.`valor_liquido` else 0 end) AS `2025`,sum(case when year(`v`.`data`) = year(curdate()) then `v`.`valor_liquido` else 0 end) AS `2026` from ((((`vendas` `v` join `funcionarios` `f` on(`v`.`id_funcionarios` = `f`.`id_funcionarios`)) join `unidades` `u` on(`f`.`id_unidade` = `u`.`id_unidade`)) join `bairros` `b` on(`u`.`id_bairro` = `b`.`id_bairro`)) join `cidades` `c` on(`b`.`id_cidade` = `c`.`id_cidade`)) where `c`.`nome` in ('São José dos Campos','Jacareí','Caçapava','Taubaté') group by `c`.`nome`,`u`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_fornecedores_maior_volume_regiao_sul`
--

/*!50001 DROP VIEW IF EXISTS `vw_fornecedores_maior_volume_regiao_sul`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_fornecedores_maior_volume_regiao_sul` AS select `f`.`id_fornecedores` AS `id_fornecedores`,`f`.`nome` AS `fornecedor`,sum(`ie`.`quantidade`) AS `volume_entregue` from (((((`fornecedores` `f` join `entregas` `e` on(`f`.`id_fornecedores` = `e`.`id_fornecedor`)) join `itens_entrega` `ie` on(`e`.`id_entrega` = `ie`.`id_entrega`)) join `unidades` `u` on(`e`.`id_unidade` = `u`.`id_unidade`)) join `bairros` `b` on(`u`.`id_bairro` = `b`.`id_bairro`)) join `cidades` `c` on(`b`.`id_cidade` = `c`.`id_cidade`)) where `b`.`regiao` = 'Sul' and `c`.`nome` = 'São José dos Campos' group by `f`.`id_fornecedores`,`f`.`nome` order by sum(`ie`.`quantidade`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_funcionarios_masculinos_mais_vendas`
--

/*!50001 DROP VIEW IF EXISTS `vw_funcionarios_masculinos_mais_vendas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_funcionarios_masculinos_mais_vendas` AS select `f`.`id_funcionarios` AS `id_funcionarios`,`f`.`nome` AS `funcionario`,`u`.`id_unidade` AS `id_unidade`,`u`.`nome` AS `unidade`,count(`v`.`id_vendas`) AS `total_vendas`,sum(`v`.`valor_liquido`) AS `faturamento_total` from (((`funcionarios` `f` join `dados_pessoais` `dp` on(`f`.`id_dados_pessoais` = `dp`.`id_dados_pessoais`)) join `vendas` `v` on(`f`.`id_funcionarios` = `v`.`id_funcionarios`)) join `unidades` `u` on(`f`.`id_unidade` = `u`.`id_unidade`)) where `dp`.`genero` = 'Masculino' and `v`.`data` >= curdate() - interval 6 month group by `f`.`id_funcionarios`,`f`.`nome`,`u`.`id_unidade`,`u`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_media_vendas_categoria`
--

/*!50001 DROP VIEW IF EXISTS `vw_media_vendas_categoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_media_vendas_categoria` AS select `c`.`nome_tipos` AS `categoria`,count(distinct `v`.`id_vendas`) AS `total_vendas`,sum(`va`.`quantidade_artigos`) AS `total_itens_vendidos`,round(avg(`va`.`quantidade_artigos`),2) AS `media_itens_por_venda` from (((`categorias` `c` join `dados_artigos` `da` on(`c`.`id_categoria` = `da`.`id_categoria`)) join `vendas_artigos` `va` on(`da`.`id_artigos` = `va`.`id_artigos`)) join `vendas` `v` on(`va`.`id_vendas` = `v`.`id_vendas`)) where `v`.`data` >= curdate() - interval 12 month group by `c`.`id_categoria`,`c`.`nome_tipos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_medicamentos_abaixo_estoque_minimo`
--

/*!50001 DROP VIEW IF EXISTS `vw_medicamentos_abaixo_estoque_minimo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_medicamentos_abaixo_estoque_minimo` AS select `m`.`nome` AS `medicamento`,`ea`.`quantidade` AS `quantidade`,`ea`.`limite_minimo` AS `limite_minimo`,`ea`.`limite_minimo` - `ea`.`quantidade` AS `faltante` from ((`estoques_dados_artigos` `ea` join `dados_artigos` `da` on(`da`.`id_artigos` = `ea`.`id_artigos`)) join `medicamentos` `m` on(`m`.`id_medicamento` = `da`.`id_medicamento`)) where `ea`.`quantidade` < `ea`.`limite_minimo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_medicamentos_genericos_estoque`
--

/*!50001 DROP VIEW IF EXISTS `vw_medicamentos_genericos_estoque`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_medicamentos_genericos_estoque` AS select `m`.`id_medicamento` AS `id_medicamento`,`m`.`nome` AS `medicamento`,sum(`ea`.`quantidade`) AS `quantidade_total` from ((`medicamentos` `m` join `dados_artigos` `da` on(`da`.`id_medicamento` = `m`.`id_medicamento`)) join `estoques_dados_artigos` `ea` on(`ea`.`id_artigos` = `da`.`id_artigos`)) where `m`.`generico` = 1 and `ea`.`quantidade` > 0 group by `m`.`id_medicamento`,`m`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_medicamentos_proximos_vencimento`
--

/*!50001 DROP VIEW IF EXISTS `vw_medicamentos_proximos_vencimento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_medicamentos_proximos_vencimento` AS select `m`.`id_medicamento` AS `id_medicamento`,`m`.`nome` AS `medicamento`,`tm`.`nomes` AS `tipo_medicamento`,`da`.`id_artigos` AS `id_artigos`,`da`.`vencimento` AS `vencimento`,to_days(`da`.`vencimento`) - to_days(curdate()) AS `dias_para_vencer`,sum(`ea`.`quantidade`) AS `quantidade_estoque` from (((`medicamentos` `m` join `tipos_medicamentos` `tm` on(`m`.`id_tipos_medicamentos` = `tm`.`id_tipos_medicamentos`)) join `dados_artigos` `da` on(`m`.`id_medicamento` = `da`.`id_medicamento`)) join `estoques_dados_artigos` `ea` on(`da`.`id_artigos` = `ea`.`id_artigos`)) where `tm`.`nomes` in ('Anti-inflamatório','Analgésico','Anti-térmico') and `da`.`vencimento` between curdate() and curdate() + interval 30 day group by `m`.`id_medicamento`,`m`.`nome`,`tm`.`nomes`,`da`.`id_artigos`,`da`.`vencimento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_top_medicamento_unidade`
--

/*!50001 DROP VIEW IF EXISTS `vw_top_medicamento_unidade`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_top_medicamento_unidade` AS with vendas_por_medicamento as (select `b`.`nome` AS `bairro`,`u`.`id_unidade` AS `id_unidade`,`u`.`nome` AS `unidade`,`m`.`nome` AS `medicamento`,sum(`va`.`quantidade_artigos`) AS `total_vendido` from ((((((`vendas` `v` join `funcionarios` `f` on(`v`.`id_funcionarios` = `f`.`id_funcionarios`)) join `unidades` `u` on(`f`.`id_unidade` = `u`.`id_unidade`)) join `bairros` `b` on(`u`.`id_bairro` = `b`.`id_bairro`)) join `vendas_artigos` `va` on(`v`.`id_vendas` = `va`.`id_vendas`)) join `dados_artigos` `da` on(`va`.`id_artigos` = `da`.`id_artigos`)) join `medicamentos` `m` on(`da`.`id_medicamento` = `m`.`id_medicamento`)) where `b`.`nome` in ('Jardim das Indústrias','Jardim Satélite','Vila Industrial','Santana','Vila Adyana') and `v`.`data` >= curdate() - interval 90 day group by `b`.`nome`,`u`.`id_unidade`,`u`.`nome`,`m`.`nome`), ranking as (select `vendas_por_medicamento`.`bairro` AS `bairro`,`vendas_por_medicamento`.`id_unidade` AS `id_unidade`,`vendas_por_medicamento`.`unidade` AS `unidade`,`vendas_por_medicamento`.`medicamento` AS `medicamento`,`vendas_por_medicamento`.`total_vendido` AS `total_vendido`,row_number() over ( partition by `vendas_por_medicamento`.`id_unidade` order by `vendas_por_medicamento`.`total_vendido` desc,`vendas_por_medicamento`.`medicamento`) AS `posicao` from `vendas_por_medicamento`)select `ranking`.`bairro` AS `bairro`,`ranking`.`unidade` AS `unidade`,`ranking`.`medicamento` AS `medicamento`,`ranking`.`total_vendido` AS `total_vendido` from `ranking` where `ranking`.`posicao` = 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vendas_com_desconto_convenio_2026`
--

/*!50001 DROP VIEW IF EXISTS `vw_vendas_com_desconto_convenio_2026`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vendas_com_desconto_convenio_2026` AS select distinct `v`.`id_vendas` AS `id_vendas`,`v`.`data` AS `data`,`u`.`id_unidade` AS `id_unidade`,`u`.`nome` AS `unidade`,`c`.`id_cliente` AS `id_cliente`,`c`.`nome` AS `cliente`,`v`.`valor_liquido` AS `valor_liquido`,case when `dc`.`id_desconto_convenio` is not null and `df`.`id_desconto_farmacia` is not null then 'Convênio e Farmácia' when `dc`.`id_desconto_convenio` is not null then 'Convênio' when `df`.`id_desconto_farmacia` is not null then 'Desconto Farmácia' end AS `tipo_desconto` from ((((((((`vendas` `v` join `clientes` `c` on(`v`.`id_cliente` = `c`.`id_cliente`)) join `funcionarios` `f` on(`v`.`id_funcionarios` = `f`.`id_funcionarios`)) join `unidades` `u` on(`f`.`id_unidade` = `u`.`id_unidade`)) join `bairros` `b` on(`u`.`id_bairro` = `b`.`id_bairro`)) join `cidades` `ci` on(`b`.`id_cidade` = `ci`.`id_cidade`)) join `vendas_artigos` `va` on(`v`.`id_vendas` = `va`.`id_vendas`)) left join `descontos_convenios` `dc` on(`va`.`id_desconto_convenio` = `dc`.`id_desconto_convenio`)) left join `descontos_farmacia` `df` on(`va`.`id_desconto_farmacia` = `df`.`id_desconto_farmacia`)) where `ci`.`nome` = 'São José dos Campos' and year(`v`.`data`) = 2026 and (`dc`.`id_desconto_convenio` is not null or `df`.`id_desconto_farmacia` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-10 17:27:06
