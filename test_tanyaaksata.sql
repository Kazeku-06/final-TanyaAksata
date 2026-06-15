/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test_tanyaaksata
-- ------------------------------------------------------
-- Server version	10.11.14-MariaDB-0+deb12u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `badges`
--

DROP TABLE IF EXISTS `badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `badges` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `required_points` int(11) DEFAULT NULL,
  `achievement_type` varchar(255) DEFAULT NULL,
  `threshold` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `badges_name_unique` (`name`),
  UNIQUE KEY `badges_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badges`
--

LOCK TABLES `badges` WRITE;
/*!40000 ALTER TABLE `badges` DISABLE KEYS */;
/*!40000 ALTER TABLE `badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmarks` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `post_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bookmarks_user_id_post_id_unique` (`user_id`,`post_id`),
  KEY `bookmarks_post_id_foreign` (`post_id`),
  CONSTRAINT `bookmarks_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
INSERT INTO `bookmarks` VALUES
('019eb70d-6824-71f7-af17-8302c10c24ff','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019eb119-d152-71b7-ac66-50a477334319','2026-06-11 07:19:29','2026-06-11 07:19:29'),
('019ebfda-c1b1-7263-8885-ddf828ed4906','019ebfa9-bcb3-7028-a760-db9abea0b5c6','019ebad6-18af-71fc-b5e2-8f05ea653ad7','2026-06-13 00:20:45','2026-06-13 00:20:45'),
('019ebff0-2907-711d-81d9-2f3eb2d2ad31','019ebfa9-bcb3-7028-a760-db9abea0b5c6','019eb41f-19b9-7339-9db0-1d8af6215c2a','2026-06-13 00:44:07','2026-06-13 00:44:07'),
('019ebff0-51ad-7246-b269-ecc10b71b249','019ebfa9-bcb3-7028-a760-db9abea0b5c6','019eb119-d152-71b7-ac66-50a477334319','2026-06-13 00:44:18','2026-06-13 00:44:18');
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` bigint(20) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES
('tanya-aksata-cache-011c88956cfb5e9bddc15d20898bf6a8','i:2;',1781403803),
('tanya-aksata-cache-011c88956cfb5e9bddc15d20898bf6a8:timer','i:1781403803;',1781403803),
('tanya-aksata-cache-0120eb6d2790a62dbe23ce8d900ada6f','i:1;',1781355800),
('tanya-aksata-cache-0120eb6d2790a62dbe23ce8d900ada6f:timer','i:1781355800;',1781355800),
('tanya-aksata-cache-023dd614af665b27f6d8ec8dedf46afa','i:3;',1781401079),
('tanya-aksata-cache-023dd614af665b27f6d8ec8dedf46afa:timer','i:1781401079;',1781401079),
('tanya-aksata-cache-0252acf92b2006b517e20f68471d7292','i:1;',1781343316),
('tanya-aksata-cache-0252acf92b2006b517e20f68471d7292:timer','i:1781343316;',1781343316),
('tanya-aksata-cache-036614931926fc93517af0a34c1e215c','i:2;',1781400863),
('tanya-aksata-cache-036614931926fc93517af0a34c1e215c:timer','i:1781400863;',1781400863),
('tanya-aksata-cache-03720c45ec522f695e1687342696f84a','i:1;',1781401271),
('tanya-aksata-cache-03720c45ec522f695e1687342696f84a:timer','i:1781401271;',1781401271),
('tanya-aksata-cache-07f8fbbfeec5eb01126e9128749f1d11','i:1;',1781399455),
('tanya-aksata-cache-07f8fbbfeec5eb01126e9128749f1d11:timer','i:1781399455;',1781399455),
('tanya-aksata-cache-09dcc6a84245e2820223f5712c400377','i:2;',1781330657),
('tanya-aksata-cache-09dcc6a84245e2820223f5712c400377:timer','i:1781330657;',1781330657),
('tanya-aksata-cache-0e2455561eee2bfb98a26b6975829fcc','i:1;',1781323928),
('tanya-aksata-cache-0e2455561eee2bfb98a26b6975829fcc:timer','i:1781323928;',1781323928),
('tanya-aksata-cache-0e554d761d72a7d08f6b6d407ad600cb','i:1;',1781349640),
('tanya-aksata-cache-0e554d761d72a7d08f6b6d407ad600cb:timer','i:1781349640;',1781349640),
('tanya-aksata-cache-12c8f5b86e50942fd707de3e565184a0','i:3;',1781428198),
('tanya-aksata-cache-12c8f5b86e50942fd707de3e565184a0:timer','i:1781428198;',1781428198),
('tanya-aksata-cache-13104ee6882c2206bad61bb3c74e9437','i:9;',1781343364),
('tanya-aksata-cache-13104ee6882c2206bad61bb3c74e9437:timer','i:1781343364;',1781343364),
('tanya-aksata-cache-161557334b581ef8cf7c626644d59984','i:4;',1781401842),
('tanya-aksata-cache-161557334b581ef8cf7c626644d59984:timer','i:1781401842;',1781401842),
('tanya-aksata-cache-16a2b4a78ddd8650cabebe556f1a068d','i:1;',1781253774),
('tanya-aksata-cache-16a2b4a78ddd8650cabebe556f1a068d:timer','i:1781253774;',1781253774),
('tanya-aksata-cache-1848021108a723ff00e8e579cf3dc0be','i:2;',1781355855),
('tanya-aksata-cache-1848021108a723ff00e8e579cf3dc0be:timer','i:1781355855;',1781355855),
('tanya-aksata-cache-19c222c2c624f65d9ac000c8ca143a0e','i:2;',1781398386),
('tanya-aksata-cache-19c222c2c624f65d9ac000c8ca143a0e:timer','i:1781398386;',1781398386),
('tanya-aksata-cache-1aa3264b0ac13812c4342ff440932e28','i:2;',1781396835),
('tanya-aksata-cache-1aa3264b0ac13812c4342ff440932e28:timer','i:1781396835;',1781396835),
('tanya-aksata-cache-1abe196adc2d4bd143d5f0fd47218c46','i:3;',1781401757),
('tanya-aksata-cache-1abe196adc2d4bd143d5f0fd47218c46:timer','i:1781401757;',1781401757),
('tanya-aksata-cache-1ba3cbfaf00347ad789a92cd3a295d49','i:2;',1781396901),
('tanya-aksata-cache-1ba3cbfaf00347ad789a92cd3a295d49:timer','i:1781396901;',1781396901),
('tanya-aksata-cache-1c146d2a3983657a5bda16d1f75caa4c','i:2;',1781367309),
('tanya-aksata-cache-1c146d2a3983657a5bda16d1f75caa4c:timer','i:1781367309;',1781367309),
('tanya-aksata-cache-1e90b8182581232e094f49b57fdd96a6','i:1;',1781370626),
('tanya-aksata-cache-1e90b8182581232e094f49b57fdd96a6:timer','i:1781370626;',1781370626),
('tanya-aksata-cache-20efe87243b52382a98101179fd77342','i:2;',1781402519),
('tanya-aksata-cache-20efe87243b52382a98101179fd77342:timer','i:1781402519;',1781402519),
('tanya-aksata-cache-2114933ec620950da360f5a7f8fccb39','i:4;',1781259933),
('tanya-aksata-cache-2114933ec620950da360f5a7f8fccb39:timer','i:1781259933;',1781259933),
('tanya-aksata-cache-21d1ce7888d76c34acd10189b2a7b3c5','i:13;',1781394931),
('tanya-aksata-cache-21d1ce7888d76c34acd10189b2a7b3c5:timer','i:1781394931;',1781394931),
('tanya-aksata-cache-22407a9a198c33c29af1d63ae95a6dff','i:2;',1781399131),
('tanya-aksata-cache-22407a9a198c33c29af1d63ae95a6dff:timer','i:1781399131;',1781399131),
('tanya-aksata-cache-2288bf605e8ab7aa32acd63c93e7a39a','i:2;',1781335776),
('tanya-aksata-cache-2288bf605e8ab7aa32acd63c93e7a39a:timer','i:1781335776;',1781335776),
('tanya-aksata-cache-2440f25c4be6b94096f76420a70cd56a','i:1;',1781403769),
('tanya-aksata-cache-2440f25c4be6b94096f76420a70cd56a:timer','i:1781403769;',1781403769),
('tanya-aksata-cache-258c78344d1f6f39b92db9bfd52681fa','i:2;',1781403816),
('tanya-aksata-cache-258c78344d1f6f39b92db9bfd52681fa:timer','i:1781403816;',1781403816),
('tanya-aksata-cache-27344fe91009dde7b0393e2bfee11fb3','i:4;',1781352878),
('tanya-aksata-cache-27344fe91009dde7b0393e2bfee11fb3:timer','i:1781352878;',1781352878),
('tanya-aksata-cache-289aa17af4ceb1eda1f25b9c87fcb2f2','i:3;',1781401122),
('tanya-aksata-cache-289aa17af4ceb1eda1f25b9c87fcb2f2:timer','i:1781401122;',1781401122),
('tanya-aksata-cache-2bc22b0261dc818eb06e6a208d959f09','i:1;',1781401826),
('tanya-aksata-cache-2bc22b0261dc818eb06e6a208d959f09:timer','i:1781401826;',1781401826),
('tanya-aksata-cache-2c6f8375d3119d6c44e8993256b28c36','i:1;',1781398881),
('tanya-aksata-cache-2c6f8375d3119d6c44e8993256b28c36:timer','i:1781398881;',1781398881),
('tanya-aksata-cache-2f794c15c375fd71b53a4bc1f28e540c','i:1;',1781331558),
('tanya-aksata-cache-2f794c15c375fd71b53a4bc1f28e540c:timer','i:1781331558;',1781331558),
('tanya-aksata-cache-307b7c2a63e09114c5dbdfda2443a11d','i:1;',1781353598),
('tanya-aksata-cache-307b7c2a63e09114c5dbdfda2443a11d:timer','i:1781353598;',1781353598),
('tanya-aksata-cache-3102bc8a1a52f792c49a699b51d7acd1','i:2;',1781402581),
('tanya-aksata-cache-3102bc8a1a52f792c49a699b51d7acd1:timer','i:1781402581;',1781402581),
('tanya-aksata-cache-324ab0bf08dd6a1983d6ae2f3ac5f45b','i:2;',1781394727),
('tanya-aksata-cache-324ab0bf08dd6a1983d6ae2f3ac5f45b:timer','i:1781394727;',1781394727),
('tanya-aksata-cache-337d8d7a8801ba813f62d54d46484499','i:1;',1781361801),
('tanya-aksata-cache-337d8d7a8801ba813f62d54d46484499:timer','i:1781361801;',1781361801),
('tanya-aksata-cache-3659fa83f69989c62c01b425944efcef','i:1;',1781428140),
('tanya-aksata-cache-3659fa83f69989c62c01b425944efcef:timer','i:1781428140;',1781428140),
('tanya-aksata-cache-37a92e5bedad3e6d69426abc53bcb109','i:1;',1781400803),
('tanya-aksata-cache-37a92e5bedad3e6d69426abc53bcb109:timer','i:1781400803;',1781400803),
('tanya-aksata-cache-45a2460c6d7435e4e94bbf82ea06f357','i:4;',1781403803),
('tanya-aksata-cache-45a2460c6d7435e4e94bbf82ea06f357:timer','i:1781403803;',1781403803),
('tanya-aksata-cache-45bc7b4e09bcab3603e513e90b46d3f6','i:4;',1781401246),
('tanya-aksata-cache-45bc7b4e09bcab3603e513e90b46d3f6:timer','i:1781401246;',1781401246),
('tanya-aksata-cache-4a80c4d85213b743f1b6904553861dfe','i:2;',1781332049),
('tanya-aksata-cache-4a80c4d85213b743f1b6904553861dfe:timer','i:1781332049;',1781332049),
('tanya-aksata-cache-4ab20d3301f29cf138bf9ff7b3b210bb','i:1;',1781395374),
('tanya-aksata-cache-4ab20d3301f29cf138bf9ff7b3b210bb:timer','i:1781395374;',1781395374),
('tanya-aksata-cache-4b9890e795a842c21ee1fa5f50142c7e','i:2;',1781330205),
('tanya-aksata-cache-4b9890e795a842c21ee1fa5f50142c7e:timer','i:1781330205;',1781330205),
('tanya-aksata-cache-4fef847e6e2c15439e6df997488e12b5','i:2;',1781429062),
('tanya-aksata-cache-4fef847e6e2c15439e6df997488e12b5:timer','i:1781429062;',1781429062),
('tanya-aksata-cache-51aa600fa2647712912f76356b208870','i:1;',1781400258),
('tanya-aksata-cache-51aa600fa2647712912f76356b208870:timer','i:1781400258;',1781400258),
('tanya-aksata-cache-51d3bf8aff868047d29894465fcd05ba','i:1;',1781400514),
('tanya-aksata-cache-51d3bf8aff868047d29894465fcd05ba:timer','i:1781400514;',1781400514),
('tanya-aksata-cache-54900916b4b47dcd95cfb876e15a3c4f','i:4;',1781367451),
('tanya-aksata-cache-54900916b4b47dcd95cfb876e15a3c4f:timer','i:1781367451;',1781367451),
('tanya-aksata-cache-556a5744dedaf6d72ea427cb5f9ae296','i:2;',1781398910),
('tanya-aksata-cache-556a5744dedaf6d72ea427cb5f9ae296:timer','i:1781398910;',1781398910),
('tanya-aksata-cache-56c9a41f912047c926d9072de88e6413','i:1;',1781400087),
('tanya-aksata-cache-56c9a41f912047c926d9072de88e6413:timer','i:1781400087;',1781400087),
('tanya-aksata-cache-574b06a3bff29fade763f140a8618be1','i:1;',1781310089),
('tanya-aksata-cache-574b06a3bff29fade763f140a8618be1:timer','i:1781310089;',1781310089),
('tanya-aksata-cache-585e3253d169f14623c31988dbf0510c','i:1;',1781335096),
('tanya-aksata-cache-585e3253d169f14623c31988dbf0510c:timer','i:1781335096;',1781335096),
('tanya-aksata-cache-5a31efe5599686c9887860b1e5ef17b3','i:1;',1781310138),
('tanya-aksata-cache-5a31efe5599686c9887860b1e5ef17b3:timer','i:1781310138;',1781310138),
('tanya-aksata-cache-5ef4a947e16a985aba5cafab3505fa6b','i:1;',1781330043),
('tanya-aksata-cache-5ef4a947e16a985aba5cafab3505fa6b:timer','i:1781330043;',1781330043),
('tanya-aksata-cache-5f5de9bd325a841bbc23df0c53cd1813','i:2;',1781401975),
('tanya-aksata-cache-5f5de9bd325a841bbc23df0c53cd1813:timer','i:1781401975;',1781401975),
('tanya-aksata-cache-60b27d9b2277ae48c015be5753708f85','i:1;',1781343300),
('tanya-aksata-cache-60b27d9b2277ae48c015be5753708f85:timer','i:1781343300;',1781343300),
('tanya-aksata-cache-63f4563a2bc70aba8f989ca1202309b3','i:1;',1781401649),
('tanya-aksata-cache-63f4563a2bc70aba8f989ca1202309b3:timer','i:1781401649;',1781401649),
('tanya-aksata-cache-67504e804a437e3764ff88424d6737f8','i:1;',1781395374),
('tanya-aksata-cache-67504e804a437e3764ff88424d6737f8:timer','i:1781395374;',1781395374),
('tanya-aksata-cache-68963addeb7fff5de2eb34be13a0d4af','i:1;',1781401798),
('tanya-aksata-cache-68963addeb7fff5de2eb34be13a0d4af:timer','i:1781401798;',1781401798),
('tanya-aksata-cache-6acfe85112acd3e4ecba0cb6d092ca77','i:3;',1781402825),
('tanya-aksata-cache-6acfe85112acd3e4ecba0cb6d092ca77:timer','i:1781402825;',1781402825),
('tanya-aksata-cache-6be72680e93be6f88a3326f248246444','i:2;',1781396819),
('tanya-aksata-cache-6be72680e93be6f88a3326f248246444:timer','i:1781396819;',1781396819),
('tanya-aksata-cache-6c7f15be20b7f19bab2dd36fabfe579d','i:2;',1781396910),
('tanya-aksata-cache-6c7f15be20b7f19bab2dd36fabfe579d:timer','i:1781396910;',1781396910),
('tanya-aksata-cache-6d12b4420e0362284fa2f3e1e9ec33fe','i:2;',1781260094),
('tanya-aksata-cache-6d12b4420e0362284fa2f3e1e9ec33fe:timer','i:1781260094;',1781260094),
('tanya-aksata-cache-708287fd4c782364cab0d3ef845c976c','i:1;',1781359897),
('tanya-aksata-cache-708287fd4c782364cab0d3ef845c976c:timer','i:1781359897;',1781359897),
('tanya-aksata-cache-708c9ee77f6bc2501d7c89ee7491c61d','i:5;',1781401127),
('tanya-aksata-cache-708c9ee77f6bc2501d7c89ee7491c61d:timer','i:1781401127;',1781401127),
('tanya-aksata-cache-717c88a036b763bbddccd0ccb0df14ce','i:1;',1781338803),
('tanya-aksata-cache-717c88a036b763bbddccd0ccb0df14ce:timer','i:1781338803;',1781338803),
('tanya-aksata-cache-718fb88817f46257efe6601cea327878','i:1;',1781350011),
('tanya-aksata-cache-718fb88817f46257efe6601cea327878:timer','i:1781350011;',1781350011),
('tanya-aksata-cache-73afb511d3e41772e3ac6ba1cc5f1857','i:3;',1781428135),
('tanya-aksata-cache-73afb511d3e41772e3ac6ba1cc5f1857:timer','i:1781428135;',1781428135),
('tanya-aksata-cache-743e0eca3cb2bf59aaa86ae5689c7038','i:1;',1781403772),
('tanya-aksata-cache-743e0eca3cb2bf59aaa86ae5689c7038:timer','i:1781403772;',1781403772),
('tanya-aksata-cache-74da071f3a4f6ea2682a7b2ca4266378','i:1;',1781349572),
('tanya-aksata-cache-74da071f3a4f6ea2682a7b2ca4266378:timer','i:1781349572;',1781349572),
('tanya-aksata-cache-76b29cd4cd8ceaa644575301f3d90a85','i:1;',1781395607),
('tanya-aksata-cache-76b29cd4cd8ceaa644575301f3d90a85:timer','i:1781395607;',1781395607),
('tanya-aksata-cache-7707faf42adaa4617546e20501a8231c','i:1;',1781403812),
('tanya-aksata-cache-7707faf42adaa4617546e20501a8231c:timer','i:1781403812;',1781403812),
('tanya-aksata-cache-7a86aa963029eb9d2b48b7016cec4f70','i:1;',1781427426),
('tanya-aksata-cache-7a86aa963029eb9d2b48b7016cec4f70:timer','i:1781427426;',1781427426),
('tanya-aksata-cache-7dfaf6ece809dc8f7154a2ce9418a13c','i:2;',1781394905),
('tanya-aksata-cache-7dfaf6ece809dc8f7154a2ce9418a13c:timer','i:1781394905;',1781394905),
('tanya-aksata-cache-7e84d459e6becf24e3cf0265cfd1c2ac','i:1;',1781396245),
('tanya-aksata-cache-7e84d459e6becf24e3cf0265cfd1c2ac:timer','i:1781396245;',1781396245),
('tanya-aksata-cache-7f2783819e2bc6288224ba74277c8cb2','i:2;',1781400803),
('tanya-aksata-cache-7f2783819e2bc6288224ba74277c8cb2:timer','i:1781400803;',1781400803),
('tanya-aksata-cache-815ae2dbc92f46719d6b12502a446f1a','i:2;',1781400951),
('tanya-aksata-cache-815ae2dbc92f46719d6b12502a446f1a:timer','i:1781400951;',1781400951),
('tanya-aksata-cache-8b63c9a63965c70cd2d2a25912987877','i:6;',1781398360),
('tanya-aksata-cache-8b63c9a63965c70cd2d2a25912987877:timer','i:1781398360;',1781398360),
('tanya-aksata-cache-8ba2ef31950f3360a6274020a31084bf','i:3;',1781330230),
('tanya-aksata-cache-8ba2ef31950f3360a6274020a31084bf:timer','i:1781330230;',1781330230),
('tanya-aksata-cache-8bbdfd2540fcd864481bc4774e790f30','i:1;',1781360076),
('tanya-aksata-cache-8bbdfd2540fcd864481bc4774e790f30:timer','i:1781360076;',1781360076),
('tanya-aksata-cache-8bef726ae870e1303b85342469521c85','i:1;',1781399456),
('tanya-aksata-cache-8bef726ae870e1303b85342469521c85:timer','i:1781399456;',1781399456),
('tanya-aksata-cache-8e16e3df01dae454c82e4220a534d1f6','i:1;',1781367126),
('tanya-aksata-cache-8e16e3df01dae454c82e4220a534d1f6:timer','i:1781367126;',1781367126),
('tanya-aksata-cache-8e338fb2e4508026ed3168e6a06b69fc','i:3;',1781402822),
('tanya-aksata-cache-8e338fb2e4508026ed3168e6a06b69fc:timer','i:1781402822;',1781402822),
('tanya-aksata-cache-8ec51c6bb027b38c89e848ada37fedb7','i:1;',1781398133),
('tanya-aksata-cache-8ec51c6bb027b38c89e848ada37fedb7:timer','i:1781398133;',1781398133),
('tanya-aksata-cache-937b31db6981834ae45e7c4bb2248bfc','i:1;',1781371031),
('tanya-aksata-cache-937b31db6981834ae45e7c4bb2248bfc:timer','i:1781371031;',1781371031),
('tanya-aksata-cache-94c987cc8b76a8871e954a0bca8fca2c','i:1;',1781400052),
('tanya-aksata-cache-94c987cc8b76a8871e954a0bca8fca2c:timer','i:1781400052;',1781400052),
('tanya-aksata-cache-9598347fc783f2d9c1e91f035871f4c2','i:1;',1781343401),
('tanya-aksata-cache-9598347fc783f2d9c1e91f035871f4c2:timer','i:1781343401;',1781343401),
('tanya-aksata-cache-974df712fee99b65695b17f0e45c3189','i:6;',1781400321),
('tanya-aksata-cache-974df712fee99b65695b17f0e45c3189:timer','i:1781400321;',1781400321),
('tanya-aksata-cache-99708198f1ca0c5ac1931db38b16605a','i:4;',1781401959),
('tanya-aksata-cache-99708198f1ca0c5ac1931db38b16605a:timer','i:1781401959;',1781401959),
('tanya-aksata-cache-99e85b348120bb6eb0e5d623d5c24af7','i:1;',1781369319),
('tanya-aksata-cache-99e85b348120bb6eb0e5d623d5c24af7:timer','i:1781369319;',1781369319),
('tanya-aksata-cache-9a3d6618296757cd14ad48c6213c369c','i:2;',1781399234),
('tanya-aksata-cache-9a3d6618296757cd14ad48c6213c369c:timer','i:1781399234;',1781399234),
('tanya-aksata-cache-9b70326a425827d85488507515e951f4','i:2;',1781324684),
('tanya-aksata-cache-9b70326a425827d85488507515e951f4:timer','i:1781324684;',1781324684),
('tanya-aksata-cache-9d3026197e953e2cecc56e173113a39a','i:3;',1781401196),
('tanya-aksata-cache-9d3026197e953e2cecc56e173113a39a:timer','i:1781401196;',1781401196),
('tanya-aksata-cache-9e2c3626e6285b6aaa500dce329e22a5','i:2;',1781330412),
('tanya-aksata-cache-9e2c3626e6285b6aaa500dce329e22a5:timer','i:1781330412;',1781330412),
('tanya-aksata-cache-a17caa899fc2edc7ab4140e8df28552f','i:5;',1781401078),
('tanya-aksata-cache-a17caa899fc2edc7ab4140e8df28552f:timer','i:1781401078;',1781401078),
('tanya-aksata-cache-a44542f91338e5c677e419f2844fbdfe','i:8;',1781341235),
('tanya-aksata-cache-a44542f91338e5c677e419f2844fbdfe:timer','i:1781341235;',1781341235),
('tanya-aksata-cache-a8a63bfb988b4442dc2b1cc68fabcb95','i:1;',1781398046),
('tanya-aksata-cache-a8a63bfb988b4442dc2b1cc68fabcb95:timer','i:1781398046;',1781398046),
('tanya-aksata-cache-abc23cc0daa73d8937a57999764914c9','i:1;',1781336757),
('tanya-aksata-cache-abc23cc0daa73d8937a57999764914c9:timer','i:1781336757;',1781336757),
('tanya-aksata-cache-adb300cb9693cd23f62ee4b8823139b5','i:1;',1781396245),
('tanya-aksata-cache-adb300cb9693cd23f62ee4b8823139b5:timer','i:1781396245;',1781396245),
('tanya-aksata-cache-af8d84a2180da8fe00223c829fb73e65','i:1;',1781367067),
('tanya-aksata-cache-af8d84a2180da8fe00223c829fb73e65:timer','i:1781367067;',1781367067),
('tanya-aksata-cache-afed80b24c1446e4c1f9f5f2277fea71','i:2;',1781399916),
('tanya-aksata-cache-afed80b24c1446e4c1f9f5f2277fea71:timer','i:1781399916;',1781399916),
('tanya-aksata-cache-b37cbe944601d266f626fdee3919f055','i:1;',1781401246),
('tanya-aksata-cache-b37cbe944601d266f626fdee3919f055:timer','i:1781401246;',1781401246),
('tanya-aksata-cache-b3b420e4b4c4d6dfc7b73e1c6c9eb298','i:1;',1781401649),
('tanya-aksata-cache-b3b420e4b4c4d6dfc7b73e1c6c9eb298:timer','i:1781401649;',1781401649),
('tanya-aksata-cache-b5aead40dc8c0a5e6767b11f965af385','i:1;',1781394900),
('tanya-aksata-cache-b5aead40dc8c0a5e6767b11f965af385:timer','i:1781394900;',1781394900),
('tanya-aksata-cache-b6131cc8df3a8dc87ce3377741d320f7','i:1;',1781398881),
('tanya-aksata-cache-b6131cc8df3a8dc87ce3377741d320f7:timer','i:1781398881;',1781398881),
('tanya-aksata-cache-ba7b2b9e9e0b40017af6a5431913425e','i:3;',1781394683),
('tanya-aksata-cache-ba7b2b9e9e0b40017af6a5431913425e:timer','i:1781394683;',1781394683),
('tanya-aksata-cache-bc62beb19b317e38683f964199a68a15','i:1;',1781395307),
('tanya-aksata-cache-bc62beb19b317e38683f964199a68a15:timer','i:1781395307;',1781395307),
('tanya-aksata-cache-be4953890421d568f9f506c83038b6da','i:2;',1781427605),
('tanya-aksata-cache-be4953890421d568f9f506c83038b6da:timer','i:1781427605;',1781427605),
('tanya-aksata-cache-be68253be59313a508fa35225ba35822','i:6;',1781399985),
('tanya-aksata-cache-be68253be59313a508fa35225ba35822:timer','i:1781399985;',1781399985),
('tanya-aksata-cache-c39ad3377b7de7f3b0aa211200d08033','i:2;',1781399903),
('tanya-aksata-cache-c39ad3377b7de7f3b0aa211200d08033:timer','i:1781399903;',1781399903),
('tanya-aksata-cache-c3f497e30516e607732bcf4eed1491dc','i:1;',1781323891),
('tanya-aksata-cache-c3f497e30516e607732bcf4eed1491dc:timer','i:1781323891;',1781323891),
('tanya-aksata-cache-c4f2f02c42cb441b8c743042b07ac0f5','i:1;',1781399790),
('tanya-aksata-cache-c4f2f02c42cb441b8c743042b07ac0f5:timer','i:1781399790;',1781399790),
('tanya-aksata-cache-c89c6bc35847ed7ddc50daf30c444e9d','i:2;',1781402731),
('tanya-aksata-cache-c89c6bc35847ed7ddc50daf30c444e9d:timer','i:1781402731;',1781402731),
('tanya-aksata-cache-c939cd5332e8329eb27abaf331843b9e','i:2;',1781400196),
('tanya-aksata-cache-c939cd5332e8329eb27abaf331843b9e:timer','i:1781400196;',1781400196),
('tanya-aksata-cache-categories:flat','a:7:{i:0;a:8:{s:2:\"id\";s:36:\"019eb630-4a30-7277-843f-c459b5c74fe1\";s:4:\"name\";s:24:\"CypressCat 1781173060345\";s:4:\"slug\";s:24:\"cypresscat-1781173060345\";s:11:\"description\";s:22:\"Kategori untuk testing\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-11T10:17:58.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T10:17:58.000000Z\";}i:1;a:8:{s:2:\"id\";s:36:\"019eb0e5-806b-70fa-b2aa-ce25f93452c6\";s:4:\"name\";s:8:\"Database\";s:4:\"slug\";s:8:\"database\";s:11:\"description\";s:48:\"MySQL, PostgreSQL, MongoDB, dan desain database.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}i:2;a:8:{s:2:\"id\";s:36:\"019eb0e5-806d-708f-9a73-030f130dec13\";s:4:\"name\";s:6:\"DevOps\";s:4:\"slug\";s:6:\"devops\";s:11:\"description\";s:49:\"Docker, Kubernetes, CI/CD, dan server management.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}i:3;a:8:{s:2:\"id\";s:36:\"019eb0e5-806a-7399-a218-e9d96a59dee7\";s:4:\"name\";s:9:\"Framework\";s:4:\"slug\";s:9:\"framework\";s:11:\"description\";s:51:\"Laravel, React, Vue, Django, dan framework lainnya.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}i:4;a:8:{s:2:\"id\";s:36:\"019ebad4-0e79-7317-b90c-f98e8e550a53\";s:4:\"name\";s:6:\"ngamok\";s:4:\"slug\";s:6:\"ngamok\";s:11:\"description\";s:4:\"onar\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-12T07:55:20.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:55:20.000000Z\";}i:5;a:8:{s:2:\"id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:4:\"name\";s:11:\"Pemrograman\";s:4:\"slug\";s:11:\"pemrograman\";s:11:\"description\";s:66:\"Diskusi seputar bahasa pemrograman, algoritma, dan best practices.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}i:6;a:8:{s:2:\"id\";s:36:\"019eb0e5-806e-70a4-884d-5e21a67da339\";s:4:\"name\";s:5:\"UI/UX\";s:4:\"slug\";s:5:\"ui-ux\";s:11:\"description\";s:41:\"Desain antarmuka dan pengalaman pengguna.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}}',1781428701),
('tanya-aksata-cache-cb24cfe1f5a862afd043a421c6c9ed29','i:4;',1781399367),
('tanya-aksata-cache-cb24cfe1f5a862afd043a421c6c9ed29:timer','i:1781399367;',1781399367),
('tanya-aksata-cache-cba92c6c089c8f89030c1ee75a7a3501','i:1;',1781332550),
('tanya-aksata-cache-cba92c6c089c8f89030c1ee75a7a3501:timer','i:1781332550;',1781332550),
('tanya-aksata-cache-ce098f5d868ea85be7cb28072f9a56c3','i:3;',1781397022),
('tanya-aksata-cache-ce098f5d868ea85be7cb28072f9a56c3:timer','i:1781397022;',1781397022),
('tanya-aksata-cache-ce30befc6c0322fa4b2498b024225f0a','i:1;',1781370747),
('tanya-aksata-cache-ce30befc6c0322fa4b2498b024225f0a:timer','i:1781370747;',1781370747),
('tanya-aksata-cache-d32e10cb4290fa4774ffcce2f7c0cb17','i:2;',1781353926),
('tanya-aksata-cache-d32e10cb4290fa4774ffcce2f7c0cb17:timer','i:1781353926;',1781353926),
('tanya-aksata-cache-d3dbf74e22b107bc20f084a7250ea8ec','i:2;',1781395307),
('tanya-aksata-cache-d3dbf74e22b107bc20f084a7250ea8ec:timer','i:1781395307;',1781395307),
('tanya-aksata-cache-d524dd1ceea6962eaf3574491b57fd85','i:2;',1781399837),
('tanya-aksata-cache-d524dd1ceea6962eaf3574491b57fd85:timer','i:1781399837;',1781399837),
('tanya-aksata-cache-d67742b8d62e5b52d742af557bfa10a8','i:1;',1781395607),
('tanya-aksata-cache-d67742b8d62e5b52d742af557bfa10a8:timer','i:1781395607;',1781395607),
('tanya-aksata-cache-d7764a52a0b004360a4b672b3f922d27','i:1;',1781401757),
('tanya-aksata-cache-d7764a52a0b004360a4b672b3f922d27:timer','i:1781401757;',1781401757),
('tanya-aksata-cache-d7a3c708a86cdaa451dc279ed8068019','i:1;',1781427426),
('tanya-aksata-cache-d7a3c708a86cdaa451dc279ed8068019:timer','i:1781427426;',1781427426),
('tanya-aksata-cache-d8c052931d09fa84df5d784f4070b647','i:2;',1781399358),
('tanya-aksata-cache-d8c052931d09fa84df5d784f4070b647:timer','i:1781399358;',1781399358),
('tanya-aksata-cache-daa358464a6000f8359998c523be7dd3','i:4;',1781399853),
('tanya-aksata-cache-daa358464a6000f8359998c523be7dd3:timer','i:1781399853;',1781399853),
('tanya-aksata-cache-dd1ef9a66486a46ef9ab0d12e6af76a5','i:1;',1781396910),
('tanya-aksata-cache-dd1ef9a66486a46ef9ab0d12e6af76a5:timer','i:1781396910;',1781396910),
('tanya-aksata-cache-df87f03a0b15fcfe81840f97ea531030','i:1;',1781399790),
('tanya-aksata-cache-df87f03a0b15fcfe81840f97ea531030:timer','i:1781399790;',1781399790),
('tanya-aksata-cache-e209ec0f378a970b8407a1e9f10aa9fe','i:1;',1781428200),
('tanya-aksata-cache-e209ec0f378a970b8407a1e9f10aa9fe:timer','i:1781428200;',1781428200),
('tanya-aksata-cache-e33feacaf4850e69fec93b5cd793362c','i:1;',1781349624),
('tanya-aksata-cache-e33feacaf4850e69fec93b5cd793362c:timer','i:1781349624;',1781349624),
('tanya-aksata-cache-e42d2ded43bedd848b06e8310f733f53','i:2;',1781398890),
('tanya-aksata-cache-e42d2ded43bedd848b06e8310f733f53:timer','i:1781398890;',1781398890),
('tanya-aksata-cache-e6e70e2c353527d8bc3854e9bbb122ff','i:2;',1781395212),
('tanya-aksata-cache-e6e70e2c353527d8bc3854e9bbb122ff:timer','i:1781395212;',1781395212),
('tanya-aksata-cache-e7162b8929c426998bf5e00269603586','i:1;',1781360464),
('tanya-aksata-cache-e7162b8929c426998bf5e00269603586:timer','i:1781360464;',1781360464),
('tanya-aksata-cache-e99ad58119301654340674b2fd8e68ca','i:2;',1781403768),
('tanya-aksata-cache-e99ad58119301654340674b2fd8e68ca:timer','i:1781403768;',1781403768),
('tanya-aksata-cache-eb4873a3c655c577f90bac85a2923202','i:5;',1781398363),
('tanya-aksata-cache-eb4873a3c655c577f90bac85a2923202:timer','i:1781398363;',1781398363),
('tanya-aksata-cache-ecca30716f612485f51b88d62f256f4a','i:1;',1781323873),
('tanya-aksata-cache-ecca30716f612485f51b88d62f256f4a:timer','i:1781323873;',1781323873),
('tanya-aksata-cache-ed904f1f35af7f113548a1059fd57bab','i:4;',1781398337),
('tanya-aksata-cache-ed904f1f35af7f113548a1059fd57bab:timer','i:1781398337;',1781398337),
('tanya-aksata-cache-edc8faac3dafe055a91938055ecab3f9','i:1;',1781353598),
('tanya-aksata-cache-edc8faac3dafe055a91938055ecab3f9:timer','i:1781353598;',1781353598),
('tanya-aksata-cache-f173357b2bf958d838f024720265fc1c','i:6;',1781371134),
('tanya-aksata-cache-f173357b2bf958d838f024720265fc1c:timer','i:1781371134;',1781371134),
('tanya-aksata-cache-f428d755efc6845096c6bb4493f2262c','i:2;',1781402288),
('tanya-aksata-cache-f428d755efc6845096c6bb4493f2262c:timer','i:1781402288;',1781402288),
('tanya-aksata-cache-f55af2f7291ffa07c82b5d5dc0cc93d0','i:1;',1781361017),
('tanya-aksata-cache-f55af2f7291ffa07c82b5d5dc0cc93d0:timer','i:1781361017;',1781361017),
('tanya-aksata-cache-f5a24f2277101aeb569ac0814695399c','i:2;',1781403730),
('tanya-aksata-cache-f5a24f2277101aeb569ac0814695399c:timer','i:1781403730;',1781403730),
('tanya-aksata-cache-f62668dc9bf8c89eb77611eea1778be0','i:1;',1781344348),
('tanya-aksata-cache-f62668dc9bf8c89eb77611eea1778be0:timer','i:1781344348;',1781344348),
('tanya-aksata-cache-f7e4d3e4dc64e02c08fe0206a9abe129','i:2;',1781400675),
('tanya-aksata-cache-f7e4d3e4dc64e02c08fe0206a9abe129:timer','i:1781400675;',1781400675),
('tanya-aksata-cache-f9738a4835c043258102846b0c20a66d','i:3;',1781428064),
('tanya-aksata-cache-f9738a4835c043258102846b0c20a66d:timer','i:1781428064;',1781428064),
('tanya-aksata-cache-febc5242b154c56f721e5176a83302cc','i:2;',1781426531),
('tanya-aksata-cache-febc5242b154c56f721e5176a83302cc:timer','i:1781426531;',1781426531),
('tanya-aksata-cache-fed781f4f5c824d96fc0fe9502fba4a9','i:3;',1781428461),
('tanya-aksata-cache-fed781f4f5c824d96fc0fe9502fba4a9:timer','i:1781428461;',1781428461),
('tanya-aksata-cache-fff209571f21c14434239f5894660972','i:1;',1781400194),
('tanya-aksata-cache-fff209571f21c14434239f5894660972:timer','i:1781400194;',1781400194),
('tanya-aksata-cache-leaderboard:page:1','a:13:{s:12:\"current_page\";i:1;s:4:\"data\";a:15:{i:0;a:17:{s:2:\"id\";s:36:\"019eb0e5-815d-71cc-aacb-25e93e421dde\";s:4:\"name\";s:11:\"Super Admin\";s:5:\"email\";s:21:\"admin@tanyaaksata.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/bcxbRyEivnPBWcyyMDBS6vALySiI5il6UUpfo2SZ.jpg\";s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:78;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:24:21.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:1;s:16:\"reputation_level\";s:6:\"Newbie\";}i:1;a:17:{s:2:\"id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:4:\"name\";s:12:\"Naufal Dzaky\";s:5:\"email\";s:18:\"tssytari@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/yxLHNX89wL34160ozc6DXTKCQjxDLMlrwI0BBLOe.jpg\";s:3:\"bio\";s:30:\"gatau ini cuma testing api aja\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:38;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:07:10.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:39:01.000000Z\";s:11:\"posts_count\";i:3;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:2;a:17:{s:2:\"id\";s:36:\"019eb11f-cbcc-71ae-b2d7-2ac6834b664e\";s:4:\"name\";s:20:\"pratama abdi rafigha\";s:5:\"email\";s:18:\"frafi561@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/GEPPl7lMMWhnbxcpwqCoI3XHCQjHaiXyzerHzBih.jpg\";s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:16;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:41:51.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:39:46.000000Z\";s:11:\"posts_count\";i:1;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:3;a:17:{s:2:\"id\";s:36:\"019eb559-931f-73ae-a2fc-42c5474ebc8f\";s:4:\"name\";s:18:\"User 1781159005914\";s:5:\"email\";s:26:\"user1781159005914@test.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";N;s:3:\"bio\";s:27:\"I am an automated test user\";s:8:\"location\";s:14:\"Cypress Runner\";s:7:\"website\";N;s:10:\"reputation\";i:15;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:1;s:10:\"created_at\";s:27:\"2026-06-11T06:23:27.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T06:23:32.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:4;a:17:{s:2:\"id\";s:36:\"019ec3b9-de09-730e-9e6a-5a4ae5700530\";s:4:\"name\";s:6:\"melvin\";s:5:\"email\";s:16:\"melvin@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/55fZ0sQ5cllqi7JqEoWcaVpoYYUrWhqyE7dovOUm.jpg\";s:3:\"bio\";s:46:\"aku anak aksata yang tinggal di glendang pakem\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:13;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-14T01:23:18.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:40:11.000000Z\";s:11:\"posts_count\";i:1;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:5;a:17:{s:2:\"id\";s:36:\"019eb62c-8ab0-7090-bb0e-e3ab1178817a\";s:4:\"name\";s:20:\"Tester 1781172828694\";s:5:\"email\";s:28:\"tester1781172828694@mail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";N;s:3:\"bio\";s:16:\"Automated tester\";s:8:\"location\";s:12:\"Cypress City\";s:7:\"website\";N;s:10:\"reputation\";i:10;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:1;s:10:\"created_at\";s:27:\"2026-06-11T10:13:52.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T10:15:03.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:6;a:17:{s:2:\"id\";s:36:\"019eb630-592b-71c6-b976-58980f7b3af8\";s:4:\"name\";s:20:\"Tester 1781173077904\";s:5:\"email\";s:28:\"tester1781173077904@mail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";N;s:3:\"bio\";s:16:\"Automated tester\";s:8:\"location\";s:12:\"Cypress City\";s:7:\"website\";N;s:10:\"reputation\";i:10;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:1;s:10:\"created_at\";s:27:\"2026-06-11T10:18:02.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T10:19:48.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:7;a:17:{s:2:\"id\";s:36:\"019ebfa9-bcb3-7028-a760-db9abea0b5c6\";s:4:\"name\";s:12:\"adib nugroho\";s:5:\"email\";s:14:\"adib@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/Q3MTcgzMFjrvMBJf2cCTuf7sn0c4HKkSZmvX7JuF.jpg\";s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:5;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-13T06:27:12.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T00:29:25.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:8;a:17:{s:2:\"id\";s:36:\"019eb11f-16b8-708a-8526-201885b58f5c\";s:4:\"name\";s:5:\"gopek\";s:5:\"email\";s:15:\"gopek@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";N;s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:3;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:41:05.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T11:07:43.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:9;a:17:{s:2:\"id\";s:36:\"019eb0e5-8242-734d-8299-c6dfad4d55b5\";s:4:\"name\";s:14:\"Moderator User\";s:5:\"email\";s:25:\"moderator@tanyaaksata.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";N;s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:0;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:10;a:17:{s:2:\"id\";s:36:\"019eb0e5-8329-705f-8452-ac8618c84811\";s:4:\"name\";s:12:\"Regular User\";s:5:\"email\";s:20:\"user@tanyaaksata.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";N;s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:0;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:11;a:17:{s:2:\"id\";s:36:\"019eb173-00de-7371-91c2-c61edc541468\";s:4:\"name\";s:6:\"reisya\";s:5:\"email\";s:16:\"reisya@Gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";N;s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:0;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T12:12:44.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T04:59:09.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:12;a:17:{s:2:\"id\";s:36:\"019eb569-4f60-729b-b663-c7c490420eff\";s:4:\"name\";s:6:\"ryouku\";s:5:\"email\";s:16:\"ryouku@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";N;s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:0;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-11T06:40:38.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T06:40:38.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:13;a:17:{s:2:\"id\";s:36:\"019eb630-10ae-716b-bd0f-ac898a5fe954\";s:4:\"name\";s:20:\"Tester 1781173060345\";s:5:\"email\";s:28:\"tester1781173060345@mail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";N;s:3:\"bio\";s:16:\"Automated tester\";s:8:\"location\";s:12:\"Cypress City\";s:7:\"website\";N;s:10:\"reputation\";i:0;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-11T10:17:43.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T10:17:53.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}i:14;a:17:{s:2:\"id\";s:36:\"019eb6ba-346f-7346-b835-5df00b28bd13\";s:4:\"name\";s:24:\"AuthTester 1781182108763\";s:5:\"email\";s:26:\"auth1781182108763@mail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";N;s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:0;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-11T12:48:36.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T12:48:36.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}}s:14:\"first_page_url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=1\";s:4:\"from\";i:1;s:9:\"last_page\";i:2;s:13:\"last_page_url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=2\";s:5:\"links\";a:4:{i:0;a:4:{s:3:\"url\";N;s:5:\"label\";s:16:\"&laquo; Previous\";s:4:\"page\";N;s:6:\"active\";b:0;}i:1;a:4:{s:3:\"url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=1\";s:5:\"label\";s:1:\"1\";s:4:\"page\";i:1;s:6:\"active\";b:1;}i:2;a:4:{s:3:\"url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=2\";s:5:\"label\";s:1:\"2\";s:4:\"page\";i:2;s:6:\"active\";b:0;}i:3;a:4:{s:3:\"url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=2\";s:5:\"label\";s:12:\"Next &raquo;\";s:4:\"page\";i:2;s:6:\"active\";b:0;}}s:13:\"next_page_url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=2\";s:4:\"path\";s:49:\"https://api-ta.neverland.my.id/api/v1/leaderboard\";s:8:\"per_page\";i:15;s:13:\"prev_page_url\";N;s:2:\"to\";i:15;s:5:\"total\";i:16;}',1781428975),
('tanya-aksata-cache-leaderboard:page:2','a:13:{s:12:\"current_page\";i:2;s:4:\"data\";a:1:{i:0;a:17:{s:2:\"id\";s:36:\"019eb6ba-7fa4-711d-a7ef-858a3b838a90\";s:4:\"name\";s:24:\"PostTester 1781182133079\";s:5:\"email\";s:26:\"post1781182133079@mail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";N;s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:0;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-11T12:48:56.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T12:48:56.000000Z\";s:11:\"posts_count\";i:0;s:14:\"accepted_count\";i:0;s:16:\"reputation_level\";s:6:\"Newbie\";}}s:14:\"first_page_url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=1\";s:4:\"from\";i:16;s:9:\"last_page\";i:2;s:13:\"last_page_url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=2\";s:5:\"links\";a:4:{i:0;a:4:{s:3:\"url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=1\";s:5:\"label\";s:16:\"&laquo; Previous\";s:4:\"page\";i:1;s:6:\"active\";b:0;}i:1;a:4:{s:3:\"url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=1\";s:5:\"label\";s:1:\"1\";s:4:\"page\";i:1;s:6:\"active\";b:0;}i:2;a:4:{s:3:\"url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=2\";s:5:\"label\";s:1:\"2\";s:4:\"page\";i:2;s:6:\"active\";b:1;}i:3;a:4:{s:3:\"url\";N;s:5:\"label\";s:12:\"Next &raquo;\";s:4:\"page\";N;s:6:\"active\";b:0;}}s:13:\"next_page_url\";N;s:4:\"path\";s:49:\"https://api-ta.neverland.my.id/api/v1/leaderboard\";s:8:\"per_page\";i:15;s:13:\"prev_page_url\";s:56:\"https://api-ta.neverland.my.id/api/v1/leaderboard?page=1\";s:2:\"to\";i:16;s:5:\"total\";i:16;}',1781428980),
('tanya-aksata-cache-posts:list:page:1','a:13:{s:12:\"current_page\";i:1;s:4:\"data\";a:5:{i:0;a:19:{s:2:\"id\";s:36:\"019ec3c3-1598-7282-9201-23eebaa890eb\";s:5:\"title\";s:32:\"inii kenaapaa vote ku eror woiii\";s:4:\"body\";s:56:\"aku mau like coment bisa tapi pas aku like post gak bisa\";s:7:\"user_id\";s:36:\"019ec3b9-de09-730e-9e6a-5a4ae5700530\";s:11:\"category_id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:18:\"accepted_answer_id\";N;s:11:\"votes_count\";i:0;s:11:\"likes_count\";i:1;s:14:\"comments_count\";i:0;s:11:\"views_count\";i:18;s:9:\"is_solved\";b:0;s:10:\"created_at\";s:27:\"2026-06-14T01:33:22.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T02:06:14.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";N;s:10:\"edit_count\";i:0;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019ec3b9-de09-730e-9e6a-5a4ae5700530\";s:4:\"name\";s:6:\"melvin\";s:5:\"email\";s:16:\"melvin@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/55fZ0sQ5cllqi7JqEoWcaVpoYYUrWhqyE7dovOUm.jpg\";s:3:\"bio\";s:46:\"aku anak aksata yang tinggal di glendang pakem\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:13;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-14T01:23:18.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:40:11.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:4:\"name\";s:11:\"Pemrograman\";s:4:\"slug\";s:11:\"pemrograman\";s:11:\"description\";s:66:\"Diskusi seputar bahasa pemrograman, algoritma, dan best practices.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}s:4:\"tags\";a:3:{i:0;a:7:{s:2:\"id\";s:36:\"019eb0e5-8072-7248-be72-ef9aae09e86f\";s:4:\"name\";s:3:\"php\";s:4:\"slug\";s:3:\"php\";s:11:\"description\";s:22:\"Hypertext Preprocessor\";s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ec3c3-1598-7282-9201-23eebaa890eb\";s:6:\"tag_id\";s:36:\"019eb0e5-8072-7248-be72-ef9aae09e86f\";s:10:\"created_at\";s:27:\"2026-06-14T01:33:22.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:33:22.000000Z\";}}i:1;a:7:{s:2:\"id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:4:\"name\";s:7:\"laravel\";s:4:\"slug\";s:7:\"laravel\";s:11:\"description\";s:13:\"PHP Framework\";s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ec3c3-1598-7282-9201-23eebaa890eb\";s:6:\"tag_id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:10:\"created_at\";s:27:\"2026-06-14T01:33:22.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:33:22.000000Z\";}}i:2;a:7:{s:2:\"id\";s:36:\"019eb41f-19bd-726c-9b38-dc2369fd8b44\";s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ec3c3-1598-7282-9201-23eebaa890eb\";s:6:\"tag_id\";s:36:\"019eb41f-19bd-726c-9b38-dc2369fd8b44\";s:10:\"created_at\";s:27:\"2026-06-14T01:33:22.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:33:22.000000Z\";}}}}i:1;a:19:{s:2:\"id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:5:\"title\";s:25:\"aksata jaya sekolah keren\";s:4:\"body\";s:77:\"kenapa mbg di sekolah saya tidak ada lagi padahal murid lapar humm lapar akuu\";s:7:\"user_id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:11:\"category_id\";s:36:\"019ebad4-0e79-7317-b90c-f98e8e550a53\";s:18:\"accepted_answer_id\";s:36:\"019ec3a8-81c5-718f-9054-b7bd20cf2945\";s:11:\"votes_count\";i:0;s:11:\"likes_count\";i:2;s:14:\"comments_count\";i:4;s:11:\"views_count\";i:97;s:9:\"is_solved\";b:1;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:18:51.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";s:27:\"2026-06-12T07:59:00.000000Z\";s:10:\"edit_count\";i:2;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:4:\"name\";s:12:\"Naufal Dzaky\";s:5:\"email\";s:18:\"tssytari@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/yxLHNX89wL34160ozc6DXTKCQjxDLMlrwI0BBLOe.jpg\";s:3:\"bio\";s:30:\"gatau ini cuma testing api aja\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:38;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:07:10.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:39:01.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019ebad4-0e79-7317-b90c-f98e8e550a53\";s:4:\"name\";s:6:\"ngamok\";s:4:\"slug\";s:6:\"ngamok\";s:11:\"description\";s:4:\"onar\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-12T07:55:20.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:55:20.000000Z\";}s:4:\"tags\";a:5:{i:0;a:7:{s:2:\"id\";s:36:\"019ebad6-18b1-72f0-99e3-db7a8232cb65\";s:4:\"name\";s:3:\"mbg\";s:4:\"slug\";s:3:\"mbg\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019ebad6-18b1-72f0-99e3-db7a8232cb65\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:1;a:7:{s:2:\"id\";s:36:\"019ebad6-18b3-71f8-8879-61c3a82b3b55\";s:4:\"name\";s:5:\"makan\";s:4:\"slug\";s:5:\"makan\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019ebad6-18b3-71f8-8879-61c3a82b3b55\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:2;a:7:{s:2:\"id\";s:36:\"019ebad6-18b5-730a-a543-7ace600bcecc\";s:4:\"name\";s:6:\"gratis\";s:4:\"slug\";s:6:\"gratis\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019ebad6-18b5-730a-a543-7ace600bcecc\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:3;a:7:{s:2:\"id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:4:\"name\";s:7:\"laravel\";s:4:\"slug\";s:7:\"laravel\";s:11:\"description\";s:13:\"PHP Framework\";s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:4;a:7:{s:2:\"id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:4:\"name\";s:6:\"aksata\";s:4:\"slug\";s:6:\"aksata\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:49.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:49.000000Z\";}}}}i:2;a:19:{s:2:\"id\";s:36:\"019eb580-c284-723b-8c53-db728d058db0\";s:5:\"title\";s:42:\"saya mau bertanya kenapa nopal cepet lelah\";s:4:\"body\";s:62:\"masalahnya nopal lebih engga vit dalam menggerjakan projectnya\";s:7:\"user_id\";s:36:\"019eb11f-cbcc-71ae-b2d7-2ac6834b664e\";s:11:\"category_id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:18:\"accepted_answer_id\";N;s:11:\"votes_count\";i:-2;s:11:\"likes_count\";i:2;s:14:\"comments_count\";i:3;s:11:\"views_count\";i:83;s:9:\"is_solved\";b:0;s:10:\"created_at\";s:27:\"2026-06-11T07:06:15.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:40:11.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";N;s:10:\"edit_count\";i:0;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb11f-cbcc-71ae-b2d7-2ac6834b664e\";s:4:\"name\";s:20:\"pratama abdi rafigha\";s:5:\"email\";s:18:\"frafi561@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/GEPPl7lMMWhnbxcpwqCoI3XHCQjHaiXyzerHzBih.jpg\";s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:16;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:41:51.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:39:46.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:4:\"name\";s:11:\"Pemrograman\";s:4:\"slug\";s:11:\"pemrograman\";s:11:\"description\";s:66:\"Diskusi seputar bahasa pemrograman, algoritma, dan best practices.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}s:4:\"tags\";a:0:{}}i:3;a:19:{s:2:\"id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:5:\"title\";s:42:\"ini kenapa upload profile ku gak bisa yaaa\";s:4:\"body\";s:79:\"pas aku update tuh gak bisa katanya eror 422 tapi aku bingun itu dari fe apa be\";s:7:\"user_id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:11:\"category_id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:18:\"accepted_answer_id\";N;s:11:\"votes_count\";i:0;s:11:\"likes_count\";i:3;s:14:\"comments_count\";i:2;s:11:\"views_count\";i:82;s:9:\"is_solved\";b:0;s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:24:43.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";N;s:10:\"edit_count\";i:0;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:4:\"name\";s:12:\"Naufal Dzaky\";s:5:\"email\";s:18:\"tssytari@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/yxLHNX89wL34160ozc6DXTKCQjxDLMlrwI0BBLOe.jpg\";s:3:\"bio\";s:30:\"gatau ini cuma testing api aja\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:38;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:07:10.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:39:01.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:4:\"name\";s:11:\"Pemrograman\";s:4:\"slug\";s:11:\"pemrograman\";s:11:\"description\";s:66:\"Diskusi seputar bahasa pemrograman, algoritma, dan best practices.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}s:4:\"tags\";a:3:{i:0;a:7:{s:2:\"id\";s:36:\"019eb41f-19bb-70d6-865f-cf132558e039\";s:4:\"name\";s:4:\"next\";s:4:\"slug\";s:4:\"next\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:6:\"tag_id\";s:36:\"019eb41f-19bb-70d6-865f-cf132558e039\";s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";}}i:1;a:7:{s:2:\"id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:4:\"name\";s:7:\"laravel\";s:4:\"slug\";s:7:\"laravel\";s:11:\"description\";s:13:\"PHP Framework\";s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:6:\"tag_id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";}}i:2;a:7:{s:2:\"id\";s:36:\"019eb41f-19bd-726c-9b38-dc2369fd8b44\";s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:6:\"tag_id\";s:36:\"019eb41f-19bd-726c-9b38-dc2369fd8b44\";s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";}}}}i:4;a:19:{s:2:\"id\";s:36:\"019eb119-d152-71b7-ac66-50a477334319\";s:5:\"title\";s:24:\"aksata jaya josjis keren\";s:4:\"body\";s:45:\"yokpo carane dadi ultra runner cah aku pengen\";s:7:\"user_id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:11:\"category_id\";s:36:\"019eb0e5-806a-7399-a218-e9d96a59dee7\";s:18:\"accepted_answer_id\";N;s:11:\"votes_count\";i:1;s:11:\"likes_count\";i:1;s:14:\"comments_count\";i:1;s:11:\"views_count\";i:26;s:9:\"is_solved\";b:0;s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:19:11.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";N;s:10:\"edit_count\";i:0;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:4:\"name\";s:12:\"Naufal Dzaky\";s:5:\"email\";s:18:\"tssytari@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/yxLHNX89wL34160ozc6DXTKCQjxDLMlrwI0BBLOe.jpg\";s:3:\"bio\";s:30:\"gatau ini cuma testing api aja\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:38;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:07:10.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:39:01.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019eb0e5-806a-7399-a218-e9d96a59dee7\";s:4:\"name\";s:9:\"Framework\";s:4:\"slug\";s:9:\"framework\";s:11:\"description\";s:51:\"Laravel, React, Vue, Django, dan framework lainnya.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}s:4:\"tags\";a:1:{i:0;a:7:{s:2:\"id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:4:\"name\";s:6:\"aksata\";s:4:\"slug\";s:6:\"aksata\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb119-d152-71b7-ac66-50a477334319\";s:6:\"tag_id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T10:35:19.000000Z\";}}}}}s:14:\"first_page_url\";s:50:\"https://api-ta.neverland.my.id/api/v1/posts?page=1\";s:4:\"from\";i:1;s:9:\"last_page\";i:1;s:13:\"last_page_url\";s:50:\"https://api-ta.neverland.my.id/api/v1/posts?page=1\";s:5:\"links\";a:3:{i:0;a:4:{s:3:\"url\";N;s:5:\"label\";s:16:\"&laquo; Previous\";s:4:\"page\";N;s:6:\"active\";b:0;}i:1;a:4:{s:3:\"url\";s:50:\"https://api-ta.neverland.my.id/api/v1/posts?page=1\";s:5:\"label\";s:1:\"1\";s:4:\"page\";i:1;s:6:\"active\";b:1;}i:2;a:4:{s:3:\"url\";N;s:5:\"label\";s:12:\"Next &raquo;\";s:4:\"page\";N;s:6:\"active\";b:0;}}s:13:\"next_page_url\";N;s:4:\"path\";s:43:\"https://api-ta.neverland.my.id/api/v1/posts\";s:8:\"per_page\";i:10;s:13:\"prev_page_url\";N;s:2:\"to\";i:5;s:5:\"total\";i:5;}',1781429062),
('tanya-aksata-cache-posts:trending:15','a:5:{i:0;a:19:{s:2:\"id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:5:\"title\";s:25:\"aksata jaya sekolah keren\";s:4:\"body\";s:77:\"kenapa mbg di sekolah saya tidak ada lagi padahal murid lapar humm lapar akuu\";s:7:\"user_id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:11:\"category_id\";s:36:\"019ebad4-0e79-7317-b90c-f98e8e550a53\";s:18:\"accepted_answer_id\";s:36:\"019ec3a8-81c5-718f-9054-b7bd20cf2945\";s:11:\"votes_count\";i:0;s:11:\"likes_count\";i:2;s:14:\"comments_count\";i:4;s:11:\"views_count\";i:97;s:9:\"is_solved\";b:1;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:18:51.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";s:27:\"2026-06-12T07:59:00.000000Z\";s:10:\"edit_count\";i:2;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:4:\"name\";s:12:\"Naufal Dzaky\";s:5:\"email\";s:18:\"tssytari@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/yxLHNX89wL34160ozc6DXTKCQjxDLMlrwI0BBLOe.jpg\";s:3:\"bio\";s:30:\"gatau ini cuma testing api aja\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:38;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:07:10.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:39:01.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019ebad4-0e79-7317-b90c-f98e8e550a53\";s:4:\"name\";s:6:\"ngamok\";s:4:\"slug\";s:6:\"ngamok\";s:11:\"description\";s:4:\"onar\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-12T07:55:20.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:55:20.000000Z\";}s:4:\"tags\";a:5:{i:0;a:7:{s:2:\"id\";s:36:\"019ebad6-18b1-72f0-99e3-db7a8232cb65\";s:4:\"name\";s:3:\"mbg\";s:4:\"slug\";s:3:\"mbg\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019ebad6-18b1-72f0-99e3-db7a8232cb65\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:1;a:7:{s:2:\"id\";s:36:\"019ebad6-18b3-71f8-8879-61c3a82b3b55\";s:4:\"name\";s:5:\"makan\";s:4:\"slug\";s:5:\"makan\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019ebad6-18b3-71f8-8879-61c3a82b3b55\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:2;a:7:{s:2:\"id\";s:36:\"019ebad6-18b5-730a-a543-7ace600bcecc\";s:4:\"name\";s:6:\"gratis\";s:4:\"slug\";s:6:\"gratis\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019ebad6-18b5-730a-a543-7ace600bcecc\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:3;a:7:{s:2:\"id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:4:\"name\";s:7:\"laravel\";s:4:\"slug\";s:7:\"laravel\";s:11:\"description\";s:13:\"PHP Framework\";s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:4;a:7:{s:2:\"id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:4:\"name\";s:6:\"aksata\";s:4:\"slug\";s:6:\"aksata\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:49.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:49.000000Z\";}}}}i:1;a:19:{s:2:\"id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:5:\"title\";s:42:\"ini kenapa upload profile ku gak bisa yaaa\";s:4:\"body\";s:79:\"pas aku update tuh gak bisa katanya eror 422 tapi aku bingun itu dari fe apa be\";s:7:\"user_id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:11:\"category_id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:18:\"accepted_answer_id\";N;s:11:\"votes_count\";i:0;s:11:\"likes_count\";i:3;s:14:\"comments_count\";i:2;s:11:\"views_count\";i:82;s:9:\"is_solved\";b:0;s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:24:43.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";N;s:10:\"edit_count\";i:0;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:4:\"name\";s:12:\"Naufal Dzaky\";s:5:\"email\";s:18:\"tssytari@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/yxLHNX89wL34160ozc6DXTKCQjxDLMlrwI0BBLOe.jpg\";s:3:\"bio\";s:30:\"gatau ini cuma testing api aja\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:38;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:07:10.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:39:01.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:4:\"name\";s:11:\"Pemrograman\";s:4:\"slug\";s:11:\"pemrograman\";s:11:\"description\";s:66:\"Diskusi seputar bahasa pemrograman, algoritma, dan best practices.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}s:4:\"tags\";a:3:{i:0;a:7:{s:2:\"id\";s:36:\"019eb41f-19bb-70d6-865f-cf132558e039\";s:4:\"name\";s:4:\"next\";s:4:\"slug\";s:4:\"next\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:6:\"tag_id\";s:36:\"019eb41f-19bb-70d6-865f-cf132558e039\";s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";}}i:1;a:7:{s:2:\"id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:4:\"name\";s:7:\"laravel\";s:4:\"slug\";s:7:\"laravel\";s:11:\"description\";s:13:\"PHP Framework\";s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:6:\"tag_id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";}}i:2;a:7:{s:2:\"id\";s:36:\"019eb41f-19bd-726c-9b38-dc2369fd8b44\";s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:6:\"tag_id\";s:36:\"019eb41f-19bd-726c-9b38-dc2369fd8b44\";s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";}}}}i:2;a:19:{s:2:\"id\";s:36:\"019eb580-c284-723b-8c53-db728d058db0\";s:5:\"title\";s:42:\"saya mau bertanya kenapa nopal cepet lelah\";s:4:\"body\";s:62:\"masalahnya nopal lebih engga vit dalam menggerjakan projectnya\";s:7:\"user_id\";s:36:\"019eb11f-cbcc-71ae-b2d7-2ac6834b664e\";s:11:\"category_id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:18:\"accepted_answer_id\";N;s:11:\"votes_count\";i:-2;s:11:\"likes_count\";i:2;s:14:\"comments_count\";i:3;s:11:\"views_count\";i:83;s:9:\"is_solved\";b:0;s:10:\"created_at\";s:27:\"2026-06-11T07:06:15.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:40:11.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";N;s:10:\"edit_count\";i:0;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb11f-cbcc-71ae-b2d7-2ac6834b664e\";s:4:\"name\";s:20:\"pratama abdi rafigha\";s:5:\"email\";s:18:\"frafi561@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/GEPPl7lMMWhnbxcpwqCoI3XHCQjHaiXyzerHzBih.jpg\";s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:16;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:41:51.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:39:46.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:4:\"name\";s:11:\"Pemrograman\";s:4:\"slug\";s:11:\"pemrograman\";s:11:\"description\";s:66:\"Diskusi seputar bahasa pemrograman, algoritma, dan best practices.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}s:4:\"tags\";a:0:{}}i:3;a:19:{s:2:\"id\";s:36:\"019eb119-d152-71b7-ac66-50a477334319\";s:5:\"title\";s:24:\"aksata jaya josjis keren\";s:4:\"body\";s:45:\"yokpo carane dadi ultra runner cah aku pengen\";s:7:\"user_id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:11:\"category_id\";s:36:\"019eb0e5-806a-7399-a218-e9d96a59dee7\";s:18:\"accepted_answer_id\";N;s:11:\"votes_count\";i:1;s:11:\"likes_count\";i:1;s:14:\"comments_count\";i:1;s:11:\"views_count\";i:26;s:9:\"is_solved\";b:0;s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:19:11.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";N;s:10:\"edit_count\";i:0;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:4:\"name\";s:12:\"Naufal Dzaky\";s:5:\"email\";s:18:\"tssytari@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/yxLHNX89wL34160ozc6DXTKCQjxDLMlrwI0BBLOe.jpg\";s:3:\"bio\";s:30:\"gatau ini cuma testing api aja\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:38;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:07:10.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:39:01.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019eb0e5-806a-7399-a218-e9d96a59dee7\";s:4:\"name\";s:9:\"Framework\";s:4:\"slug\";s:9:\"framework\";s:11:\"description\";s:51:\"Laravel, React, Vue, Django, dan framework lainnya.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}s:4:\"tags\";a:1:{i:0;a:7:{s:2:\"id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:4:\"name\";s:6:\"aksata\";s:4:\"slug\";s:6:\"aksata\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb119-d152-71b7-ac66-50a477334319\";s:6:\"tag_id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T10:35:19.000000Z\";}}}}i:4;a:19:{s:2:\"id\";s:36:\"019ec3c3-1598-7282-9201-23eebaa890eb\";s:5:\"title\";s:32:\"inii kenaapaa vote ku eror woiii\";s:4:\"body\";s:56:\"aku mau like coment bisa tapi pas aku like post gak bisa\";s:7:\"user_id\";s:36:\"019ec3b9-de09-730e-9e6a-5a4ae5700530\";s:11:\"category_id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:18:\"accepted_answer_id\";N;s:11:\"votes_count\";i:0;s:11:\"likes_count\";i:1;s:14:\"comments_count\";i:0;s:11:\"views_count\";i:18;s:9:\"is_solved\";b:0;s:10:\"created_at\";s:27:\"2026-06-14T01:33:22.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T02:06:14.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";N;s:10:\"edit_count\";i:0;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019ec3b9-de09-730e-9e6a-5a4ae5700530\";s:4:\"name\";s:6:\"melvin\";s:5:\"email\";s:16:\"melvin@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/55fZ0sQ5cllqi7JqEoWcaVpoYYUrWhqyE7dovOUm.jpg\";s:3:\"bio\";s:46:\"aku anak aksata yang tinggal di glendang pakem\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:13;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-14T01:23:18.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:40:11.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:4:\"name\";s:11:\"Pemrograman\";s:4:\"slug\";s:11:\"pemrograman\";s:11:\"description\";s:66:\"Diskusi seputar bahasa pemrograman, algoritma, dan best practices.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}s:4:\"tags\";a:3:{i:0;a:7:{s:2:\"id\";s:36:\"019eb0e5-8072-7248-be72-ef9aae09e86f\";s:4:\"name\";s:3:\"php\";s:4:\"slug\";s:3:\"php\";s:11:\"description\";s:22:\"Hypertext Preprocessor\";s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ec3c3-1598-7282-9201-23eebaa890eb\";s:6:\"tag_id\";s:36:\"019eb0e5-8072-7248-be72-ef9aae09e86f\";s:10:\"created_at\";s:27:\"2026-06-14T01:33:22.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:33:22.000000Z\";}}i:1;a:7:{s:2:\"id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:4:\"name\";s:7:\"laravel\";s:4:\"slug\";s:7:\"laravel\";s:11:\"description\";s:13:\"PHP Framework\";s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ec3c3-1598-7282-9201-23eebaa890eb\";s:6:\"tag_id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:10:\"created_at\";s:27:\"2026-06-14T01:33:22.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:33:22.000000Z\";}}i:2;a:7:{s:2:\"id\";s:36:\"019eb41f-19bd-726c-9b38-dc2369fd8b44\";s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ec3c3-1598-7282-9201-23eebaa890eb\";s:6:\"tag_id\";s:36:\"019eb41f-19bd-726c-9b38-dc2369fd8b44\";s:10:\"created_at\";s:27:\"2026-06-14T01:33:22.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:33:22.000000Z\";}}}}}',1781429103),
('tanya-aksata-cache-users:019eb0e5-815d-71cc-aacb-25e93e421dde:posts:page:1','a:13:{s:12:\"current_page\";i:1;s:4:\"data\";a:0:{}s:14:\"first_page_url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb0e5-815d-71cc-aacb-25e93e421dde/posts?page=1\";s:4:\"from\";N;s:9:\"last_page\";i:1;s:13:\"last_page_url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb0e5-815d-71cc-aacb-25e93e421dde/posts?page=1\";s:5:\"links\";a:3:{i:0;a:4:{s:3:\"url\";N;s:5:\"label\";s:16:\"&laquo; Previous\";s:4:\"page\";N;s:6:\"active\";b:0;}i:1;a:4:{s:3:\"url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb0e5-815d-71cc-aacb-25e93e421dde/posts?page=1\";s:5:\"label\";s:1:\"1\";s:4:\"page\";i:1;s:6:\"active\";b:1;}i:2;a:4:{s:3:\"url\";N;s:5:\"label\";s:12:\"Next &raquo;\";s:4:\"page\";N;s:6:\"active\";b:0;}}s:13:\"next_page_url\";N;s:4:\"path\";s:86:\"https://api-ta.neverland.my.id/api/v1/users/019eb0e5-815d-71cc-aacb-25e93e421dde/posts\";s:8:\"per_page\";i:10;s:13:\"prev_page_url\";N;s:2:\"to\";N;s:5:\"total\";i:0;}',1781252404),
('tanya-aksata-cache-users:019eb100-0a8b-7229-a92a-b969f258d201:posts:page:1','a:13:{s:12:\"current_page\";i:1;s:4:\"data\";a:3:{i:0;a:19:{s:2:\"id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:5:\"title\";s:25:\"aksata jaya sekolah keren\";s:4:\"body\";s:77:\"kenapa mbg di sekolah saya tidak ada lagi padahal murid lapar humm lapar akuu\";s:7:\"user_id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:11:\"category_id\";s:36:\"019ebad4-0e79-7317-b90c-f98e8e550a53\";s:18:\"accepted_answer_id\";s:36:\"019ec3a8-81c5-718f-9054-b7bd20cf2945\";s:11:\"votes_count\";i:0;s:11:\"likes_count\";i:2;s:14:\"comments_count\";i:4;s:11:\"views_count\";i:97;s:9:\"is_solved\";b:1;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:18:51.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";s:27:\"2026-06-12T07:59:00.000000Z\";s:10:\"edit_count\";i:2;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:4:\"name\";s:12:\"Naufal Dzaky\";s:5:\"email\";s:18:\"tssytari@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/yxLHNX89wL34160ozc6DXTKCQjxDLMlrwI0BBLOe.jpg\";s:3:\"bio\";s:30:\"gatau ini cuma testing api aja\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:39;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:07:10.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:06:14.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019ebad4-0e79-7317-b90c-f98e8e550a53\";s:4:\"name\";s:6:\"ngamok\";s:4:\"slug\";s:6:\"ngamok\";s:11:\"description\";s:4:\"onar\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-12T07:55:20.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:55:20.000000Z\";}s:4:\"tags\";a:5:{i:0;a:7:{s:2:\"id\";s:36:\"019ebad6-18b1-72f0-99e3-db7a8232cb65\";s:4:\"name\";s:3:\"mbg\";s:4:\"slug\";s:3:\"mbg\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019ebad6-18b1-72f0-99e3-db7a8232cb65\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:1;a:7:{s:2:\"id\";s:36:\"019ebad6-18b3-71f8-8879-61c3a82b3b55\";s:4:\"name\";s:5:\"makan\";s:4:\"slug\";s:5:\"makan\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019ebad6-18b3-71f8-8879-61c3a82b3b55\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:2;a:7:{s:2:\"id\";s:36:\"019ebad6-18b5-730a-a543-7ace600bcecc\";s:4:\"name\";s:6:\"gratis\";s:4:\"slug\";s:6:\"gratis\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019ebad6-18b5-730a-a543-7ace600bcecc\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:3;a:7:{s:2:\"id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:4:\"name\";s:7:\"laravel\";s:4:\"slug\";s:7:\"laravel\";s:11:\"description\";s:13:\"PHP Framework\";s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:33.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:33.000000Z\";}}i:4;a:7:{s:2:\"id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:4:\"name\";s:6:\"aksata\";s:4:\"slug\";s:6:\"aksata\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019ebad6-18af-71fc-b5e2-8f05ea653ad7\";s:6:\"tag_id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:10:\"created_at\";s:27:\"2026-06-12T07:57:49.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-12T07:57:49.000000Z\";}}}}i:1;a:19:{s:2:\"id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:5:\"title\";s:42:\"ini kenapa upload profile ku gak bisa yaaa\";s:4:\"body\";s:79:\"pas aku update tuh gak bisa katanya eror 422 tapi aku bingun itu dari fe apa be\";s:7:\"user_id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:11:\"category_id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:18:\"accepted_answer_id\";N;s:11:\"votes_count\";i:0;s:11:\"likes_count\";i:3;s:14:\"comments_count\";i:2;s:11:\"views_count\";i:82;s:9:\"is_solved\";b:0;s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:24:43.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";N;s:10:\"edit_count\";i:0;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:4:\"name\";s:12:\"Naufal Dzaky\";s:5:\"email\";s:18:\"tssytari@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/yxLHNX89wL34160ozc6DXTKCQjxDLMlrwI0BBLOe.jpg\";s:3:\"bio\";s:30:\"gatau ini cuma testing api aja\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:39;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:07:10.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:06:14.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:4:\"name\";s:11:\"Pemrograman\";s:4:\"slug\";s:11:\"pemrograman\";s:11:\"description\";s:66:\"Diskusi seputar bahasa pemrograman, algoritma, dan best practices.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}s:4:\"tags\";a:3:{i:0;a:7:{s:2:\"id\";s:36:\"019eb41f-19bb-70d6-865f-cf132558e039\";s:4:\"name\";s:4:\"next\";s:4:\"slug\";s:4:\"next\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:6:\"tag_id\";s:36:\"019eb41f-19bb-70d6-865f-cf132558e039\";s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";}}i:1;a:7:{s:2:\"id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:4:\"name\";s:7:\"laravel\";s:4:\"slug\";s:7:\"laravel\";s:11:\"description\";s:13:\"PHP Framework\";s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:6:\"tag_id\";s:36:\"019eb0e5-8075-73a4-982e-8b80ebf11877\";s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";}}i:2;a:7:{s:2:\"id\";s:36:\"019eb41f-19bd-726c-9b38-dc2369fd8b44\";s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb41f-19b9-7339-9db0-1d8af6215c2a\";s:6:\"tag_id\";s:36:\"019eb41f-19bd-726c-9b38-dc2369fd8b44\";s:10:\"created_at\";s:27:\"2026-06-11T00:39:57.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-11T00:39:57.000000Z\";}}}}i:2;a:19:{s:2:\"id\";s:36:\"019eb119-d152-71b7-ac66-50a477334319\";s:5:\"title\";s:24:\"aksata jaya josjis keren\";s:4:\"body\";s:45:\"yokpo carane dadi ultra runner cah aku pengen\";s:7:\"user_id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:11:\"category_id\";s:36:\"019eb0e5-806a-7399-a218-e9d96a59dee7\";s:18:\"accepted_answer_id\";N;s:11:\"votes_count\";i:1;s:11:\"likes_count\";i:1;s:14:\"comments_count\";i:1;s:11:\"views_count\";i:26;s:9:\"is_solved\";b:0;s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:19:11.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";N;s:10:\"edit_count\";i:0;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb100-0a8b-7229-a92a-b969f258d201\";s:4:\"name\";s:12:\"Naufal Dzaky\";s:5:\"email\";s:18:\"tssytari@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/yxLHNX89wL34160ozc6DXTKCQjxDLMlrwI0BBLOe.jpg\";s:3:\"bio\";s:30:\"gatau ini cuma testing api aja\";s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:39;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:07:10.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-14T01:06:14.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019eb0e5-806a-7399-a218-e9d96a59dee7\";s:4:\"name\";s:9:\"Framework\";s:4:\"slug\";s:9:\"framework\";s:11:\"description\";s:51:\"Laravel, React, Vue, Django, dan framework lainnya.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}s:4:\"tags\";a:1:{i:0;a:7:{s:2:\"id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:4:\"name\";s:6:\"aksata\";s:4:\"slug\";s:6:\"aksata\";s:11:\"description\";N;s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:5:\"pivot\";a:4:{s:7:\"post_id\";s:36:\"019eb119-d152-71b7-ac66-50a477334319\";s:6:\"tag_id\";s:36:\"019eb119-d154-70f0-9c69-7ad88d0d8329\";s:10:\"created_at\";s:27:\"2026-06-10T10:35:19.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T10:35:19.000000Z\";}}}}}s:14:\"first_page_url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb100-0a8b-7229-a92a-b969f258d201/posts?page=1\";s:4:\"from\";i:1;s:9:\"last_page\";i:1;s:13:\"last_page_url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb100-0a8b-7229-a92a-b969f258d201/posts?page=1\";s:5:\"links\";a:3:{i:0;a:4:{s:3:\"url\";N;s:5:\"label\";s:16:\"&laquo; Previous\";s:4:\"page\";N;s:6:\"active\";b:0;}i:1;a:4:{s:3:\"url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb100-0a8b-7229-a92a-b969f258d201/posts?page=1\";s:5:\"label\";s:1:\"1\";s:4:\"page\";i:1;s:6:\"active\";b:1;}i:2;a:4:{s:3:\"url\";N;s:5:\"label\";s:12:\"Next &raquo;\";s:4:\"page\";N;s:6:\"active\";b:0;}}s:13:\"next_page_url\";N;s:4:\"path\";s:86:\"https://api-ta.neverland.my.id/api/v1/users/019eb100-0a8b-7229-a92a-b969f258d201/posts\";s:8:\"per_page\";i:10;s:13:\"prev_page_url\";N;s:2:\"to\";i:3;s:5:\"total\";i:3;}',1781400675),
('tanya-aksata-cache-users:019eb11f-cbcc-71ae-b2d7-2ac6834b664e:posts:page:1','a:13:{s:12:\"current_page\";i:1;s:4:\"data\";a:1:{i:0;a:19:{s:2:\"id\";s:36:\"019eb580-c284-723b-8c53-db728d058db0\";s:5:\"title\";s:42:\"saya mau bertanya kenapa nopal cepet lelah\";s:4:\"body\";s:62:\"masalahnya nopal lebih engga vit dalam menggerjakan projectnya\";s:7:\"user_id\";s:36:\"019eb11f-cbcc-71ae-b2d7-2ac6834b664e\";s:11:\"category_id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:18:\"accepted_answer_id\";N;s:11:\"votes_count\";i:1;s:11:\"likes_count\";i:1;s:14:\"comments_count\";i:2;s:11:\"views_count\";i:67;s:9:\"is_solved\";b:0;s:10:\"created_at\";s:27:\"2026-06-11T07:06:15.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-13T23:55:05.000000Z\";s:10:\"deleted_at\";N;s:9:\"edited_at\";N;s:10:\"edit_count\";i:0;s:4:\"user\";a:15:{s:2:\"id\";s:36:\"019eb11f-cbcc-71ae-b2d7-2ac6834b664e\";s:4:\"name\";s:20:\"pratama abdi rafigha\";s:5:\"email\";s:18:\"frafi561@gmail.com\";s:17:\"email_verified_at\";N;s:6:\"avatar\";s:52:\"avatars/GEPPl7lMMWhnbxcpwqCoI3XHCQjHaiXyzerHzBih.jpg\";s:3:\"bio\";N;s:8:\"location\";N;s:7:\"website\";N;s:10:\"reputation\";i:25;s:9:\"is_banned\";b:0;s:12:\"banned_until\";N;s:13:\"warning_count\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T10:41:51.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-13T23:54:42.000000Z\";s:16:\"reputation_level\";s:6:\"Newbie\";}s:8:\"category\";a:8:{s:2:\"id\";s:36:\"019eb0e5-8068-7209-9a2f-b605386be509\";s:4:\"name\";s:11:\"Pemrograman\";s:4:\"slug\";s:11:\"pemrograman\";s:11:\"description\";s:66:\"Diskusi seputar bahasa pemrograman, algoritma, dan best practices.\";s:9:\"parent_id\";N;s:10:\"sort_order\";i:0;s:10:\"created_at\";s:27:\"2026-06-10T09:38:11.000000Z\";s:10:\"updated_at\";s:27:\"2026-06-10T09:38:11.000000Z\";}s:4:\"tags\";a:0:{}}}s:14:\"first_page_url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb11f-cbcc-71ae-b2d7-2ac6834b664e/posts?page=1\";s:4:\"from\";i:1;s:9:\"last_page\";i:1;s:13:\"last_page_url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb11f-cbcc-71ae-b2d7-2ac6834b664e/posts?page=1\";s:5:\"links\";a:3:{i:0;a:4:{s:3:\"url\";N;s:5:\"label\";s:16:\"&laquo; Previous\";s:4:\"page\";N;s:6:\"active\";b:0;}i:1;a:4:{s:3:\"url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb11f-cbcc-71ae-b2d7-2ac6834b664e/posts?page=1\";s:5:\"label\";s:1:\"1\";s:4:\"page\";i:1;s:6:\"active\";b:1;}i:2;a:4:{s:3:\"url\";N;s:5:\"label\";s:12:\"Next &raquo;\";s:4:\"page\";N;s:6:\"active\";b:0;}}s:13:\"next_page_url\";N;s:4:\"path\";s:86:\"https://api-ta.neverland.my.id/api/v1/users/019eb11f-cbcc-71ae-b2d7-2ac6834b664e/posts\";s:8:\"per_page\";i:10;s:13:\"prev_page_url\";N;s:2:\"to\";i:1;s:5:\"total\";i:1;}',1781395486),
('tanya-aksata-cache-users:019eb173-00de-7371-91c2-c61edc541468:posts:page:1','a:13:{s:12:\"current_page\";i:1;s:4:\"data\";a:0:{}s:14:\"first_page_url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb173-00de-7371-91c2-c61edc541468/posts?page=1\";s:4:\"from\";N;s:9:\"last_page\";i:1;s:13:\"last_page_url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb173-00de-7371-91c2-c61edc541468/posts?page=1\";s:5:\"links\";a:3:{i:0;a:4:{s:3:\"url\";N;s:5:\"label\";s:16:\"&laquo; Previous\";s:4:\"page\";N;s:6:\"active\";b:0;}i:1;a:4:{s:3:\"url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019eb173-00de-7371-91c2-c61edc541468/posts?page=1\";s:5:\"label\";s:1:\"1\";s:4:\"page\";i:1;s:6:\"active\";b:1;}i:2;a:4:{s:3:\"url\";N;s:5:\"label\";s:12:\"Next &raquo;\";s:4:\"page\";N;s:6:\"active\";b:0;}}s:13:\"next_page_url\";N;s:4:\"path\";s:86:\"https://api-ta.neverland.my.id/api/v1/users/019eb173-00de-7371-91c2-c61edc541468/posts\";s:8:\"per_page\";i:10;s:13:\"prev_page_url\";N;s:2:\"to\";N;s:5:\"total\";i:0;}',1781252430),
('tanya-aksata-cache-users:019ebfa9-bcb3-7028-a760-db9abea0b5c6:posts:page:1','a:13:{s:12:\"current_page\";i:1;s:4:\"data\";a:0:{}s:14:\"first_page_url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019ebfa9-bcb3-7028-a760-db9abea0b5c6/posts?page=1\";s:4:\"from\";N;s:9:\"last_page\";i:1;s:13:\"last_page_url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019ebfa9-bcb3-7028-a760-db9abea0b5c6/posts?page=1\";s:5:\"links\";a:3:{i:0;a:4:{s:3:\"url\";N;s:5:\"label\";s:16:\"&laquo; Previous\";s:4:\"page\";N;s:6:\"active\";b:0;}i:1;a:4:{s:3:\"url\";s:93:\"https://api-ta.neverland.my.id/api/v1/users/019ebfa9-bcb3-7028-a760-db9abea0b5c6/posts?page=1\";s:5:\"label\";s:1:\"1\";s:4:\"page\";i:1;s:6:\"active\";b:1;}i:2;a:4:{s:3:\"url\";N;s:5:\"label\";s:12:\"Next &raquo;\";s:4:\"page\";N;s:6:\"active\";b:0;}}s:13:\"next_page_url\";N;s:4:\"path\";s:86:\"https://api-ta.neverland.my.id/api/v1/users/019ebfa9-bcb3-7028-a760-db9abea0b5c6/posts\";s:8:\"per_page\";i:10;s:13:\"prev_page_url\";N;s:2:\"to\";N;s:5:\"total\";i:0;}',1781399640);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` bigint(20) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
('019eb0e5-8068-7209-9a2f-b605386be509','Pemrograman','pemrograman','Diskusi seputar bahasa pemrograman, algoritma, dan best practices.',NULL,0,'2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-806a-7399-a218-e9d96a59dee7','Framework','framework','Laravel, React, Vue, Django, dan framework lainnya.',NULL,0,'2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-806b-70fa-b2aa-ce25f93452c6','Database','database','MySQL, PostgreSQL, MongoDB, dan desain database.',NULL,0,'2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-806d-708f-9a73-030f130dec13','DevOps','devops','Docker, Kubernetes, CI/CD, dan server management.',NULL,0,'2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-806e-70a4-884d-5e21a67da339','UI/UX','ui-ux','Desain antarmuka dan pengalaman pengguna.',NULL,0,'2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb630-4a30-7277-843f-c459b5c74fe1','CypressCat 1781173060345','cypresscat-1781173060345','Kategori untuk testing',NULL,0,'2026-06-11 03:17:58','2026-06-11 03:17:58'),
('019ebad4-0e79-7317-b90c-f98e8e550a53','ngamok','ngamok','onar',NULL,0,'2026-06-12 00:55:20','2026-06-12 00:55:20');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_edit_history`
--

DROP TABLE IF EXISTS `comment_edit_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_edit_history` (
  `id` char(36) NOT NULL,
  `comment_id` char(36) NOT NULL,
  `edited_by` char(36) NOT NULL,
  `body_before` text NOT NULL,
  `body_after` text NOT NULL,
  `edit_summary` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_edit_history_comment_id_foreign` (`comment_id`),
  KEY `comment_edit_history_edited_by_foreign` (`edited_by`),
  CONSTRAINT `comment_edit_history_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comment_edit_history_edited_by_foreign` FOREIGN KEY (`edited_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_edit_history`
--

LOCK TABLES `comment_edit_history` WRITE;
/*!40000 ALTER TABLE `comment_edit_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_edit_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` char(36) NOT NULL,
  `post_id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `body` text NOT NULL,
  `votes_count` int(11) NOT NULL DEFAULT 0,
  `likes_count` int(11) NOT NULL DEFAULT 0,
  `is_accepted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `edited_at` timestamp NULL DEFAULT NULL,
  `edit_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `comments_post_id_foreign` (`post_id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_parent_id_foreign` (`parent_id`),
  CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES
('019eb121-3daf-73f0-b451-f6d897967513','019eb119-d152-71b7-ac66-50a477334319','019eb11f-16b8-708a-8526-201885b58f5c',NULL,'ngamokk cakk cek josss',0,1,0,'2026-06-10 03:43:26','2026-06-13 00:00:36',NULL,NULL,0),
('019eb137-6d2d-726e-a588-8f5a9e8313ce','019eb121-9a12-70d6-b238-029716a9f00f','019eb11f-16b8-708a-8526-201885b58f5c',NULL,'kontol swjjr ajg kopros',0,0,0,'2026-06-10 04:07:40','2026-06-10 04:07:40',NULL,NULL,0),
('019eb550-272b-70a6-b49c-3ba3df62837b','019eb121-9a12-70d6-b238-029716a9f00f','019eb0e5-815d-71cc-aacb-25e93e421dde',NULL,'gak tau saya kok tanyak saya',0,0,0,'2026-06-10 23:13:09','2026-06-10 23:13:09',NULL,NULL,0),
('019ebfe1-f38a-71e0-8e8a-736413d6f976','019eb580-c284-723b-8c53-db728d058db0','019ebfa9-bcb3-7028-a760-db9abea0b5c6',NULL,'karena naufal sangat pintar dan baik keren juga dia makannya pentol',1,1,0,'2026-06-13 00:28:36','2026-06-13 17:29:25',NULL,NULL,0),
('019ec0bb-d24e-7163-acc0-3c99f84dbcca','019ebad6-18af-71fc-b5e2-8f05ea653ad7','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',NULL,'mauaaaaaaaaa',0,0,0,'2026-06-13 04:26:35','2026-06-13 04:26:35',NULL,NULL,0),
('019ec1c0-4da0-7289-9d26-cdd2cff5878f','019ebad6-18af-71fc-b5e2-8f05ea653ad7','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019ec0bb-d24e-7163-acc0-3c99f84dbcca','soalnya aksata keren banget njir',0,0,0,'2026-06-13 09:11:06','2026-06-13 09:11:06',NULL,NULL,0),
('019ec368-93c3-73c7-967e-eef6a0d56549','019eb580-c284-723b-8c53-db728d058db0','019eb100-0a8b-7229-a92a-b969f258d201','019ebfe1-f38a-71e0-8e8a-736413d6f976','apasih ini berisik banget tumpang kambingan',0,0,0,'2026-06-13 16:54:31','2026-06-13 16:54:31',NULL,NULL,0),
('019ec3a8-81c5-718f-9054-b7bd20cf2945','019ebad6-18af-71fc-b5e2-8f05ea653ad7','019eb0e5-815d-71cc-aacb-25e93e421dde',NULL,'ngomong ta kemu cakkk iso ngomong ta gak',0,0,1,'2026-06-13 18:04:20','2026-06-13 18:06:23',NULL,NULL,0),
('019ec3aa-3f31-725b-b8ff-e3470c64ec54','019ebad6-18af-71fc-b5e2-8f05ea653ad7','019eb100-0a8b-7229-a92a-b969f258d201','019ec3a8-81c5-718f-9054-b7bd20cf2945','ngomong buak cakkk',0,0,0,'2026-06-13 18:06:14','2026-06-13 18:06:14',NULL,NULL,0),
('019ec3b7-4015-73e8-b7ee-491639dbf49a','019eb41f-19b9-7339-9db0-1d8af6215c2a','019eb0e5-815d-71cc-aacb-25e93e421dde',NULL,'iki opo o boss kok gak iso',1,0,0,'2026-06-13 18:20:27','2026-06-13 18:24:21',NULL,NULL,0),
('019ec3bb-0e4c-7293-90fa-1a64d3938f79','019eb41f-19b9-7339-9db0-1d8af6215c2a','019ec3b9-de09-730e-9e6a-5a4ae5700530',NULL,'vote ku eror woiiiii',0,0,0,'2026-06-13 18:24:36','2026-06-13 18:24:36',NULL,NULL,0),
('019ec3c9-51eb-70b7-bc01-77de804e75bd','019eb580-c284-723b-8c53-db728d058db0','019ec3b9-de09-730e-9e6a-5a4ae5700530','019ebfe1-f38a-71e0-8e8a-736413d6f976','glendang pakem x kambingan',0,0,0,'2026-06-13 18:40:11','2026-06-13 18:40:11',NULL,NULL,0);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `id` char(36) NOT NULL,
  `follower_id` char(36) NOT NULL,
  `following_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `follows_follower_id_following_id_unique` (`follower_id`,`following_id`),
  KEY `follows_following_id_foreign` (`following_id`),
  CONSTRAINT `follows_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `follows_following_id_foreign` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES
('019eb136-4232-714c-8637-f9da470ed4f7','019eb11f-16b8-708a-8526-201885b58f5c','019eb100-0a8b-7229-a92a-b969f258d201','2026-06-10 04:06:23','2026-06-10 04:06:23'),
('019eb3fb-ce88-721d-9deb-34248a79fa26','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-16b8-708a-8526-201885b58f5c','2026-06-10 17:01:24','2026-06-10 17:01:24'),
('019eb559-a398-7063-b1a1-66e7f8c08b15','019eb559-931f-73ae-a2fc-42c5474ebc8f','019eb0e5-815d-71cc-aacb-25e93e421dde','2026-06-10 23:23:31','2026-06-10 23:23:31'),
('019ec3b0-1c89-719c-8828-9de8fcb6a573','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb100-0a8b-7229-a92a-b969f258d201','2026-06-13 18:12:39','2026-06-13 18:12:39');
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `target_id` varchar(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `likes_user_id_target_type_target_id_unique` (`user_id`,`target_type`,`target_id`),
  KEY `likes_target_type_target_id_index` (`target_type`,`target_id`),
  CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES
('019eb558-49e0-70de-88fd-1a8490e577b8','019eb173-00de-7371-91c2-c61edc541468','App\\Models\\Post','019eb41f-19b9-7339-9db0-1d8af6215c2a','2026-06-10 23:22:02','2026-06-10 23:22:02'),
('019eb559-a232-716f-b06b-b644a906a63e','019eb0e5-815d-71cc-aacb-25e93e421dde','App\\Models\\Post','019eb559-9eb3-704d-a232-ce2248042faf','2026-06-10 23:23:30','2026-06-10 23:23:30'),
('019eb62d-38cc-7332-8a2e-559dde6901d4','019eb62c-8ab0-7090-bb0e-e3ab1178817a','App\\Models\\Comment','019eb62c-f652-71ef-85de-5a993d8ba3a0','2026-06-11 03:14:37','2026-06-11 03:14:37'),
('019eb631-52ea-7100-a2d5-79ee6a7e5cbe','019eb630-592b-71c6-b976-58980f7b3af8','App\\Models\\Comment','019eb630-e9bd-710c-9a2d-37d0a2c81ef6','2026-06-11 03:19:06','2026-06-11 03:19:06'),
('019eb69b-450d-70a8-8303-e1db8ece9944','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','App\\Models\\Post','019eb41f-19b9-7339-9db0-1d8af6215c2a','2026-06-11 05:14:49','2026-06-11 05:14:49'),
('019ebfc8-37ca-7368-87ba-7b0b440f3388','019ebfa9-bcb3-7028-a760-db9abea0b5c6','App\\Models\\Post','019eb119-d152-71b7-ac66-50a477334319','2026-06-13 00:00:30','2026-06-13 00:00:30'),
('019ebfc8-4f8e-717d-87a0-0b8b5077d1cf','019ebfa9-bcb3-7028-a760-db9abea0b5c6','App\\Models\\Comment','019eb121-3daf-73f0-b451-f6d897967513','2026-06-13 00:00:36','2026-06-13 00:00:36'),
('019ec00a-b7e9-7039-8b8c-f84bb43fb2c5','019ebfa9-bcb3-7028-a760-db9abea0b5c6','App\\Models\\Post','019eb580-c284-723b-8c53-db728d058db0','2026-06-13 01:13:08','2026-06-13 01:13:08'),
('019ec012-1797-704f-90e4-4cc26e75003f','019ebfa9-bcb3-7028-a760-db9abea0b5c6','App\\Models\\Post','019eb41f-19b9-7339-9db0-1d8af6215c2a','2026-06-13 01:21:11','2026-06-13 01:21:11'),
('019ec035-4672-720a-afe3-e1b9f7dd2a43','019ebfa9-bcb3-7028-a760-db9abea0b5c6','App\\Models\\Post','019ebad6-18af-71fc-b5e2-8f05ea653ad7','2026-06-13 01:59:37','2026-06-13 01:59:37'),
('019ec1bf-ba2e-7104-8c22-9025228f6572','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','App\\Models\\Post','019ebad6-18af-71fc-b5e2-8f05ea653ad7','2026-06-13 09:10:28','2026-06-13 09:10:28'),
('019ec386-e60d-71ad-8673-39ddd924c556','019eb100-0a8b-7229-a92a-b969f258d201','App\\Models\\Comment','019ebfe1-f38a-71e0-8e8a-736413d6f976','2026-06-13 17:27:38','2026-06-13 17:27:38'),
('019ec3b4-ec74-7060-91b2-70f60438a767','019eb100-0a8b-7229-a92a-b969f258d201','App\\Models\\Post','019eb580-c284-723b-8c53-db728d058db0','2026-06-13 18:17:54','2026-06-13 18:17:54'),
('019ec3c8-fa08-70d7-b2e6-1714f65e0600','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','App\\Models\\Post','019ec3c3-1598-7282-9201-23eebaa890eb','2026-06-13 18:39:48','2026-06-13 18:39:48');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2026_06_04_101131_create_personal_access_tokens_table',1),
(2,'2026_06_04_101207_create_users_table',1),
(3,'2026_06_04_101323_create_roles_table',1),
(4,'2026_06_04_101400_create_user_roles_table',1),
(5,'2026_06_04_101428_create_categories_table',1),
(6,'2026_06_04_101525_create_tags_table',1),
(7,'2026_06_04_101559_create_posts_table',1),
(8,'2026_06_04_101623_create_post_tags_table',1),
(9,'2026_06_04_101704_create_post_edit_history_table',1),
(10,'2026_06_04_101724_create_comments_table',1),
(11,'2026_06_04_101813_add_accepted_answer_foreign_to_posts_table',1),
(12,'2026_06_04_103144_create_comment_edit_history_table',1),
(13,'2026_06_04_103212_create_votes_table',1),
(14,'2026_06_04_103240_create_likes_table',1),
(15,'2026_06_04_103353_create_bookmarks_table',1),
(16,'2026_06_04_103421_create_follows_table',1),
(17,'2026_06_04_103452_create_points_log_table',1),
(18,'2026_06_04_103518_create_badges_table',1),
(19,'2026_06_04_103603_create_user_badges_table',1),
(20,'2026_06_04_103630_create_notifications_table',1),
(21,'2026_06_04_103654_create_reports_table',1),
(22,'2026_06_04_103715_create_moderation_logs_table',1),
(23,'2026_06_04_113228_create_sessions_table',1),
(24,'2026_06_05_003930_create_cache_table',1),
(25,'2026_06_05_023859_add_soft_deletes_to_posts_table',1),
(26,'2026_06_05_034209_add_soft_deletes_to_comments_table',1),
(27,'2026_06_05_060830_add_edit_fields_to_posts_table',1),
(28,'2026_06_05_064534_add_edit_fields_to_comments_table',1),
(29,'2026_06_06_064034_change_target_id_to_string_in_votes_table',1),
(30,'2026_06_06_065026_fix_morphs_target_id_to_uuid',1),
(31,'2026_06_06_065927_change_target_id_to_string_in_likes_table',1),
(32,'2026_06_06_101359_update_reports_table_add_status_resolver',1),
(33,'2026_06_07_235622_add_action_taken_to_reports_table',1),
(34,'2026_06_08_001706_make_target_user_id_nullable_in_moderation_logs',1),
(35,'2026_06_08_012623_make_target_columns_nullable_in_notifications',1),
(36,'2026_06_08_013608_add_warning_count_to_users_table',1),
(37,'2026_06_08_021129_make_actor_id_nullable_in_notifications_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderation_logs`
--

DROP TABLE IF EXISTS `moderation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderation_logs` (
  `id` char(36) NOT NULL,
  `moderator_id` char(36) NOT NULL,
  `target_user_id` char(36) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `target_id` char(36) DEFAULT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `moderation_logs_moderator_id_foreign` (`moderator_id`),
  KEY `moderation_logs_target_user_id_foreign` (`target_user_id`),
  CONSTRAINT `moderation_logs_moderator_id_foreign` FOREIGN KEY (`moderator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `moderation_logs_target_user_id_foreign` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderation_logs`
--

LOCK TABLES `moderation_logs` WRITE;
/*!40000 ALTER TABLE `moderation_logs` DISABLE KEYS */;
INSERT INTO `moderation_logs` VALUES
('019eb559-a6c4-718f-9037-ed44149e3165','019eb0e5-815d-71cc-aacb-25e93e421dde',NULL,'report_ignored',NULL,NULL,'Post kept','2026-06-10 23:23:32','2026-06-10 23:23:32'),
('019eb559-a7a9-721a-83fe-94b4cf4b1ef6','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb559-931f-73ae-a2fc-42c5474ebc8f','warn_user',NULL,NULL,'Test warning','2026-06-10 23:23:32','2026-06-10 23:23:32'),
('019eb559-a803-7103-b55a-36e661ebe3d2','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb559-931f-73ae-a2fc-42c5474ebc8f','ban_user',NULL,NULL,'Test ban','2026-06-10 23:23:32','2026-06-10 23:23:32'),
('019eb559-a866-7288-91df-b5a6b55548f1','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb559-931f-73ae-a2fc-42c5474ebc8f','unban_user',NULL,NULL,'Ban dicabut oleh moderator','2026-06-10 23:23:32','2026-06-10 23:23:32'),
('019eb62d-8aad-728f-9b91-ebc21b820fe7','019eb0e5-815d-71cc-aacb-25e93e421dde',NULL,'report_ignored',NULL,NULL,'Test ignore','2026-06-11 03:14:58','2026-06-11 03:14:58'),
('019eb62d-9609-716c-aff7-33d078ade7e9','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb62c-8ab0-7090-bb0e-e3ab1178817a','warn_user',NULL,NULL,'Peringatan dari automated test','2026-06-11 03:15:01','2026-06-11 03:15:01'),
('019eb62d-9974-72b8-89df-0b2cf2946d6d','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb62c-8ab0-7090-bb0e-e3ab1178817a','ban_user',NULL,NULL,'Ban sementara untuk testing','2026-06-11 03:15:02','2026-06-11 03:15:02'),
('019eb62d-9dd6-710b-ad69-97ddae195118','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb62c-8ab0-7090-bb0e-e3ab1178817a','unban_user',NULL,NULL,'Ban dicabut oleh moderator','2026-06-11 03:15:03','2026-06-11 03:15:03'),
('019eb631-e521-7041-b936-44e12bdd2457','019eb0e5-815d-71cc-aacb-25e93e421dde',NULL,'report_ignored',NULL,NULL,'Test ignore','2026-06-11 03:19:43','2026-06-11 03:19:43'),
('019eb631-f089-7045-bbfa-0ec80c16a0e1','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb630-592b-71c6-b976-58980f7b3af8','warn_user',NULL,NULL,'Peringatan dari automated test','2026-06-11 03:19:46','2026-06-11 03:19:46'),
('019eb631-f250-70c0-aea9-ebc9d648877d','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb630-592b-71c6-b976-58980f7b3af8','ban_user',NULL,NULL,'Ban sementara untuk testing','2026-06-11 03:19:47','2026-06-11 03:19:47'),
('019eb631-f618-71b4-a0ec-0ac32b14e142','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb630-592b-71c6-b976-58980f7b3af8','unban_user',NULL,NULL,'Ban dicabut oleh moderator','2026-06-11 03:19:48','2026-06-11 03:19:48');
/*!40000 ALTER TABLE `moderation_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `actor_id` char(36) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `target_id` varchar(255) DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_user_id_foreign` (`user_id`),
  KEY `notifications_actor_id_foreign` (`actor_id`),
  CONSTRAINT `notifications_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES
('019eb121-3db8-702e-a3d2-f997d02bbd4f','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-16b8-708a-8526-201885b58f5c','comment','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','User gopek berkomentar pada postingan Anda \'aksata jaya josjis keren\'',0,'2026-06-10 03:43:26','2026-06-10 03:43:26'),
('019eb136-4233-70ac-920d-5e7600794202','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-16b8-708a-8526-201885b58f5c','follow','019eb11f-16b8-708a-8526-201885b58f5c','App\\Models\\User','User gopek mulai mengikuti Anda',0,'2026-06-10 04:06:23','2026-06-10 04:06:23'),
('019eb137-6d36-7367-a1e0-b28eb20b104a','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019eb11f-16b8-708a-8526-201885b58f5c','comment','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','User gopek berkomentar pada postingan Anda \'ini kenapa nopal kok suka bantengan\'',1,'2026-06-10 04:07:40','2026-06-11 23:42:16'),
('019eb3fb-ce89-736e-8ccc-4279ada51db0','019eb11f-16b8-708a-8526-201885b58f5c','019eb100-0a8b-7229-a92a-b969f258d201','follow','019eb100-0a8b-7229-a92a-b969f258d201','App\\Models\\User','User Naufal Dzaky mulai mengikuti Anda',0,'2026-06-10 17:01:24','2026-06-10 17:01:24'),
('019eb54f-94a1-71e2-aca3-be6df6a8fe65','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019eb0e5-815d-71cc-aacb-25e93e421dde','vote','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','User Super Admin memberi upvote pada postingan Anda \'ini kenapa nopal kok suka bantengan\'',1,'2026-06-10 23:12:32','2026-06-11 23:42:14'),
('019eb550-2734-72b5-b2ca-c444c1b6ae83','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019eb0e5-815d-71cc-aacb-25e93e421dde','comment','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','User Super Admin berkomentar pada postingan Anda \'ini kenapa nopal kok suka bantengan\'',1,'2026-06-10 23:13:09','2026-06-11 23:42:12'),
('019eb558-49e3-73f1-808b-31350c715997','019eb100-0a8b-7229-a92a-b969f258d201','019eb173-00de-7371-91c2-c61edc541468','like','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','User reisya menyukai postingan Anda \'ini kenapa upload profile ku gak bisa yaaa\'',0,'2026-06-10 23:22:02','2026-06-10 23:22:02'),
('019eb559-a0f4-707d-8bba-a104141ba526','019eb559-931f-73ae-a2fc-42c5474ebc8f','019eb0e5-815d-71cc-aacb-25e93e421dde','comment','019eb559-9eb3-704d-a232-ce2248042faf','App\\Models\\Post','User Super Admin berkomentar pada postingan Anda \'Updated Cypress Post\'',0,'2026-06-10 23:23:30','2026-06-10 23:23:30'),
('019eb559-a1aa-7002-be9b-b7273b65d6e0','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb559-931f-73ae-a2fc-42c5474ebc8f','accepted_answer','019eb559-a0eb-73e2-939f-7b9a370c25f6','App\\Models\\Comment','Jawaban Anda pada postingan \'Updated Cypress Post\' telah diterima sebagai solusi',0,'2026-06-10 23:23:30','2026-06-10 23:23:30'),
('019eb559-a236-71af-9b95-ec7884b17c39','019eb559-931f-73ae-a2fc-42c5474ebc8f','019eb0e5-815d-71cc-aacb-25e93e421dde','like','019eb559-9eb3-704d-a232-ce2248042faf','App\\Models\\Post','User Super Admin menyukai postingan Anda \'Updated Cypress Post\'',0,'2026-06-10 23:23:30','2026-06-10 23:23:30'),
('019eb559-a29a-710b-ac75-a1bea0677127','019eb559-931f-73ae-a2fc-42c5474ebc8f','019eb0e5-815d-71cc-aacb-25e93e421dde','vote','019eb559-9eb3-704d-a232-ce2248042faf','App\\Models\\Post','User Super Admin memberi upvote pada postingan Anda \'Updated Cypress Post\'',0,'2026-06-10 23:23:30','2026-06-10 23:23:30'),
('019eb559-a39a-715d-908d-e8608332406a','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb559-931f-73ae-a2fc-42c5474ebc8f','follow','019eb559-931f-73ae-a2fc-42c5474ebc8f','App\\Models\\User','User User 1781159005914 mulai mengikuti Anda',0,'2026-06-10 23:23:31','2026-06-10 23:23:31'),
('019eb559-a7aa-718d-a5db-946d588646f4','019eb559-931f-73ae-a2fc-42c5474ebc8f','019eb0e5-815d-71cc-aacb-25e93e421dde','warning',NULL,NULL,'Anda menerima peringatan ke-1. Alasan: Test warning',0,'2026-06-10 23:23:32','2026-06-10 23:23:32'),
('019eb559-a805-70e3-aa59-0d4979c0711b','019eb559-931f-73ae-a2fc-42c5474ebc8f','019eb0e5-815d-71cc-aacb-25e93e421dde','ban',NULL,NULL,'Akun Anda dibanned selama 30 hari. Alasan: Test ban',0,'2026-06-10 23:23:32','2026-06-10 23:23:32'),
('019eb559-a868-70f8-aed2-302ea5fcfa9a','019eb559-931f-73ae-a2fc-42c5474ebc8f','019eb0e5-815d-71cc-aacb-25e93e421dde','unban',NULL,NULL,'Akun Anda telah di-unban. Silakan login kembali.',0,'2026-06-10 23:23:32','2026-06-10 23:23:32'),
('019eb62c-f65a-72dd-bfe5-f617b891f1a2','019eb62c-8ab0-7090-bb0e-e3ab1178817a','019eb0e5-815d-71cc-aacb-25e93e421dde','comment','019eb62c-d4c2-7157-aedd-c2b76a983d76','App\\Models\\Post','User Super Admin berkomentar pada postingan Anda \'Updated Post 1781172828694\'',1,'2026-06-11 03:14:20','2026-06-11 03:14:50'),
('019eb62d-0662-706e-ad27-ae95df4c7ef1','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb62c-8ab0-7090-bb0e-e3ab1178817a','reply','019eb62c-f652-71ef-85de-5a993d8ba3a0','App\\Models\\Comment','User Tester 1781172828694 membalas komentar Anda',0,'2026-06-11 03:14:24','2026-06-11 03:14:24'),
('019eb62d-0b36-7223-ba5e-f168bdf11431','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb62c-8ab0-7090-bb0e-e3ab1178817a','accepted_answer','019eb62c-f652-71ef-85de-5a993d8ba3a0','App\\Models\\Comment','Jawaban Anda pada postingan \'Updated Post 1781172828694\' telah diterima sebagai solusi',0,'2026-06-11 03:14:25','2026-06-11 03:14:25'),
('019eb62d-1288-72ec-a5bb-a6cc54ed9344','019eb62c-8ab0-7090-bb0e-e3ab1178817a','019eb0e5-815d-71cc-aacb-25e93e421dde','vote','019eb62c-d4c2-7157-aedd-c2b76a983d76','App\\Models\\Post','User Super Admin memberi upvote pada postingan Anda \'Updated Post 1781172828694\'',1,'2026-06-11 03:14:27','2026-06-11 03:14:50'),
('019eb62d-2454-737a-815e-1116751286f8','019eb62c-8ab0-7090-bb0e-e3ab1178817a','019eb0e5-815d-71cc-aacb-25e93e421dde','like','019eb62c-d4c2-7157-aedd-c2b76a983d76','App\\Models\\Post','User Super Admin menyukai postingan Anda \'Updated Post 1781172828694\'',1,'2026-06-11 03:14:32','2026-06-11 03:14:50'),
('019eb62d-55a5-720b-baa8-0b3b85ffeb14','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb62c-8ab0-7090-bb0e-e3ab1178817a','follow','019eb62c-8ab0-7090-bb0e-e3ab1178817a','App\\Models\\User','User Tester 1781172828694 mulai mengikuti Anda',0,'2026-06-11 03:14:44','2026-06-11 03:14:44'),
('019eb62d-960b-7133-ab68-84d8f361202c','019eb62c-8ab0-7090-bb0e-e3ab1178817a','019eb0e5-815d-71cc-aacb-25e93e421dde','warning',NULL,NULL,'Anda menerima peringatan ke-1. Alasan: Peringatan dari automated test',0,'2026-06-11 03:15:01','2026-06-11 03:15:01'),
('019eb62d-9975-7302-ab27-9f32202301a7','019eb62c-8ab0-7090-bb0e-e3ab1178817a','019eb0e5-815d-71cc-aacb-25e93e421dde','ban',NULL,NULL,'Akun Anda dibanned selama 1 hari. Alasan: Ban sementara untuk testing',0,'2026-06-11 03:15:02','2026-06-11 03:15:02'),
('019eb62d-9dd7-71e8-8574-4048e2aef213','019eb62c-8ab0-7090-bb0e-e3ab1178817a','019eb0e5-815d-71cc-aacb-25e93e421dde','unban',NULL,NULL,'Akun Anda telah di-unban. Silakan login kembali.',0,'2026-06-11 03:15:03','2026-06-11 03:15:03'),
('019eb630-e9c6-7032-8614-f4e7449fd56b','019eb630-592b-71c6-b976-58980f7b3af8','019eb0e5-815d-71cc-aacb-25e93e421dde','comment','019eb630-b523-72d2-9cc9-ccfaf5c37027','App\\Models\\Post','User Super Admin berkomentar pada postingan Anda \'Updated Post 1781173077904\'',1,'2026-06-11 03:18:39','2026-06-11 03:19:26'),
('019eb631-00f3-7108-9ae9-9d693e3f8013','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb630-592b-71c6-b976-58980f7b3af8','reply','019eb630-e9bd-710c-9a2d-37d0a2c81ef6','App\\Models\\Comment','User Tester 1781173077904 membalas komentar Anda',1,'2026-06-11 03:18:45','2026-06-12 01:23:53'),
('019eb631-31a0-734d-928b-df1f92ae5fc0','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb630-592b-71c6-b976-58980f7b3af8','accepted_answer','019eb630-e9bd-710c-9a2d-37d0a2c81ef6','App\\Models\\Comment','Jawaban Anda pada postingan \'Updated Post 1781173077904\' telah diterima sebagai solusi',0,'2026-06-11 03:18:57','2026-06-11 03:18:57'),
('019eb631-389e-7335-9e05-ab7d6f5eacfe','019eb630-592b-71c6-b976-58980f7b3af8','019eb0e5-815d-71cc-aacb-25e93e421dde','vote','019eb630-b523-72d2-9cc9-ccfaf5c37027','App\\Models\\Post','User Super Admin memberi upvote pada postingan Anda \'Updated Post 1781173077904\'',1,'2026-06-11 03:18:59','2026-06-11 03:19:26'),
('019eb631-49e7-7387-8eaf-23d493e160af','019eb630-592b-71c6-b976-58980f7b3af8','019eb0e5-815d-71cc-aacb-25e93e421dde','like','019eb630-b523-72d2-9cc9-ccfaf5c37027','App\\Models\\Post','User Super Admin menyukai postingan Anda \'Updated Post 1781173077904\'',1,'2026-06-11 03:19:04','2026-06-11 03:19:26'),
('019eb631-7555-700b-a66d-c887a3c7eb01','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb630-592b-71c6-b976-58980f7b3af8','follow','019eb630-592b-71c6-b976-58980f7b3af8','App\\Models\\User','User Tester 1781173077904 mulai mengikuti Anda',0,'2026-06-11 03:19:15','2026-06-11 03:19:15'),
('019eb631-f08b-7206-9f1a-0b1abae055d1','019eb630-592b-71c6-b976-58980f7b3af8','019eb0e5-815d-71cc-aacb-25e93e421dde','warning',NULL,NULL,'Anda menerima peringatan ke-1. Alasan: Peringatan dari automated test',0,'2026-06-11 03:19:46','2026-06-11 03:19:46'),
('019eb631-f252-7011-8b2b-307b5bfcdea5','019eb630-592b-71c6-b976-58980f7b3af8','019eb0e5-815d-71cc-aacb-25e93e421dde','ban',NULL,NULL,'Akun Anda dibanned selama 1 hari. Alasan: Ban sementara untuk testing',0,'2026-06-11 03:19:47','2026-06-11 03:19:47'),
('019eb631-f61a-723a-9c44-5fd5081627fd','019eb630-592b-71c6-b976-58980f7b3af8','019eb0e5-815d-71cc-aacb-25e93e421dde','unban',NULL,NULL,'Akun Anda telah di-unban. Silakan login kembali.',0,'2026-06-11 03:19:48','2026-06-11 03:19:48'),
('019eb69b-3c07-70e1-bcd1-785c6b91721a','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','like','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','User pratama abdi rafigha menyukai postingan Anda \'ini kenapa upload profile ku gak bisa yaaa\'',0,'2026-06-11 05:14:47','2026-06-11 05:14:47'),
('019eb69b-40a8-71fc-b808-f0187af6736a','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','like','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','User pratama abdi rafigha menyukai postingan Anda \'ini kenapa upload profile ku gak bisa yaaa\'',0,'2026-06-11 05:14:48','2026-06-11 05:14:48'),
('019eb69b-4510-705b-9e18-1d99345bb223','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','like','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','User pratama abdi rafigha menyukai postingan Anda \'ini kenapa upload profile ku gak bisa yaaa\'',0,'2026-06-11 05:14:49','2026-06-11 05:14:49'),
('019eb69d-bedf-7230-be0c-ceac3b6745ce','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','vote','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','User pratama abdi rafigha memberi upvote pada postingan Anda \'ini kenapa upload profile ku gak bisa yaaa\'',0,'2026-06-11 05:17:31','2026-06-11 05:17:31'),
('019eba32-b740-72b6-94a7-20f973d3ad49','019eb100-0a8b-7229-a92a-b969f258d201','019eb173-00de-7371-91c2-c61edc541468','vote','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','User reisya memberi upvote pada postingan Anda \'aksata jaya josjis keren\'',0,'2026-06-11 21:59:06','2026-06-11 21:59:06'),
('019eba32-c1c5-736a-b76e-4af9149d727f','019eb100-0a8b-7229-a92a-b969f258d201','019eb173-00de-7371-91c2-c61edc541468','vote','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','User reisya memberi upvote pada postingan Anda \'aksata jaya josjis keren\'',0,'2026-06-11 21:59:09','2026-06-11 21:59:09'),
('019eba32-d355-709c-beb9-b366dd19af81','019eb100-0a8b-7229-a92a-b969f258d201','019eb173-00de-7371-91c2-c61edc541468','vote','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','User reisya memberi upvote pada postingan Anda \'aksata jaya josjis keren\'',0,'2026-06-11 21:59:13','2026-06-11 21:59:13'),
('019ebae0-0ddb-73da-b2f6-f5f9b8c2cee9','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019eb100-0a8b-7229-a92a-b969f258d201','follow','019eb100-0a8b-7229-a92a-b969f258d201','App\\Models\\User','User Naufal Dzaky mulai mengikuti Anda',1,'2026-06-12 01:08:26','2026-06-12 01:44:01'),
('019ebfc8-37cd-7227-bd48-df96009ae1f5','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya josjis keren\'',0,'2026-06-13 00:00:30','2026-06-13 00:00:30'),
('019ebfda-b6ac-72fc-b95c-66c8e5fda7cf','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 00:20:42','2026-06-13 00:20:42'),
('019ebfe1-f394-738c-8b61-250f188aa864','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019ebfa9-bcb3-7028-a760-db9abea0b5c6','comment','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','User adib nugroho berkomentar pada postingan Anda \'saya mau bertanya kenapa nopal cepet lelah\'',1,'2026-06-13 00:28:36','2026-06-13 07:42:52'),
('019ec00a-3bec-72ff-ad29-547a06f5cea3','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:12:36','2026-06-13 01:12:36'),
('019ec00a-42e7-7043-b92e-aebfbd5db144','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:12:38','2026-06-13 01:12:38'),
('019ec00a-4896-715a-9a55-40bbf023671e','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:12:39','2026-06-13 01:12:39'),
('019ec00a-4f9d-7322-a7de-22197e8b290a','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'saya mau bertanya kenapa nopal cepet lelah\'',1,'2026-06-13 01:12:41','2026-06-13 07:42:51'),
('019ec00a-b7ec-72f9-9232-a98ac9eab13f','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'saya mau bertanya kenapa nopal cepet lelah\'',1,'2026-06-13 01:13:08','2026-06-13 07:42:50'),
('019ec010-2e83-71bd-93d7-f53dc2d4bf3d','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:19:06','2026-06-13 01:19:06'),
('019ec011-a583-7333-9bd8-5e867bfede26','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:20:42','2026-06-13 01:20:42'),
('019ec011-fb4b-7290-9a36-bd0b8c96f55e','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:21:04','2026-06-13 01:21:04'),
('019ec012-179a-7170-bb75-1cab63cb279c','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'ini kenapa upload profile ku gak bisa yaaa\'',0,'2026-06-13 01:21:11','2026-06-13 01:21:11'),
('019ec012-9d04-7059-8e25-2787889f88a6','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:21:45','2026-06-13 01:21:45'),
('019ec012-bf94-7358-964e-0e1a293626d5','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:21:54','2026-06-13 01:21:54'),
('019ec013-fe14-70b0-ae53-25030eb0273d','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:23:16','2026-06-13 01:23:16'),
('019ec014-27e5-71dd-9ced-c07a604d05b8','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:23:26','2026-06-13 01:23:26'),
('019ec015-1aac-7120-b861-5b7b57886dd8','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:24:29','2026-06-13 01:24:29'),
('019ec015-4b29-7351-8c3a-d32d71763a60','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:24:41','2026-06-13 01:24:41'),
('019ec015-8026-7188-b5e9-255dda5cea35','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:24:55','2026-06-13 01:24:55'),
('019ec015-a31a-7226-aae4-f993593135f5','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:25:04','2026-06-13 01:25:04'),
('019ec017-70ff-7354-af36-23bd4e5cfaba','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:27:02','2026-06-13 01:27:02'),
('019ec01a-b325-7260-8c30-2efb8825bf58','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:30:35','2026-06-13 01:30:35'),
('019ec026-36d2-7335-99f5-a282ef9fde20','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:43:10','2026-06-13 01:43:10'),
('019ec026-5304-70d3-a4e0-f47117c102bf','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:43:17','2026-06-13 01:43:17'),
('019ec029-a34e-701d-b283-323112069664','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:46:54','2026-06-13 01:46:54'),
('019ec029-f472-7358-a546-9ce74dc65846','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:47:15','2026-06-13 01:47:15'),
('019ec02a-1d4c-70d9-958f-cf6cd6df1217','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:47:26','2026-06-13 01:47:26'),
('019ec02a-890e-703c-80f3-7b4b39dfa8b0','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:47:53','2026-06-13 01:47:53'),
('019ec02a-a3be-734a-8f3a-68562be413f8','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:48:00','2026-06-13 01:48:00'),
('019ec02a-deff-7152-bb81-173fc1875c00','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:48:15','2026-06-13 01:48:15'),
('019ec02b-25b5-7310-adae-3c1d5427f91c','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:48:33','2026-06-13 01:48:33'),
('019ec02c-0f1b-72f1-bf93-36fc4478ebd1','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:49:33','2026-06-13 01:49:33'),
('019ec02c-99ab-7161-8ae7-07f4a33fd4f3','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:50:08','2026-06-13 01:50:08'),
('019ec02c-be74-7349-bf66-d1dd1f139b3b','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:50:18','2026-06-13 01:50:18'),
('019ec02c-efab-7237-8bff-2d903bdc33b0','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:50:30','2026-06-13 01:50:30'),
('019ec02d-441b-7123-a5e2-1893e6a8d24a','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:50:52','2026-06-13 01:50:52'),
('019ec035-4675-713d-8d25-ba1ce813fe54','019eb100-0a8b-7229-a92a-b969f258d201','019ebfa9-bcb3-7028-a760-db9abea0b5c6','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User adib nugroho menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 01:59:37','2026-06-13 01:59:37'),
('019ec0bb-d257-700b-a78a-2a11e5debc9e','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','comment','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User pratama abdi rafigha berkomentar pada postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 04:26:35','2026-06-13 04:26:35'),
('019ec16f-3802-708a-aa37-38922d2bf391','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User pratama abdi rafigha menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 07:42:32','2026-06-13 07:42:32'),
('019ec16f-3d2d-70de-902d-9a7cbdc23f8c','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User pratama abdi rafigha menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 07:42:33','2026-06-13 07:42:33'),
('019ec1bf-b596-72ae-95e3-d569823d3410','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User pratama abdi rafigha menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 09:10:27','2026-06-13 09:10:27'),
('019ec1bf-b823-72f7-8968-234b9ee568d6','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User pratama abdi rafigha menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 09:10:27','2026-06-13 09:10:27'),
('019ec1bf-ba31-72a5-aeb3-7fc50376f144','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','like','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User pratama abdi rafigha menyukai postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 09:10:28','2026-06-13 09:10:28'),
('019ec1c0-4daa-7271-855e-53a45c9b2f4d','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','comment','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User pratama abdi rafigha berkomentar pada postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 09:11:06','2026-06-13 09:11:06'),
('019ec368-93cc-70f4-be57-c93e66b8ffd0','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019eb100-0a8b-7229-a92a-b969f258d201','comment','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','User Naufal Dzaky berkomentar pada postingan Anda \'saya mau bertanya kenapa nopal cepet lelah\'',0,'2026-06-13 16:54:31','2026-06-13 16:54:31'),
('019ec368-93d0-73ef-be71-3e2a4090b85d','019ebfa9-bcb3-7028-a760-db9abea0b5c6','019eb100-0a8b-7229-a92a-b969f258d201','reply','019ebfe1-f38a-71e0-8e8a-736413d6f976','App\\Models\\Comment','User Naufal Dzaky membalas komentar Anda',0,'2026-06-13 16:54:31','2026-06-13 16:54:31'),
('019ec368-be1e-723c-9b06-8a55943c6cce','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019eb100-0a8b-7229-a92a-b969f258d201','vote','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','User Naufal Dzaky memberi upvote pada postingan Anda \'saya mau bertanya kenapa nopal cepet lelah\'',0,'2026-06-13 16:54:42','2026-06-13 16:54:42'),
('019ec3a8-81ce-7316-a3c2-d91b65f0cfef','019eb100-0a8b-7229-a92a-b969f258d201','019eb0e5-815d-71cc-aacb-25e93e421dde','comment','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','User Super Admin berkomentar pada postingan Anda \'aksata jaya sekolah keren\'',0,'2026-06-13 18:04:20','2026-06-13 18:04:20'),
('019ec3aa-3f3a-735f-a972-94df9714e5c2','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb100-0a8b-7229-a92a-b969f258d201','reply','019ec3a8-81c5-718f-9054-b7bd20cf2945','App\\Models\\Comment','User Naufal Dzaky membalas komentar Anda',0,'2026-06-13 18:06:14','2026-06-13 18:06:14'),
('019ec3aa-6257-731f-9338-ebe825147d39','019eb0e5-815d-71cc-aacb-25e93e421dde','019eb100-0a8b-7229-a92a-b969f258d201','accepted_answer','019ec3a8-81c5-718f-9054-b7bd20cf2945','App\\Models\\Comment','Jawaban Anda pada postingan \'aksata jaya sekolah keren\' telah diterima sebagai solusi',0,'2026-06-13 18:06:23','2026-06-13 18:06:23'),
('019ec3b0-1c8b-7032-bcbc-522d78021a13','019eb100-0a8b-7229-a92a-b969f258d201','019eb0e5-815d-71cc-aacb-25e93e421dde','follow','019eb0e5-815d-71cc-aacb-25e93e421dde','App\\Models\\User','User Super Admin mulai mengikuti Anda',0,'2026-06-13 18:12:39','2026-06-13 18:12:39'),
('019ec3b4-ec77-71f8-a8c9-4a5c2ead3995','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019eb100-0a8b-7229-a92a-b969f258d201','like','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','User Naufal Dzaky menyukai postingan Anda \'saya mau bertanya kenapa nopal cepet lelah\'',0,'2026-06-13 18:17:54','2026-06-13 18:17:54'),
('019ec3b6-0544-7369-a783-e5ba54ed5d5f','019eb100-0a8b-7229-a92a-b969f258d201','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','like','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','User pratama abdi rafigha menyukai postingan Anda \'aksata jaya josjis keren\'',0,'2026-06-13 18:19:06','2026-06-13 18:19:06'),
('019ec3b7-401d-7312-bbc2-66048e8f2c2e','019eb100-0a8b-7229-a92a-b969f258d201','019eb0e5-815d-71cc-aacb-25e93e421dde','comment','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','User Super Admin berkomentar pada postingan Anda \'ini kenapa upload profile ku gak bisa yaaa\'',0,'2026-06-13 18:20:27','2026-06-13 18:20:27'),
('019ec3bb-0e55-70d1-b267-7b4ee6a2c5a2','019eb100-0a8b-7229-a92a-b969f258d201','019ec3b9-de09-730e-9e6a-5a4ae5700530','comment','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','User melvin berkomentar pada postingan Anda \'ini kenapa upload profile ku gak bisa yaaa\'',0,'2026-06-13 18:24:36','2026-06-13 18:24:36'),
('019ec3c6-76be-73d4-950b-8b306301fe68','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019ec3b9-de09-730e-9e6a-5a4ae5700530','vote','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','User melvin memberi upvote pada postingan Anda \'saya mau bertanya kenapa nopal cepet lelah\'',0,'2026-06-13 18:37:04','2026-06-13 18:37:04'),
('019ec3c8-fa0b-73fd-b1b7-87d47603a863','019ec3b9-de09-730e-9e6a-5a4ae5700530','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','like','019ec3c3-1598-7282-9201-23eebaa890eb','App\\Models\\Post','User pratama abdi rafigha menyukai postingan Anda \'inii kenaapaa vote ku eror woiii\'',0,'2026-06-13 18:39:48','2026-06-13 18:39:48'),
('019ec3c9-51f4-7074-926f-ddf058536d1e','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019ec3b9-de09-730e-9e6a-5a4ae5700530','comment','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','User melvin berkomentar pada postingan Anda \'saya mau bertanya kenapa nopal cepet lelah\'',0,'2026-06-13 18:40:11','2026-06-13 18:40:11'),
('019ec3c9-51f6-7351-bfb6-318cd561924c','019ebfa9-bcb3-7028-a760-db9abea0b5c6','019ec3b9-de09-730e-9e6a-5a4ae5700530','reply','019ebfe1-f38a-71e0-8e8a-736413d6f976','App\\Models\\Comment','User melvin membalas komentar Anda',0,'2026-06-13 18:40:11','2026-06-13 18:40:11');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` char(36) NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES
(2,'App\\Models\\User','019eb0e5-815d-71cc-aacb-25e93e421dde','auth_token','143170f44d514117ea84e39d8d274333db49f42e0565432bcc8472b49d6f9dbf','[\"*\"]','2026-06-12 22:59:12',NULL,'2026-06-10 03:22:50','2026-06-12 22:59:12'),
(3,'App\\Models\\User','019eb11f-16b8-708a-8526-201885b58f5c','auth_token','70640e91b07f5dc750bceda2b9895393dc196fcbce9e7bd1a96a93396d753fd5','[\"*\"]','2026-06-10 03:41:19',NULL,'2026-06-10 03:41:05','2026-06-10 03:41:19'),
(5,'App\\Models\\User','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','auth_token','7beb6e1bd45e6f739e6a49711241e3bf1d859df0889865eb928333a8198d84a4','[\"*\"]','2026-06-13 04:18:32',NULL,'2026-06-10 03:41:51','2026-06-13 04:18:32'),
(10,'App\\Models\\User','019eb100-0a8b-7229-a92a-b969f258d201','auth_token','576ac99b850ba071a8eb7380330933c1da2d20879b39d8c1c56f85c91fc83ac5','[\"*\"]','2026-06-10 05:08:41',NULL,'2026-06-10 04:51:44','2026-06-10 05:08:41'),
(11,'App\\Models\\User','019eb173-00de-7371-91c2-c61edc541468','auth_token','16c4201a1308276aab57d0d4c1e2e546fc887a4d5235dd0e007a4ea473519d8a','[\"*\"]','2026-06-11 00:07:45',NULL,'2026-06-10 05:12:44','2026-06-11 00:07:45'),
(15,'App\\Models\\User','019eb0e5-815d-71cc-aacb-25e93e421dde','auth_token','0b1200fae10fb7ba38a44a375a9c4de6702f376318183c5022d1fcfebf8ae138','[\"*\"]','2026-06-10 23:23:32',NULL,'2026-06-10 23:23:26','2026-06-10 23:23:32'),
(16,'App\\Models\\User','019eb559-931f-73ae-a2fc-42c5474ebc8f','auth_token','e6a27420d2fc1975a49ba108249d1f3fc4bfdb3c73e7ac5ac53c6afe475be8d8','[\"*\"]',NULL,NULL,'2026-06-10 23:23:27','2026-06-10 23:23:27'),
(18,'App\\Models\\User','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','auth_token','158fa0425daedabdace6cdee51e3038b81bd967e47613d274cb8017ed217bfbf','[\"*\"]','2026-06-11 00:27:27',NULL,'2026-06-10 23:40:37','2026-06-11 00:27:27'),
(21,'App\\Models\\User','019eb173-00de-7371-91c2-c61edc541468','auth_token','f173b95327a7f64682de4caa6fde0845116d0efbfcc7fd0bf4678a3be36d0f4c','[\"*\"]','2026-06-11 00:11:20',NULL,'2026-06-10 23:44:29','2026-06-11 00:11:20'),
(22,'App\\Models\\User','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','auth_token','fe963a3ae571921a9f453895371025fc95faebb619ad0b78a06c9894d95b240a','[\"*\"]','2026-06-11 00:15:24',NULL,'2026-06-11 00:05:05','2026-06-11 00:15:24'),
(26,'App\\Models\\User','019eb0e5-815d-71cc-aacb-25e93e421dde','auth_token','ba81ff9a773a8057b5f4167adbf770995b4b6e786217364b539fa253db4cad08','[\"*\"]','2026-06-11 03:15:10',NULL,'2026-06-11 03:13:52','2026-06-11 03:15:10'),
(27,'App\\Models\\User','019eb62c-8ab0-7090-bb0e-e3ab1178817a','auth_token','cb46185209e71a705ff0315e5e9ead63dff00944d945e9ac2fd3677b602a5740','[\"*\"]',NULL,NULL,'2026-06-11 03:13:52','2026-06-11 03:13:52'),
(29,'App\\Models\\User','019eb0e5-815d-71cc-aacb-25e93e421dde','auth_token','f6a43a417d37e95cf8ff14fff8b3c6e84d6360ffdaa10d928da4c4126226f5e9','[\"*\"]','2026-06-11 03:17:58',NULL,'2026-06-11 03:17:43','2026-06-11 03:17:58'),
(30,'App\\Models\\User','019eb630-10ae-716b-bd0f-ac898a5fe954','auth_token','424f2d01cffcfa20c10a1a63ff5884ed4f632322ef58e2a78d222266ff5c7a26','[\"*\"]',NULL,NULL,'2026-06-11 03:17:43','2026-06-11 03:17:43'),
(31,'App\\Models\\User','019eb630-10ae-716b-bd0f-ac898a5fe954','auth_token','e4d1a149fe6101a9c5f071750551707fed96878bf3b4327704b5c467288e274f','[\"*\"]','2026-06-11 03:17:55',NULL,'2026-06-11 03:17:47','2026-06-11 03:17:55'),
(33,'App\\Models\\User','019eb0e5-815d-71cc-aacb-25e93e421dde','auth_token','5ba47d421bfed23d81c66b39867add86bc883782e36512f550581ca5cfd464c3','[\"*\"]','2026-06-11 03:19:57',NULL,'2026-06-11 03:18:00','2026-06-11 03:19:57'),
(34,'App\\Models\\User','019eb630-592b-71c6-b976-58980f7b3af8','auth_token','5409ae1937fc7eeabce9a8bd974cbdaea2735c3adcba494befd4d4ec81dfdea1','[\"*\"]',NULL,NULL,'2026-06-11 03:18:02','2026-06-11 03:18:02'),
(36,'App\\Models\\User','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','auth_token','b94d2f69888c13cc6015abb80b1e2f30b21cba3d611b97a03a28863f8c278df9','[\"*\"]','2026-06-11 08:01:16',NULL,'2026-06-11 05:09:53','2026-06-11 08:01:16'),
(37,'App\\Models\\User','019eb6ba-346f-7346-b835-5df00b28bd13','auth_token','0d9ff084de9fc62f6fa1e735b5eb808e20a1deca2bedf6941cabad7d6cc3d9c2','[\"*\"]',NULL,NULL,'2026-06-11 05:48:36','2026-06-11 05:48:36'),
(39,'App\\Models\\User','019eb0e5-815d-71cc-aacb-25e93e421dde','auth_token','ed0a982db1bb846fd283391029d6b91905cda2b068017ca6e98b5073481d47e2','[\"*\"]',NULL,NULL,'2026-06-11 05:48:55','2026-06-11 05:48:55'),
(40,'App\\Models\\User','019eb6ba-7fa4-711d-a7ef-858a3b838a90','auth_token','bb6d2572d45625df04a164a14566e6ae004c28769cb10f20fd13d1a07bf033fe','[\"*\"]',NULL,NULL,'2026-06-11 05:48:56','2026-06-11 05:48:56'),
(41,'App\\Models\\User','019eb0e5-815d-71cc-aacb-25e93e421dde','auth_token','38ffeff5ab5f0ccfa4cc712e6ecc4d39fb2938dc6062874589341ebedc5567a9','[\"*\"]','2026-06-12 01:30:48',NULL,'2026-06-11 06:52:08','2026-06-12 01:30:48'),
(42,'App\\Models\\User','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','auth_token','3871e1d9c134669b482f6d28d784c52fc94ebeceb47fc9d0e441de490b600b9f','[\"*\"]','2026-06-12 00:45:22',NULL,'2026-06-11 23:39:30','2026-06-12 00:45:22'),
(46,'App\\Models\\User','019eb100-0a8b-7229-a92a-b969f258d201','auth_token','5f634a2754ceaec616ee40633c35dccd511523e515055bc8b09a719d58b4110e','[\"*\"]','2026-06-12 01:38:17',NULL,'2026-06-12 00:56:13','2026-06-12 01:38:17'),
(47,'App\\Models\\User','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','auth_token','82e03391f44b17223f72c4300ec4618aea49effef4f4941fcc90092fedb7a7b8','[\"*\"]',NULL,NULL,'2026-06-12 01:40:21','2026-06-12 01:40:21'),
(49,'App\\Models\\User','019eb173-00de-7371-91c2-c61edc541468','auth_token','6eea71db3205817ff130714f3c99299088dbecec89c9ec48262582d8a950f60d','[\"*\"]','2026-06-13 01:52:13',NULL,'2026-06-12 21:11:08','2026-06-13 01:52:13'),
(50,'App\\Models\\User','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','auth_token','75ad25b8b7e650f6fa5b655e5c55869c891ad8e3d5b09ca7f4d925b95f48babf','[\"*\"]','2026-06-13 19:21:52',NULL,'2026-06-12 23:03:17','2026-06-13 19:21:52'),
(51,'App\\Models\\User','019eb173-00de-7371-91c2-c61edc541468','auth_token','c8ebfa4b039c7be5f766bd76960726bde18a0f032a7c49574f916811c0e6502e','[\"*\"]','2026-06-12 23:04:17',NULL,'2026-06-12 23:03:57','2026-06-12 23:04:17'),
(53,'App\\Models\\User','019eb173-00de-7371-91c2-c61edc541468','auth_token','0c4972bd2d11726edd5f0c8f52adca055175ca5269ff3a6a46e645fa0af859f3','[\"*\"]','2026-06-13 06:03:15',NULL,'2026-06-13 02:35:41','2026-06-13 06:03:15'),
(64,'App\\Models\\User','019eb100-0a8b-7229-a92a-b969f258d201','auth_token','ce69cf7b399da412f9f9d0ae496a256b22b057e672af2b62ea322beaf9697567','[\"*\"]','2026-06-13 19:22:23',NULL,'2026-06-13 18:48:59','2026-06-13 19:22:23');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `points_log`
--

DROP TABLE IF EXISTS `points_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `points_log` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `points` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `points_log_user_id_foreign` (`user_id`),
  CONSTRAINT `points_log_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points_log`
--

LOCK TABLES `points_log` WRITE;
/*!40000 ALTER TABLE `points_log` DISABLE KEYS */;
INSERT INTO `points_log` VALUES
('019eb119-d158-7374-b82e-f0c963be1498','019eb100-0a8b-7229-a92a-b969f258d201',10,'create_post','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','2026-06-10 03:35:19','2026-06-10 03:35:19'),
('019eb121-3db3-7370-b9ab-61dc1f61c95d','019eb11f-16b8-708a-8526-201885b58f5c',2,'create_comment','019eb121-3daf-73f0-b451-f6d897967513','App\\Models\\Comment','2026-06-10 03:43:26','2026-06-10 03:43:26'),
('019eb121-9a18-7037-94b2-b1781ebd69f6','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',10,'create_post','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','2026-06-10 03:43:49','2026-06-10 03:43:49'),
('019eb137-6d31-703e-9214-75b9592bb99d','019eb11f-16b8-708a-8526-201885b58f5c',2,'create_comment','019eb137-6d2d-726e-a588-8f5a9e8313ce','App\\Models\\Comment','2026-06-10 04:07:40','2026-06-10 04:07:40'),
('019eb137-7bd3-703a-967d-d426b7a728f1','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','2026-06-10 04:07:43','2026-06-10 04:07:43'),
('019eb137-7bd9-7339-b4e0-6cae8af3b339','019eb11f-16b8-708a-8526-201885b58f5c',-1,'vote_downvote_giver','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','2026-06-10 04:07:43','2026-06-10 04:07:43'),
('019eb41f-19c4-7079-8409-4b7e0f9fba89','019eb100-0a8b-7229-a92a-b969f258d201',10,'create_post','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','2026-06-10 17:39:57','2026-06-10 17:39:57'),
('019eb54f-8c71-7156-8d5e-6ae79922762c','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','2026-06-10 23:12:29','2026-06-10 23:12:29'),
('019eb54f-8c76-721e-bbb3-4e4f88d36fcb','019eb0e5-815d-71cc-aacb-25e93e421dde',-1,'vote_downvote_giver','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','2026-06-10 23:12:29','2026-06-10 23:12:29'),
('019eb54f-9493-7256-9eac-b8700ccb9dbd','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',2,'vote_changed_from_downvote','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','2026-06-10 23:12:32','2026-06-10 23:12:32'),
('019eb54f-9498-7348-867b-6d40038a2352','019eb0e5-815d-71cc-aacb-25e93e421dde',1,'vote_changed_from_downvote_giver','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','2026-06-10 23:12:32','2026-06-10 23:12:32'),
('019eb54f-949d-7131-8ad9-b365753b6efd','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',5,'vote_upvote_post','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','2026-06-10 23:12:32','2026-06-10 23:12:32'),
('019eb54f-9d80-7087-a77c-59f705245864','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-5,'vote_removed_upvote_post','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','2026-06-10 23:12:34','2026-06-10 23:12:34'),
('019eb54f-a7e1-7257-a929-e5af893a9378','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','2026-06-10 23:12:36','2026-06-10 23:12:36'),
('019eb54f-a7e7-7059-9c43-3f697b0d26ae','019eb0e5-815d-71cc-aacb-25e93e421dde',-1,'vote_downvote_giver','019eb121-9a12-70d6-b238-029716a9f00f','App\\Models\\Post','2026-06-10 23:12:36','2026-06-10 23:12:36'),
('019eb550-272f-7228-a319-72341820ae6a','019eb0e5-815d-71cc-aacb-25e93e421dde',2,'create_comment','019eb550-272b-70a6-b49c-3ba3df62837b','App\\Models\\Comment','2026-06-10 23:13:09','2026-06-10 23:13:09'),
('019eb559-9ebd-7183-98d7-3470810ddb30','019eb559-931f-73ae-a2fc-42c5474ebc8f',10,'create_post','019eb559-9eb3-704d-a232-ce2248042faf','App\\Models\\Post','2026-06-10 23:23:29','2026-06-10 23:23:29'),
('019eb559-a0ef-72ae-83e7-1e1b629105db','019eb0e5-815d-71cc-aacb-25e93e421dde',2,'create_comment','019eb559-a0eb-73e2-939f-7b9a370c25f6','App\\Models\\Comment','2026-06-10 23:23:30','2026-06-10 23:23:30'),
('019eb559-a1a3-7134-96d2-68bed119df4d','019eb0e5-815d-71cc-aacb-25e93e421dde',15,'answer_accepted','019eb559-a0eb-73e2-939f-7b9a370c25f6','App\\Models\\Comment','2026-06-10 23:23:30','2026-06-10 23:23:30'),
('019eb559-a296-71c5-888f-5228baabe12f','019eb559-931f-73ae-a2fc-42c5474ebc8f',5,'vote_upvote_post','019eb559-9eb3-704d-a232-ce2248042faf','App\\Models\\Post','2026-06-10 23:23:30','2026-06-10 23:23:30'),
('019eb580-c288-70b5-b8df-41503be60613','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',10,'create_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-11 00:06:15','2026-06-11 00:06:15'),
('019eb62c-d4cc-7207-affe-69eea77528a8','019eb62c-8ab0-7090-bb0e-e3ab1178817a',10,'create_post','019eb62c-d4c2-7157-aedd-c2b76a983d76','App\\Models\\Post','2026-06-11 03:14:11','2026-06-11 03:14:11'),
('019eb62c-f656-73e9-ae73-959e78ff2e46','019eb0e5-815d-71cc-aacb-25e93e421dde',2,'create_comment','019eb62c-f652-71ef-85de-5a993d8ba3a0','App\\Models\\Comment','2026-06-11 03:14:20','2026-06-11 03:14:20'),
('019eb62d-065d-70f4-a077-e603d6aa763e','019eb62c-8ab0-7090-bb0e-e3ab1178817a',2,'create_comment','019eb62d-0658-709b-b4a8-a800fcb4e85b','App\\Models\\Comment','2026-06-11 03:14:24','2026-06-11 03:14:24'),
('019eb62d-0b30-70c4-9990-5553287a0aef','019eb0e5-815d-71cc-aacb-25e93e421dde',15,'answer_accepted','019eb62c-f652-71ef-85de-5a993d8ba3a0','App\\Models\\Comment','2026-06-11 03:14:25','2026-06-11 03:14:25'),
('019eb62d-1284-73c3-8bc1-e48487bcd7ed','019eb62c-8ab0-7090-bb0e-e3ab1178817a',5,'vote_upvote_post','019eb62c-d4c2-7157-aedd-c2b76a983d76','App\\Models\\Post','2026-06-11 03:14:27','2026-06-11 03:14:27'),
('019eb62d-1413-7112-b56d-574fd1f455db','019eb62c-8ab0-7090-bb0e-e3ab1178817a',-5,'vote_removed_upvote_post','019eb62c-d4c2-7157-aedd-c2b76a983d76','App\\Models\\Post','2026-06-11 03:14:28','2026-06-11 03:14:28'),
('019eb62d-1596-7153-818f-e84282bd51e9','019eb62c-8ab0-7090-bb0e-e3ab1178817a',-2,'vote_downvote_post','019eb62c-d4c2-7157-aedd-c2b76a983d76','App\\Models\\Post','2026-06-11 03:14:28','2026-06-11 03:14:28'),
('019eb62d-159c-70fe-a7e3-59a0ffa38a02','019eb0e5-815d-71cc-aacb-25e93e421dde',-1,'vote_downvote_giver','019eb62c-d4c2-7157-aedd-c2b76a983d76','App\\Models\\Post','2026-06-11 03:14:28','2026-06-11 03:14:28'),
('019eb62d-2148-72c2-9204-23e7446d5822','019eb0e5-815d-71cc-aacb-25e93e421dde',3,'vote_upvote_comment','019eb62c-f652-71ef-85de-5a993d8ba3a0','App\\Models\\Comment','2026-06-11 03:14:31','2026-06-11 03:14:31'),
('019eb630-b52b-736a-b494-e1ad83e994c8','019eb630-592b-71c6-b976-58980f7b3af8',10,'create_post','019eb630-b523-72d2-9cc9-ccfaf5c37027','App\\Models\\Post','2026-06-11 03:18:25','2026-06-11 03:18:25'),
('019eb630-e9c1-73d2-86f0-e9a08ea4fed2','019eb0e5-815d-71cc-aacb-25e93e421dde',2,'create_comment','019eb630-e9bd-710c-9a2d-37d0a2c81ef6','App\\Models\\Comment','2026-06-11 03:18:39','2026-06-11 03:18:39'),
('019eb631-00eb-7148-9269-5ca1bcbc8f35','019eb630-592b-71c6-b976-58980f7b3af8',2,'create_comment','019eb631-00e6-7388-b697-04ec2730a292','App\\Models\\Comment','2026-06-11 03:18:45','2026-06-11 03:18:45'),
('019eb631-3184-729e-89ac-a708c43b4caf','019eb0e5-815d-71cc-aacb-25e93e421dde',15,'answer_accepted','019eb630-e9bd-710c-9a2d-37d0a2c81ef6','App\\Models\\Comment','2026-06-11 03:18:57','2026-06-11 03:18:57'),
('019eb631-3878-7151-b058-4840d8a16ea3','019eb630-592b-71c6-b976-58980f7b3af8',5,'vote_upvote_post','019eb630-b523-72d2-9cc9-ccfaf5c37027','App\\Models\\Post','2026-06-11 03:18:59','2026-06-11 03:18:59'),
('019eb631-3a5b-7047-b281-33d47f736807','019eb630-592b-71c6-b976-58980f7b3af8',-5,'vote_removed_upvote_post','019eb630-b523-72d2-9cc9-ccfaf5c37027','App\\Models\\Post','2026-06-11 03:19:00','2026-06-11 03:19:00'),
('019eb631-3c54-7185-9b8a-f40545401ce4','019eb630-592b-71c6-b976-58980f7b3af8',-2,'vote_downvote_post','019eb630-b523-72d2-9cc9-ccfaf5c37027','App\\Models\\Post','2026-06-11 03:19:00','2026-06-11 03:19:00'),
('019eb631-3c5b-7079-aa13-a1637a20b01d','019eb0e5-815d-71cc-aacb-25e93e421dde',-1,'vote_downvote_giver','019eb630-b523-72d2-9cc9-ccfaf5c37027','App\\Models\\Post','2026-06-11 03:19:00','2026-06-11 03:19:00'),
('019eb631-45fa-702d-befc-e07237b6e6e0','019eb0e5-815d-71cc-aacb-25e93e421dde',3,'vote_upvote_comment','019eb630-e9bd-710c-9a2d-37d0a2c81ef6','App\\Models\\Comment','2026-06-11 03:19:03','2026-06-11 03:19:03'),
('019eb69d-beda-7076-9c7d-b656b597ef3b','019eb100-0a8b-7229-a92a-b969f258d201',5,'vote_upvote_post','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','2026-06-11 05:17:31','2026-06-11 05:17:31'),
('019eb69d-c5b9-723f-b703-b736f26c9bbd','019eb100-0a8b-7229-a92a-b969f258d201',-5,'vote_changed_from_upvote','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','2026-06-11 05:17:33','2026-06-11 05:17:33'),
('019eb69d-c5be-703e-b1e3-810373af0725','019eb100-0a8b-7229-a92a-b969f258d201',-2,'vote_downvote_post','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','2026-06-11 05:17:33','2026-06-11 05:17:33'),
('019eb69d-c5c3-71a6-a06c-ac0894962333','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-1,'vote_downvote_giver','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','2026-06-11 05:17:33','2026-06-11 05:17:33'),
('019eb6bf-18d2-707c-ba0f-bd9fe5758906','019eb100-0a8b-7229-a92a-b969f258d201',2,'vote_removed_downvote_post','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','2026-06-11 05:53:57','2026-06-11 05:53:57'),
('019eb6bf-18d8-71d6-9ac0-fa4287c2cf2f','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',1,'vote_removed_downvote_giver','019eb41f-19b9-7339-9db0-1d8af6215c2a','App\\Models\\Post','2026-06-11 05:53:57','2026-06-11 05:53:57'),
('019eba32-b73c-73a7-b257-e96962eaa0c0','019eb100-0a8b-7229-a92a-b969f258d201',5,'vote_upvote_post','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','2026-06-11 21:59:06','2026-06-11 21:59:06'),
('019eba32-bb08-73d9-a239-2afc32618106','019eb100-0a8b-7229-a92a-b969f258d201',-5,'vote_changed_from_upvote','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','2026-06-11 21:59:07','2026-06-11 21:59:07'),
('019eba32-bb0d-723f-8f9c-7b92a4b9558e','019eb100-0a8b-7229-a92a-b969f258d201',-2,'vote_downvote_post','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','2026-06-11 21:59:07','2026-06-11 21:59:07'),
('019eba32-bb12-7031-a361-a9df79b4240f','019eb173-00de-7371-91c2-c61edc541468',-1,'vote_downvote_giver','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','2026-06-11 21:59:07','2026-06-11 21:59:07'),
('019eba32-c1b7-7357-91c7-347697111377','019eb100-0a8b-7229-a92a-b969f258d201',2,'vote_changed_from_downvote','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','2026-06-11 21:59:09','2026-06-11 21:59:09'),
('019eba32-c1bd-73dc-99d2-95bf660824fd','019eb173-00de-7371-91c2-c61edc541468',1,'vote_changed_from_downvote_giver','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','2026-06-11 21:59:09','2026-06-11 21:59:09'),
('019eba32-c1c1-72d2-96e6-d8515d01416d','019eb100-0a8b-7229-a92a-b969f258d201',5,'vote_upvote_post','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','2026-06-11 21:59:09','2026-06-11 21:59:09'),
('019eba32-c29e-7381-83ac-a17db956eb66','019eb100-0a8b-7229-a92a-b969f258d201',-5,'vote_removed_upvote_post','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','2026-06-11 21:59:09','2026-06-11 21:59:09'),
('019eba32-d351-712b-9da0-8e28da0776fa','019eb100-0a8b-7229-a92a-b969f258d201',5,'vote_upvote_post','019eb119-d152-71b7-ac66-50a477334319','App\\Models\\Post','2026-06-11 21:59:13','2026-06-11 21:59:13'),
('019ebad6-18bd-7198-8c06-5dc5d7bf963f','019eb100-0a8b-7229-a92a-b969f258d201',10,'create_post','019ebad6-18af-71fc-b5e2-8f05ea653ad7','App\\Models\\Post','2026-06-12 00:57:33','2026-06-12 00:57:33'),
('019ebad8-560c-70ba-9436-d674a447263c','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-12 01:00:00','2026-06-12 01:00:00'),
('019ebad8-5612-70c3-922f-55ef9f4a4ce4','019eb100-0a8b-7229-a92a-b969f258d201',-1,'vote_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-12 01:00:00','2026-06-12 01:00:00'),
('019ebad8-61b6-71af-9f3f-1df62d4f45a8','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',2,'vote_removed_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-12 01:00:03','2026-06-12 01:00:03'),
('019ebad8-61bb-73de-bc64-fb8784e3eb00','019eb100-0a8b-7229-a92a-b969f258d201',1,'vote_removed_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-12 01:00:03','2026-06-12 01:00:03'),
('019ebad8-6d13-7271-ad82-0bf52b0e2220','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-12 01:00:06','2026-06-12 01:00:06'),
('019ebad8-6d18-73d0-ade1-b60b23786229','019eb100-0a8b-7229-a92a-b969f258d201',-1,'vote_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-12 01:00:06','2026-06-12 01:00:06'),
('019ebfe1-f38f-716e-9752-2f62117312c2','019ebfa9-bcb3-7028-a760-db9abea0b5c6',2,'create_comment','019ebfe1-f38a-71e0-8e8a-736413d6f976','App\\Models\\Comment','2026-06-13 00:28:36','2026-06-13 00:28:36'),
('019ec0bb-d253-7093-bdf5-b95c92d1f265','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',2,'create_comment','019ec0bb-d24e-7163-acc0-3c99f84dbcca','App\\Models\\Comment','2026-06-13 04:26:35','2026-06-13 04:26:35'),
('019ec1c0-4da5-71a1-8bf9-139cf82a7eb3','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',2,'create_comment','019ec1c0-4da0-7289-9d26-cdd2cff5878f','App\\Models\\Comment','2026-06-13 09:11:06','2026-06-13 09:11:06'),
('019ec368-93c8-7251-a7e0-565b34938d58','019eb100-0a8b-7229-a92a-b969f258d201',2,'create_comment','019ec368-93c3-73c7-967e-eef6a0d56549','App\\Models\\Comment','2026-06-13 16:54:31','2026-06-13 16:54:31'),
('019ec368-be0f-736d-9ad7-ecae31350aec','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',2,'vote_changed_from_downvote','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 16:54:42','2026-06-13 16:54:42'),
('019ec368-be15-72e7-b3a1-92b7322e1790','019eb100-0a8b-7229-a92a-b969f258d201',1,'vote_changed_from_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 16:54:42','2026-06-13 16:54:42'),
('019ec368-be1a-7113-bcaa-7d3ca0dd2db5','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',5,'vote_upvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 16:54:42','2026-06-13 16:54:42'),
('019ec388-7c10-7317-a3f6-368a079bbc58','019ebfa9-bcb3-7028-a760-db9abea0b5c6',3,'vote_upvote_comment','019ebfe1-f38a-71e0-8e8a-736413d6f976','App\\Models\\Comment','2026-06-13 17:29:22','2026-06-13 17:29:22'),
('019ec388-83a0-731b-97b2-3eaa0c6a841a','019ebfa9-bcb3-7028-a760-db9abea0b5c6',-3,'vote_removed_upvote_comment','019ebfe1-f38a-71e0-8e8a-736413d6f976','App\\Models\\Comment','2026-06-13 17:29:24','2026-06-13 17:29:24'),
('019ec388-884f-73b9-866c-50575ae0b992','019ebfa9-bcb3-7028-a760-db9abea0b5c6',3,'vote_upvote_comment','019ebfe1-f38a-71e0-8e8a-736413d6f976','App\\Models\\Comment','2026-06-13 17:29:25','2026-06-13 17:29:25'),
('019ec3a8-81c9-71dd-bfab-d7949626d478','019eb0e5-815d-71cc-aacb-25e93e421dde',2,'create_comment','019ec3a8-81c5-718f-9054-b7bd20cf2945','App\\Models\\Comment','2026-06-13 18:04:20','2026-06-13 18:04:20'),
('019ec3aa-3f35-7272-b0e2-6e94c618233c','019eb100-0a8b-7229-a92a-b969f258d201',2,'create_comment','019ec3aa-3f31-725b-b8ff-e3470c64ec54','App\\Models\\Comment','2026-06-13 18:06:14','2026-06-13 18:06:14'),
('019ec3aa-6251-7295-bac0-4905fedce3cb','019eb0e5-815d-71cc-aacb-25e93e421dde',15,'answer_accepted','019ec3a8-81c5-718f-9054-b7bd20cf2945','App\\Models\\Comment','2026-06-13 18:06:23','2026-06-13 18:06:23'),
('019ec3b7-4019-72c9-af02-f19b763e6c1b','019eb0e5-815d-71cc-aacb-25e93e421dde',2,'create_comment','019ec3b7-4015-73e8-b7ee-491639dbf49a','App\\Models\\Comment','2026-06-13 18:20:27','2026-06-13 18:20:27'),
('019ec3ba-d286-7215-a7c4-9a7bc6edadfb','019eb0e5-815d-71cc-aacb-25e93e421dde',3,'vote_upvote_comment','019ec3b7-4015-73e8-b7ee-491639dbf49a','App\\Models\\Comment','2026-06-13 18:24:21','2026-06-13 18:24:21'),
('019ec3bb-0e50-71fb-b20f-4ee54dc08509','019ec3b9-de09-730e-9e6a-5a4ae5700530',2,'create_comment','019ec3bb-0e4c-7293-90fa-1a64d3938f79','App\\Models\\Comment','2026-06-13 18:24:36','2026-06-13 18:24:36'),
('019ec3c3-15a1-7260-9fba-ba002853a1f3','019ec3b9-de09-730e-9e6a-5a4ae5700530',10,'create_post','019ec3c3-1598-7282-9201-23eebaa890eb','App\\Models\\Post','2026-06-13 18:33:22','2026-06-13 18:33:22'),
('019ec3c6-76b9-7366-9ecd-2495aa9a4a5c','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',5,'vote_upvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:04','2026-06-13 18:37:04'),
('019ec3c6-7d6d-72d2-8bd1-56d23e8a9540','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-5,'vote_changed_from_upvote','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:05','2026-06-13 18:37:05'),
('019ec3c6-7d72-730a-813a-0edce8da7ecb','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:05','2026-06-13 18:37:05'),
('019ec3c6-7d76-70cf-a8d2-e7f9374aa900','019ec3b9-de09-730e-9e6a-5a4ae5700530',-1,'vote_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:05','2026-06-13 18:37:05'),
('019ec3c6-8275-7386-936b-d5ce8d6d4267','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',2,'vote_removed_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:07','2026-06-13 18:37:07'),
('019ec3c6-827a-7060-8bdc-defe6c3f631f','019ec3b9-de09-730e-9e6a-5a4ae5700530',1,'vote_removed_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:07','2026-06-13 18:37:07'),
('019ec3c6-8506-71f3-98b9-e422be9b7c09','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:07','2026-06-13 18:37:07'),
('019ec3c6-850c-719f-8286-4195535395fa','019ec3b9-de09-730e-9e6a-5a4ae5700530',-1,'vote_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:07','2026-06-13 18:37:07'),
('019ec3c6-8833-714a-b4c5-f275ade3d7ab','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',2,'vote_removed_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:08','2026-06-13 18:37:08'),
('019ec3c6-8838-700d-b9fc-f9aaa7878ae8','019ec3b9-de09-730e-9e6a-5a4ae5700530',1,'vote_removed_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:08','2026-06-13 18:37:08'),
('019ec3c6-8ba7-7384-b9c1-1db74088d2d8','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:09','2026-06-13 18:37:09'),
('019ec3c6-8bac-7324-b369-5b1fed46aa9c','019ec3b9-de09-730e-9e6a-5a4ae5700530',-1,'vote_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:09','2026-06-13 18:37:09'),
('019ec3c6-8eba-732a-8e1d-03950dbed031','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',2,'vote_removed_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:10','2026-06-13 18:37:10'),
('019ec3c6-8ebf-72b7-8b64-b2797f2c6880','019ec3b9-de09-730e-9e6a-5a4ae5700530',1,'vote_removed_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:10','2026-06-13 18:37:10'),
('019ec3c6-a2ed-739e-a309-3ec4109fc2f9','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:15','2026-06-13 18:37:15'),
('019ec3c6-a2f2-70e5-b57e-db54bc39b9ce','019ec3b9-de09-730e-9e6a-5a4ae5700530',-1,'vote_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:15','2026-06-13 18:37:15'),
('019ec3c6-b6ad-73f6-9ecd-a085b0d351ce','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',2,'vote_removed_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:20','2026-06-13 18:37:20'),
('019ec3c6-b6b3-71ab-ac17-b53b3056b7e2','019ec3b9-de09-730e-9e6a-5a4ae5700530',1,'vote_removed_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:37:20','2026-06-13 18:37:20'),
('019ec3c7-bd2e-73bb-af39-cd6a267101bf','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:38:27','2026-06-13 18:38:27'),
('019ec3c7-bd33-714e-be5f-f1b6ca4ae91e','019ec3b9-de09-730e-9e6a-5a4ae5700530',-1,'vote_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:38:27','2026-06-13 18:38:27'),
('019ec3c7-c289-71b2-8785-ebb1ab9e1551','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',2,'vote_removed_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:38:29','2026-06-13 18:38:29'),
('019ec3c7-c28e-703c-a307-2b004eef9dcf','019ec3b9-de09-730e-9e6a-5a4ae5700530',1,'vote_removed_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:38:29','2026-06-13 18:38:29'),
('019ec3c8-2f37-736f-ad97-8da014e130ba','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-5,'vote_changed_from_upvote','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:38:56','2026-06-13 18:38:56'),
('019ec3c8-2f3c-7204-9f08-93aace967ac3','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:38:56','2026-06-13 18:38:56'),
('019ec3c8-2f40-73fb-9315-012e625d988a','019eb100-0a8b-7229-a92a-b969f258d201',-1,'vote_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:38:56','2026-06-13 18:38:56'),
('019ec3c8-3bd6-71ae-8628-30aaff965e63','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',2,'vote_removed_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:39:00','2026-06-13 18:39:00'),
('019ec3c8-3bdc-71de-bbfd-386684c3797b','019eb100-0a8b-7229-a92a-b969f258d201',1,'vote_removed_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:39:00','2026-06-13 18:39:00'),
('019ec3c8-412c-708c-b48d-34ef827443ac','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:39:01','2026-06-13 18:39:01'),
('019ec3c8-4132-72dd-95c9-0ee84e0fc1a9','019eb100-0a8b-7229-a92a-b969f258d201',-1,'vote_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:39:01','2026-06-13 18:39:01'),
('019ec3c8-effc-720d-8e74-bf293fcce880','019eb11f-cbcc-71ae-b2d7-2ac6834b664e',-2,'vote_downvote_post','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:39:46','2026-06-13 18:39:46'),
('019ec3c8-f002-7057-b03d-aaa00d16214b','019ec3b9-de09-730e-9e6a-5a4ae5700530',-1,'vote_downvote_giver','019eb580-c284-723b-8c53-db728d058db0','App\\Models\\Post','2026-06-13 18:39:46','2026-06-13 18:39:46'),
('019ec3c9-51f0-702a-958b-d4e0fe85c6d5','019ec3b9-de09-730e-9e6a-5a4ae5700530',2,'create_comment','019ec3c9-51eb-70b7-bc01-77de804e75bd','App\\Models\\Comment','2026-06-13 18:40:11','2026-06-13 18:40:11');
/*!40000 ALTER TABLE `points_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_edit_history`
--

DROP TABLE IF EXISTS `post_edit_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_edit_history` (
  `id` char(36) NOT NULL,
  `post_id` char(36) NOT NULL,
  `edited_by` char(36) NOT NULL,
  `title_before` text NOT NULL,
  `body_before` longtext NOT NULL,
  `title_after` text NOT NULL,
  `body_after` longtext NOT NULL,
  `edit_summary` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_edit_history_post_id_foreign` (`post_id`),
  KEY `post_edit_history_edited_by_foreign` (`edited_by`),
  CONSTRAINT `post_edit_history_edited_by_foreign` FOREIGN KEY (`edited_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_edit_history_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_edit_history`
--

LOCK TABLES `post_edit_history` WRITE;
/*!40000 ALTER TABLE `post_edit_history` DISABLE KEYS */;
INSERT INTO `post_edit_history` VALUES
('019ebad7-3620-72f8-9406-465ef32f31ee','019ebad6-18af-71fc-b5e2-8f05ea653ad7','019eb100-0a8b-7229-a92a-b969f258d201','aksata jaya sekolah keren','kenapa mbg di sekolah saya tidak ada lagi padahal murid lapar','aksata jaya sekolah keren','kenapa mbg di sekolah saya tidak ada lagi padahal murid lapar humm',NULL,'2026-06-12 00:58:46','2026-06-12 00:58:46'),
('019ebad7-6b41-71fb-8c11-dc732cc13c34','019ebad6-18af-71fc-b5e2-8f05ea653ad7','019eb100-0a8b-7229-a92a-b969f258d201','aksata jaya sekolah keren','kenapa mbg di sekolah saya tidak ada lagi padahal murid lapar humm','aksata jaya sekolah keren','kenapa mbg di sekolah saya tidak ada lagi padahal murid lapar humm lapar akuu',NULL,'2026-06-12 00:59:00','2026-06-12 00:59:00');
/*!40000 ALTER TABLE `post_edit_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` char(36) NOT NULL,
  `tag_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_tags_post_id_tag_id_unique` (`post_id`,`tag_id`),
  KEY `post_tags_tag_id_foreign` (`tag_id`),
  CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES
(1,'019eb119-d152-71b7-ac66-50a477334319','019eb119-d154-70f0-9c69-7ad88d0d8329','2026-06-10 03:35:19','2026-06-10 03:35:19'),
(2,'019eb121-9a12-70d6-b238-029716a9f00f','019eb121-9a14-7016-b341-263aa3333071','2026-06-10 03:43:49','2026-06-10 03:43:49'),
(3,'019eb41f-19b9-7339-9db0-1d8af6215c2a','019eb41f-19bb-70d6-865f-cf132558e039','2026-06-10 17:39:57','2026-06-10 17:39:57'),
(4,'019eb41f-19b9-7339-9db0-1d8af6215c2a','019eb0e5-8075-73a4-982e-8b80ebf11877','2026-06-10 17:39:57','2026-06-10 17:39:57'),
(5,'019eb41f-19b9-7339-9db0-1d8af6215c2a','019eb41f-19bd-726c-9b38-dc2369fd8b44','2026-06-10 17:39:57','2026-06-10 17:39:57'),
(14,'019ebad6-18af-71fc-b5e2-8f05ea653ad7','019ebad6-18b1-72f0-99e3-db7a8232cb65','2026-06-12 00:57:33','2026-06-12 00:57:33'),
(15,'019ebad6-18af-71fc-b5e2-8f05ea653ad7','019ebad6-18b3-71f8-8879-61c3a82b3b55','2026-06-12 00:57:33','2026-06-12 00:57:33'),
(16,'019ebad6-18af-71fc-b5e2-8f05ea653ad7','019ebad6-18b5-730a-a543-7ace600bcecc','2026-06-12 00:57:33','2026-06-12 00:57:33'),
(17,'019ebad6-18af-71fc-b5e2-8f05ea653ad7','019eb0e5-8075-73a4-982e-8b80ebf11877','2026-06-12 00:57:33','2026-06-12 00:57:33'),
(18,'019ebad6-18af-71fc-b5e2-8f05ea653ad7','019eb119-d154-70f0-9c69-7ad88d0d8329','2026-06-12 00:57:49','2026-06-12 00:57:49'),
(19,'019ec3c3-1598-7282-9201-23eebaa890eb','019eb0e5-8072-7248-be72-ef9aae09e86f','2026-06-13 18:33:22','2026-06-13 18:33:22'),
(20,'019ec3c3-1598-7282-9201-23eebaa890eb','019eb0e5-8075-73a4-982e-8b80ebf11877','2026-06-13 18:33:22','2026-06-13 18:33:22'),
(21,'019ec3c3-1598-7282-9201-23eebaa890eb','019eb41f-19bd-726c-9b38-dc2369fd8b44','2026-06-13 18:33:22','2026-06-13 18:33:22');
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` char(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `user_id` char(36) NOT NULL,
  `category_id` char(36) NOT NULL,
  `accepted_answer_id` char(36) DEFAULT NULL,
  `votes_count` int(11) NOT NULL DEFAULT 0,
  `likes_count` int(11) NOT NULL DEFAULT 0,
  `comments_count` int(11) NOT NULL DEFAULT 0,
  `views_count` int(11) NOT NULL DEFAULT 0,
  `is_solved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `edited_at` timestamp NULL DEFAULT NULL,
  `edit_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  KEY `posts_category_id_foreign` (`category_id`),
  KEY `posts_accepted_answer_id_foreign` (`accepted_answer_id`),
  CONSTRAINT `posts_accepted_answer_id_foreign` FOREIGN KEY (`accepted_answer_id`) REFERENCES `comments` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES
('019eb119-d152-71b7-ac66-50a477334319','aksata jaya josjis keren','yokpo carane dadi ultra runner cah aku pengen','019eb100-0a8b-7229-a92a-b969f258d201','019eb0e5-806a-7399-a218-e9d96a59dee7',NULL,1,1,1,26,0,'2026-06-10 03:35:19','2026-06-13 18:19:11',NULL,NULL,0),
('019eb121-9a12-70d6-b238-029716a9f00f','ini kenapa nopal kok suka bantengan','masalah saya saya terganggu dengan nopal mbanteng terus','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019eb0e5-8068-7209-9a2f-b605386be509',NULL,-2,0,2,17,0,'2026-06-10 03:43:49','2026-06-10 23:14:30','2026-06-10 23:14:30',NULL,0),
('019eb41f-19b9-7339-9db0-1d8af6215c2a','ini kenapa upload profile ku gak bisa yaaa','pas aku update tuh gak bisa katanya eror 422 tapi aku bingun itu dari fe apa be','019eb100-0a8b-7229-a92a-b969f258d201','019eb0e5-8068-7209-9a2f-b605386be509',NULL,0,3,2,82,0,'2026-06-10 17:39:57','2026-06-13 18:24:43',NULL,NULL,0),
('019eb580-c284-723b-8c53-db728d058db0','saya mau bertanya kenapa nopal cepet lelah','masalahnya nopal lebih engga vit dalam menggerjakan projectnya','019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019eb0e5-8068-7209-9a2f-b605386be509',NULL,-2,2,3,83,0,'2026-06-11 00:06:15','2026-06-13 18:40:11',NULL,NULL,0),
('019ebad6-18af-71fc-b5e2-8f05ea653ad7','aksata jaya sekolah keren','kenapa mbg di sekolah saya tidak ada lagi padahal murid lapar humm lapar akuu','019eb100-0a8b-7229-a92a-b969f258d201','019ebad4-0e79-7317-b90c-f98e8e550a53','019ec3a8-81c5-718f-9054-b7bd20cf2945',0,2,4,97,1,'2026-06-12 00:57:33','2026-06-13 18:18:51',NULL,'2026-06-12 00:59:00',2),
('019ec3c3-1598-7282-9201-23eebaa890eb','inii kenaapaa vote ku eror woiii','aku mau like coment bisa tapi pas aku like post gak bisa','019ec3b9-de09-730e-9e6a-5a4ae5700530','019eb0e5-8068-7209-9a2f-b605386be509',NULL,0,1,0,18,0,'2026-06-13 18:33:22','2026-06-13 19:06:14',NULL,NULL,0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` char(36) NOT NULL,
  `reporter_id` char(36) NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `target_id` varchar(36) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('pending','resolved','rejected') NOT NULL DEFAULT 'pending',
  `resolved_by` char(36) DEFAULT NULL,
  `resolution_note` text DEFAULT NULL,
  `action_taken` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reports_target_type_target_id_index` (`target_type`,`target_id`),
  KEY `reports_reporter_id_foreign` (`reporter_id`),
  KEY `reports_resolved_by_foreign` (`resolved_by`),
  CONSTRAINT `reports_reporter_id_foreign` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reports_resolved_by_foreign` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES
('019eb559-a634-70ed-bf0a-a0b581f62f43','019eb559-931f-73ae-a2fc-42c5474ebc8f','App\\Models\\Post','019eb559-9eb3-704d-a232-ce2248042faf','Spamming content','This is a test report','resolved','019eb0e5-815d-71cc-aacb-25e93e421dde','Post kept','ignore','2026-06-10 23:23:31','2026-06-10 23:23:32'),
('019eb62d-74d8-7048-937d-9f6418d2ab7c','019eb62c-8ab0-7090-bb0e-e3ab1178817a','App\\Models\\Post','019eb62c-d4c2-7157-aedd-c2b76a983d76','Konten spam untuk testing','Detail laporan automated test.','resolved','019eb0e5-815d-71cc-aacb-25e93e421dde','Test ignore','ignore','2026-06-11 03:14:52','2026-06-11 03:14:58'),
('019eb631-a949-73d2-8476-3e63a0cf9a1f','019eb630-592b-71c6-b976-58980f7b3af8','App\\Models\\Post','019eb630-b523-72d2-9cc9-ccfaf5c37027','Konten spam untuk testing','Detail laporan automated test.','resolved','019eb0e5-815d-71cc-aacb-25e93e421dde','Test ignore','ignore','2026-06-11 03:19:28','2026-06-11 03:19:43'),
('019eb6f3-df2f-709e-921f-72d78d1ad61a','019eb100-0a8b-7229-a92a-b969f258d201','App\\Models\\Post','019eb580-c284-723b-8c53-db728d058db0','ngawor','nyocot','pending',NULL,NULL,NULL,'2026-06-11 06:51:36','2026-06-11 06:51:36'),
('019ec39d-0d4e-7329-84a1-c1ea89828f63','019eb0e5-815d-71cc-aacb-25e93e421dde','App\\Models\\Post','019eb580-c284-723b-8c53-db728d058db0','nyocot',NULL,'pending',NULL,NULL,NULL,'2026-06-13 17:51:50','2026-06-13 17:51:50'),
('019ec3a1-3b76-72da-8d66-5f95866cfce3','019eb0e5-815d-71cc-aacb-25e93e421dde','App\\Models\\Post','019ebad6-18af-71fc-b5e2-8f05ea653ad7','ngomong ta kemu',NULL,'pending',NULL,NULL,NULL,'2026-06-13 17:56:24','2026-06-13 17:56:24'),
('019ec3c9-8deb-7212-98a6-879cf8f6d131','019ec3b9-de09-730e-9e6a-5a4ae5700530','App\\Models\\Post','019eb580-c284-723b-8c53-db728d058db0','ngamokkkkkk',NULL,'pending',NULL,NULL,NULL,'2026-06-13 18:40:26','2026-06-13 18:40:26');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
('019eb0e5-8060-7068-a96e-72c0b9c4955e','admin','Administrator','Memiliki akses penuh ke sistem','2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-8063-71ba-9024-cc374dd04454','moderator','Moderator','Dapat mengelola konten dan laporan','2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-8065-7234-bf17-4b7100602a09','user','User Biasa','User standar yang dapat bertanya dan menjawab','2026-06-10 02:38:11','2026-06-10 02:38:11');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('2u8R8bExTSTfUJSLbrJMF2pGyl0LARaR8rbtFhZJ',NULL,'172.70.243.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJQN0xTT1lIWnY2ZmEzaFRqTjNvdFFmUFphNVVsSVpmcmVNWUpIVnVDIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781355952),
('6EGLSEHUOMnrgFjlAEj1dYc8EDbb6idmzTVlAa1Y',NULL,'104.23.251.55','Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1','eyJfdG9rZW4iOiI1TXVLRVY5UUFhWXVjWEIyc2g2SnJBSGFIMXp1QklkODhhRjM1b0p4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781345227),
('dCH7OriNFxITtHfKuteMFzxorUHRFqRcAZqDWkQq',NULL,'104.23.168.25','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJySWp3dW9jMXVLa0pVcjJKRlRGVUIyQjFwVmdKQlh5cHU0QklrSmVOIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781288721),
('EDbCSOFF19sytp3IT2wajoNX7rdoT9c7ZRmKzXYm',NULL,'162.158.193.57','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJ1SHhLZXFzT29NbGRJZDdPek41cjJ1bVpNYXBrRzZlaFZLOWNCUmR1IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781330190),
('exJABltoaV0qkDgQSQPIVBJ52SXuvxEKZLVgJNxe',NULL,'162.158.63.37','Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0','eyJfdG9rZW4iOiJEZzJrMlgzalFuNUkxOXRKQnozaU9iOVBNc2phUkgzUVQ2bDlxZ0J1IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781398878),
('hgJ0UlDipYZcZVD7aLGSBwVpLCewtIjMdU9HGyqD',NULL,'162.158.217.131','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36','eyJfdG9rZW4iOiJjajJtelp5THpCV2Y1TkFaZ0g1dHdXU01QZkpwTHBNQUttUXFpY3VEIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781424043),
('Hhs2ONEWOMW1JMYZKzZbixndMV6XvB42OCjhRcAi',NULL,'172.71.183.123','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJhQW95eUhYaksyamVUY2dXeGtEN1hLeEU5bFB0YVZSbGVueDJqTjRaIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781287919),
('iOxTSHxIUiM1PE6jOqRTzu2EFO6iSfRqIKtlVVOI',NULL,'172.69.176.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJqUDJvaDU2dlNVeE13UHZDclVEQmdJU0ltZWw0dmx6bU42ZVdMSFdKIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781350560),
('J31j0FCT30HDcfh2ZHm9smhdWG2TjQ5nVKzo9Eld',NULL,'172.69.150.132','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJ5QUg3ZzhNNlJRRExURGk1M2NMYTJDdHZmcEJYVHdPeHVYbzBUV3pBIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781355951),
('MrkEIZclF0qCMAwagKZHG76M300iFU0RAdJos814',NULL,'172.69.150.132','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15','eyJfdG9rZW4iOiJMRXVSM0lZVVJVTjY3ZFhCamtKOGQ1Z1BsbDd0dEs0Vk16N3VSQ0g1IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781355931),
('ONF97RMEtEV1SiUgdETct3gnKM3KEbKb50YLLd79',NULL,'104.23.162.167','Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1','eyJfdG9rZW4iOiJ4ejBFdEtjeDBBRUNVa3NxUjZHdDVQdTMweWdZN2wxT0cyTFpoOFhDIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781381684),
('P8IQNfCQbeo5oTE1P8vP4xIjEsm1xf8QLAApWzo8',NULL,'172.69.176.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJlTTRJZ0FzanNEQnFqbERRb2RUeXVGSzI5aEpZQ0tUU0pQM0JDMW1zIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781350431),
('pG1GELAdEN3NXo1lJkausDolQtg11mPs3Llb8Oea',NULL,'172.68.174.119','greedyhand/0.1','eyJfdG9rZW4iOiJXTFM2Zm1ma2JFZzlOY3JiR1g1QzR4UHRyekIxM3R1VXRUbVNiZzd6IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781344714),
('QiblKmuFKjMsDlZ8QRsWjUZYkSRIh7tN4NVWVoEK',NULL,'104.23.170.195','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36','eyJfdG9rZW4iOiI4bjBZcjNpc2hpOW45NFIzQ1lGUnRFa3JsQzlYemc0ZmNtT0w2MlhEIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkXC8/cGhwaW5mbz0xIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781288732),
('trLdNQAuailUAKzf7kHQBxAFQihFCIrQamjPqFBo',NULL,'172.71.182.68','Mozilla/5.0 (Macintosh; Intel Mac OS X 15_7_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Safari/605.1.15','eyJfdG9rZW4iOiI4cEJNWHF3RFdTVFNxMXBOMEJ5MTRCR25GcWp6em5OUXJrcTZibzZDIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==',1781287919),
('xMLtOl6bVg828GC9a59LQ7rjJUGJg45tKXgyVAgw',NULL,'104.23.160.63','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJmVDhySENiOHA4eXphTjV1YlljcjlKd0Q1TEdxaFVWSkp6TDRDcEZ0IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9hcGktdGEubmV2ZXJsYW5kLm15LmlkIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1781437632),
('XTaoagOvUrSX6QUSBWqhqGdrtmYGGMWXNE5w3Aa1',NULL,'172.71.183.123','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/146.0.3856.109','eyJfdG9rZW4iOiJ4V2JRQ0ZZb3JNVE1kV2ZRSEY3aFJpOWVFUVZqUURIR2wxMlJRck9oIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==',1781287918);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES
('019eb0e5-8072-7248-be72-ef9aae09e86f','php','php','Hypertext Preprocessor','2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-8073-739f-9104-c37e6b46e2dd','javascript','javascript','Bahasa scripting web','2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-8075-73a4-982e-8b80ebf11877','laravel','laravel','PHP Framework','2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-8076-7057-9646-bedb1f9b554f','react','react','Frontend library','2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-8078-73ec-a535-66540ab57834','mysql','mysql','Database relational','2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-8079-7122-8c81-fcf8a3d82ed4','docker','docker','Containerization','2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-807a-7261-99eb-e929ec0bd14d','rest-api','rest-api','API design','2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-807c-70b2-a695-217bceb4ca5a','eloquent','eloquent','Laravel ORM','2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb119-d154-70f0-9c69-7ad88d0d8329','aksata','aksata',NULL,'2026-06-10 03:35:19','2026-06-10 03:35:19'),
('019eb121-9a14-7016-b341-263aa3333071','gausa','gausa',NULL,'2026-06-10 03:43:49','2026-06-10 03:43:49'),
('019eb41f-19bb-70d6-865f-cf132558e039','next','next',NULL,'2026-06-10 17:39:57','2026-06-10 17:39:57'),
('019eb41f-19bd-726c-9b38-dc2369fd8b44','api','api',NULL,'2026-06-10 17:39:57','2026-06-10 17:39:57'),
('019eb559-9eb5-72a5-bf3b-1f508bfd4eff','cypress','cypress',NULL,'2026-06-10 23:23:29','2026-06-10 23:23:29'),
('019eb559-9eb7-713e-9f58-c2d48cf83c22','automation','automation',NULL,'2026-06-10 23:23:29','2026-06-10 23:23:29'),
('019eb62c-d4c4-71f3-b3d4-590925d47c2b','test','test',NULL,'2026-06-11 03:14:11','2026-06-11 03:14:11'),
('019ebad6-18b1-72f0-99e3-db7a8232cb65','mbg','mbg',NULL,'2026-06-12 00:57:33','2026-06-12 00:57:33'),
('019ebad6-18b3-71f8-8879-61c3a82b3b55','makan','makan',NULL,'2026-06-12 00:57:33','2026-06-12 00:57:33'),
('019ebad6-18b5-730a-a543-7ace600bcecc','gratis','gratis',NULL,'2026-06-12 00:57:33','2026-06-12 00:57:33');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_badges`
--

DROP TABLE IF EXISTS `user_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_badges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(36) NOT NULL,
  `badge_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_badges_user_id_badge_id_unique` (`user_id`,`badge_id`),
  KEY `user_badges_badge_id_foreign` (`badge_id`),
  CONSTRAINT `user_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_badges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_badges`
--

LOCK TABLES `user_badges` WRITE;
/*!40000 ALTER TABLE `user_badges` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` char(36) NOT NULL,
  `role_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  KEY `user_roles_role_id_foreign` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES
(1,'019eb0e5-815d-71cc-aacb-25e93e421dde','019eb0e5-8060-7068-a96e-72c0b9c4955e','2026-06-10 02:38:11','2026-06-10 02:38:11'),
(2,'019eb0e5-8242-734d-8299-c6dfad4d55b5','019eb0e5-8063-71ba-9024-cc374dd04454','2026-06-10 02:38:11','2026-06-10 02:38:11'),
(3,'019eb0e5-8329-705f-8452-ac8618c84811','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-10 02:38:11','2026-06-10 02:38:11'),
(4,'019eb100-0a8b-7229-a92a-b969f258d201','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-10 03:07:10','2026-06-10 03:07:10'),
(5,'019eb11f-16b8-708a-8526-201885b58f5c','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-10 03:41:05','2026-06-10 03:41:05'),
(6,'019eb11f-cbcc-71ae-b2d7-2ac6834b664e','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-10 03:41:51','2026-06-10 03:41:51'),
(7,'019eb173-00de-7371-91c2-c61edc541468','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-10 05:12:44','2026-06-10 05:12:44'),
(8,'019eb559-931f-73ae-a2fc-42c5474ebc8f','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-10 23:23:27','2026-06-10 23:23:27'),
(9,'019eb569-4f60-729b-b663-c7c490420eff','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-10 23:40:38','2026-06-10 23:40:38'),
(10,'019eb62c-8ab0-7090-bb0e-e3ab1178817a','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-11 03:13:52','2026-06-11 03:13:52'),
(12,'019eb630-10ae-716b-bd0f-ac898a5fe954','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-11 03:17:43','2026-06-11 03:17:43'),
(13,'019eb630-592b-71c6-b976-58980f7b3af8','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-11 03:18:02','2026-06-11 03:18:02'),
(15,'019eb6ba-346f-7346-b835-5df00b28bd13','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-11 05:48:36','2026-06-11 05:48:36'),
(16,'019eb6ba-7fa4-711d-a7ef-858a3b838a90','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-11 05:48:56','2026-06-11 05:48:56'),
(17,'019ebfa9-bcb3-7028-a760-db9abea0b5c6','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-12 23:27:12','2026-06-12 23:27:12'),
(18,'019ec3b9-de09-730e-9e6a-5a4ae5700530','019eb0e5-8065-7234-bf17-4b7100602a09','2026-06-13 18:23:18','2026-06-13 18:23:18');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `reputation` int(11) NOT NULL DEFAULT 0,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `banned_until` timestamp NULL DEFAULT NULL,
  `warning_count` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
('019eb0e5-815d-71cc-aacb-25e93e421dde','Super Admin','admin@tanyaaksata.com',NULL,'$2y$12$TYLE1dD7rU3wdT8Xgbo8OOYdTwCDizHqpXQkIOfTvvNtPyUwCO3xO','avatars/bcxbRyEivnPBWcyyMDBS6vALySiI5il6UUpfo2SZ.jpg',NULL,NULL,NULL,78,0,NULL,0,NULL,'2026-06-10 02:38:11','2026-06-13 18:24:21'),
('019eb0e5-8242-734d-8299-c6dfad4d55b5','Moderator User','moderator@tanyaaksata.com',NULL,'$2y$12$/90UjQJXP9Db35tC5v.Yju.wrTbJkH19J2VoY.MqBmwcwOqTZoCSW',NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,'2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb0e5-8329-705f-8452-ac8618c84811','Regular User','user@tanyaaksata.com',NULL,'$2y$12$oTrqdN76mCrskeL0AekB3eoKd3xOEPZgibgJqsrwuyexbjEBIO7uW',NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,'2026-06-10 02:38:11','2026-06-10 02:38:11'),
('019eb100-0a8b-7229-a92a-b969f258d201','Naufal Dzaky','tssytari@gmail.com',NULL,'$2y$12$nJkIZpp3ii8HpIDlMXwnbuk4pYjXr55g28YnGk9XHWeP7vswqcTwm','avatars/yxLHNX89wL34160ozc6DXTKCQjxDLMlrwI0BBLOe.jpg','gatau ini cuma testing api aja',NULL,NULL,38,0,NULL,0,NULL,'2026-06-10 03:07:10','2026-06-13 18:39:01'),
('019eb11f-16b8-708a-8526-201885b58f5c','gopek','gopek@gmail.com',NULL,'$2y$12$5etMesf2dePhAiQcakIWoOWxTsyai.6LBmRU/bfRSOs.5AL45AVCS',NULL,NULL,NULL,NULL,3,0,NULL,0,NULL,'2026-06-10 03:41:05','2026-06-10 04:07:43'),
('019eb11f-cbcc-71ae-b2d7-2ac6834b664e','pratama abdi rafigha','frafi561@gmail.com',NULL,'$2y$12$05A24NAFHuZOW.puwi52vu8HJp85ISX8wnv7sc.B4ok85JgVSCqk6','avatars/GEPPl7lMMWhnbxcpwqCoI3XHCQjHaiXyzerHzBih.jpg',NULL,NULL,NULL,16,0,NULL,0,NULL,'2026-06-10 03:41:51','2026-06-13 18:39:46'),
('019eb173-00de-7371-91c2-c61edc541468','reisya','reisya@Gmail.com',NULL,'$2y$12$VcvGMDh/roYySNsAR7STzuKULVsAMq1L8fx5FFIB52dqGNzlG.6sy',NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,'2026-06-10 05:12:44','2026-06-11 21:59:09'),
('019eb559-931f-73ae-a2fc-42c5474ebc8f','User 1781159005914','user1781159005914@test.com',NULL,'$2y$12$Pipchgd3X9tzqkVxl6e3ZOV6vgeitPvPuAh8nm7BHF4zC/Eq9cdOm',NULL,'I am an automated test user','Cypress Runner',NULL,15,0,NULL,1,NULL,'2026-06-10 23:23:27','2026-06-10 23:23:32'),
('019eb569-4f60-729b-b663-c7c490420eff','ryouku','ryouku@gmail.com',NULL,'$2y$12$gagF1HVt6v7uElqvMbAq1e8gtbTdU8iqrqy/xwbN1jIq8bqN/9Coy',NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,'2026-06-10 23:40:38','2026-06-10 23:40:38'),
('019eb62c-8ab0-7090-bb0e-e3ab1178817a','Tester 1781172828694','tester1781172828694@mail.com',NULL,'$2y$12$Mqc8etR3hFeXsvxVnECAy.qGJs8EOGj5z862Rag7awM0jS5Rq0/dq',NULL,'Automated tester','Cypress City',NULL,10,0,NULL,1,NULL,'2026-06-11 03:13:52','2026-06-11 03:15:03'),
('019eb630-10ae-716b-bd0f-ac898a5fe954','Tester 1781173060345','tester1781173060345@mail.com',NULL,'$2y$12$Q2mcrImS7SICZZVgjGNvuOkPXN/v5M0kOblmWMQXMi5X6ci3ybSEW',NULL,'Automated tester','Cypress City',NULL,0,0,NULL,0,NULL,'2026-06-11 03:17:43','2026-06-11 03:17:53'),
('019eb630-592b-71c6-b976-58980f7b3af8','Tester 1781173077904','tester1781173077904@mail.com',NULL,'$2y$12$mSBT82NL9KfcqnU4q6bUweBt0kWiWJ5Fvoz9G3viA2Abqhj1AF29S',NULL,'Automated tester','Cypress City',NULL,10,0,NULL,1,NULL,'2026-06-11 03:18:02','2026-06-11 03:19:48'),
('019eb6ba-346f-7346-b835-5df00b28bd13','AuthTester 1781182108763','auth1781182108763@mail.com',NULL,'$2y$12$Joc9Yzr73lar4lcZBgFZB.rvZHSrxcHpawwGOP/6c10i.xfBiqany',NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,'2026-06-11 05:48:36','2026-06-11 05:48:36'),
('019eb6ba-7fa4-711d-a7ef-858a3b838a90','PostTester 1781182133079','post1781182133079@mail.com',NULL,'$2y$12$E7f1/LDt9aT6Rmw1BQW7SeSaTVQw.3MvxEgy1RGv55k1UHvc5xFWK',NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,'2026-06-11 05:48:56','2026-06-11 05:48:56'),
('019ebfa9-bcb3-7028-a760-db9abea0b5c6','adib nugroho','adib@gmail.com',NULL,'$2y$12$V4DO90GApYzTueEARCDMw.stPI407Y/LjerkUBpPG.MqquKKaPQhe','avatars/Q3MTcgzMFjrvMBJf2cCTuf7sn0c4HKkSZmvX7JuF.jpg',NULL,NULL,NULL,5,0,NULL,0,NULL,'2026-06-12 23:27:12','2026-06-13 17:29:25'),
('019ec3b9-de09-730e-9e6a-5a4ae5700530','melvin','melvin@gmail.com',NULL,'$2y$12$LMckRGGzBM9MCXm6T7QhxOByJqRPrA20w7uAf..6cESTIZYiaqii2','avatars/55fZ0sQ5cllqi7JqEoWcaVpoYYUrWhqyE7dovOUm.jpg','aku anak aksata yang tinggal di glendang pakem',NULL,NULL,13,0,NULL,0,NULL,'2026-06-13 18:23:18','2026-06-13 18:40:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `votes` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `target_id` varchar(36) NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `votes_user_id_target_type_target_id_unique` (`user_id`,`target_type`,`target_id`),
  KEY `votes_target_type_target_id_index` (`target_type`,`target_id`),
  CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES
('019eb137-7bdc-70eb-ac92-c5c56912f250','019eb11f-16b8-708a-8526-201885b58f5c','App\\Models\\Post','019eb121-9a12-70d6-b238-029716a9f00f',-1,'2026-06-10 04:07:43','2026-06-10 04:07:43'),
('019eb54f-a7eb-7218-8b03-74e1d7978d25','019eb0e5-815d-71cc-aacb-25e93e421dde','App\\Models\\Post','019eb121-9a12-70d6-b238-029716a9f00f',-1,'2026-06-10 23:12:36','2026-06-10 23:12:36'),
('019eb559-a29b-7254-b9d7-b6d25fab9e61','019eb0e5-815d-71cc-aacb-25e93e421dde','App\\Models\\Post','019eb559-9eb3-704d-a232-ce2248042faf',1,'2026-06-10 23:23:30','2026-06-10 23:23:30'),
('019eb62d-159f-7354-9b65-f028e058fb23','019eb0e5-815d-71cc-aacb-25e93e421dde','App\\Models\\Post','019eb62c-d4c2-7157-aedd-c2b76a983d76',-1,'2026-06-11 03:14:28','2026-06-11 03:14:28'),
('019eb62d-214c-70a8-aefb-66d466bcf5de','019eb62c-8ab0-7090-bb0e-e3ab1178817a','App\\Models\\Comment','019eb62c-f652-71ef-85de-5a993d8ba3a0',1,'2026-06-11 03:14:31','2026-06-11 03:14:31'),
('019eb631-3c60-7347-8d99-9e0e0ad03a81','019eb0e5-815d-71cc-aacb-25e93e421dde','App\\Models\\Post','019eb630-b523-72d2-9cc9-ccfaf5c37027',-1,'2026-06-11 03:19:00','2026-06-11 03:19:00'),
('019eb631-45ff-7300-b3f9-a2efcd318310','019eb630-592b-71c6-b976-58980f7b3af8','App\\Models\\Comment','019eb630-e9bd-710c-9a2d-37d0a2c81ef6',1,'2026-06-11 03:19:03','2026-06-11 03:19:03'),
('019eba32-d357-726a-908c-4c3e52157ff3','019eb173-00de-7371-91c2-c61edc541468','App\\Models\\Post','019eb119-d152-71b7-ac66-50a477334319',1,'2026-06-11 21:59:13','2026-06-11 21:59:13'),
('019ec388-8854-7339-b502-b4420b913bf3','019eb100-0a8b-7229-a92a-b969f258d201','App\\Models\\Comment','019ebfe1-f38a-71e0-8e8a-736413d6f976',1,'2026-06-13 17:29:25','2026-06-13 17:29:25'),
('019ec3ba-d28a-70f6-bdbb-079dc9772345','019ec3b9-de09-730e-9e6a-5a4ae5700530','App\\Models\\Comment','019ec3b7-4015-73e8-b7ee-491639dbf49a',1,'2026-06-13 18:24:21','2026-06-13 18:24:21'),
('019ec3c8-4136-7327-ad05-4e69f72d55f6','019eb100-0a8b-7229-a92a-b969f258d201','App\\Models\\Post','019eb580-c284-723b-8c53-db728d058db0',-1,'2026-06-13 18:39:01','2026-06-13 18:39:01'),
('019ec3c8-f005-71c1-b28c-5b12f5c8984a','019ec3b9-de09-730e-9e6a-5a4ae5700530','App\\Models\\Post','019eb580-c284-723b-8c53-db728d058db0',-1,'2026-06-13 18:39:46','2026-06-13 18:39:46');
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 18:55:57
