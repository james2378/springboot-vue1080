-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot574f8
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot574f8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot574f8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot574f8/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lajifenlei`
--

DROP TABLE IF EXISTS `lajifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lajifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lajimingcheng` varchar(200) DEFAULT NULL COMMENT '垃圾名称',
  `lajileixing` varchar(200) DEFAULT NULL COMMENT '垃圾类型',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='垃圾分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lajifenlei`
--

LOCK TABLES `lajifenlei` WRITE;
/*!40000 ALTER TABLE `lajifenlei` DISABLE KEYS */;
INSERT INTO `lajifenlei` VALUES (31,'2021-02-26 14:27:49','垃圾名称1','垃圾类型1','规格1',1,'http://localhost:8080/springboot574f8/upload/lajifenlei_tupian1.jpg','详情1'),(32,'2021-02-26 14:27:49','垃圾名称2','垃圾类型2','规格2',2,'http://localhost:8080/springboot574f8/upload/lajifenlei_tupian2.jpg','详情2'),(33,'2021-02-26 14:27:49','垃圾名称3','垃圾类型3','规格3',3,'http://localhost:8080/springboot574f8/upload/lajifenlei_tupian3.jpg','详情3'),(34,'2021-02-26 14:27:49','垃圾名称4','垃圾类型4','规格4',4,'http://localhost:8080/springboot574f8/upload/lajifenlei_tupian4.jpg','详情4'),(35,'2021-02-26 14:27:49','垃圾名称5','垃圾类型5','规格5',5,'http://localhost:8080/springboot574f8/upload/lajifenlei_tupian5.jpg','详情5'),(36,'2021-02-26 14:27:49','垃圾名称6','垃圾类型6','规格6',6,'http://localhost:8080/springboot574f8/upload/lajifenlei_tupian6.jpg','详情6');
/*!40000 ALTER TABLE `lajifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lajifenleiguanliyuan`
--

DROP TABLE IF EXISTS `lajifenleiguanliyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lajifenleiguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guanliyuanzhanghao` varchar(200) NOT NULL COMMENT '管理员账号',
  `guanliyuanxingming` varchar(200) NOT NULL COMMENT '管理员姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `guanliyuanzhanghao` (`guanliyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='垃圾分类管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lajifenleiguanliyuan`
--

LOCK TABLES `lajifenleiguanliyuan` WRITE;
/*!40000 ALTER TABLE `lajifenleiguanliyuan` DISABLE KEYS */;
INSERT INTO `lajifenleiguanliyuan` VALUES (21,'2021-02-26 14:27:49','垃圾分类管理员1','管理员姓名1','123456','男',1,'13823888881','773890001@qq.com'),(22,'2021-02-26 14:27:49','垃圾分类管理员2','管理员姓名2','123456','男',2,'13823888882','773890002@qq.com'),(23,'2021-02-26 14:27:49','垃圾分类管理员3','管理员姓名3','123456','男',3,'13823888883','773890003@qq.com'),(24,'2021-02-26 14:27:49','垃圾分类管理员4','管理员姓名4','123456','男',4,'13823888884','773890004@qq.com'),(25,'2021-02-26 14:27:49','垃圾分类管理员5','管理员姓名5','123456','男',5,'13823888885','773890005@qq.com'),(26,'2021-02-26 14:27:49','垃圾分类管理员6','管理员姓名6','123456','男',6,'13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `lajifenleiguanliyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lajileixing`
--

DROP TABLE IF EXISTS `lajileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lajileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='垃圾类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lajileixing`
--

LOCK TABLES `lajileixing` WRITE;
/*!40000 ALTER TABLE `lajileixing` DISABLE KEYS */;
INSERT INTO `lajileixing` VALUES (41,'2021-02-26 14:27:49','可回收垃圾'),(42,'2021-02-26 14:27:49','有害垃圾'),(43,'2021-02-26 14:27:49','厨余垃圾'),(44,'2021-02-26 14:27:49','可回收垃圾'),(45,'2021-02-26 14:27:49','可回收垃圾'),(46,'2021-02-26 14:27:49','可回收垃圾');
/*!40000 ALTER TABLE `lajileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lajitupu`
--

DROP TABLE IF EXISTS `lajitupu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lajitupu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lajimingcheng` varchar(200) DEFAULT NULL COMMENT '垃圾名称',
  `lajileixing` varchar(200) DEFAULT NULL COMMENT '垃圾类型',
  `tupu` varchar(200) DEFAULT NULL COMMENT '图谱',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='垃圾图谱';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lajitupu`
--

LOCK TABLES `lajitupu` WRITE;
/*!40000 ALTER TABLE `lajitupu` DISABLE KEYS */;
INSERT INTO `lajitupu` VALUES (51,'2021-02-26 14:27:49','订个蛋糕的','可回收垃圾','http://localhost:8080/springboot574f8/upload/lajitupu_tupu1.jpg','<p>详情1</p>'),(52,'2021-02-26 14:27:49','垃圾名称2','厨余垃圾','http://localhost:8080/springboot574f8/upload/lajitupu_tupu2.jpg','<p>详情2</p>'),(53,'2021-02-26 14:27:49','垃圾名称3','垃圾类型3','http://localhost:8080/springboot574f8/upload/lajitupu_tupu3.jpg','详情3'),(54,'2021-02-26 14:27:49','风格的风格','有害垃圾','http://localhost:8080/springboot574f8/upload/lajitupu_tupu4.jpg','<p>详情4</p>'),(55,'2021-02-26 14:27:49','垃圾名称5','垃圾类型5','http://localhost:8080/springboot574f8/upload/lajitupu_tupu5.jpg','详情5'),(56,'2021-02-26 14:27:49','垃圾名称6','垃圾类型6','http://localhost:8080/springboot574f8/upload/lajitupu_tupu6.jpg','详情6');
/*!40000 ALTER TABLE `lajitupu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1614349723479,'222','yonghu','用户','rh7xf08loyijgkbutknr3jkpjba2swvc','2021-02-26 14:28:48','2021-02-26 07:30:22'),(2,1,'abo','users','管理员','y9ycggekncobolg0cithoy1qko1gsv3x','2021-02-26 14:29:22','2021-02-26 07:29:22');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-26 14:27:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614349723480 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-26 14:27:49','用户1','123456','姓名1','13823888881','773890001@qq.com','地址1'),(12,'2021-02-26 14:27:49','用户2','123456','姓名2','13823888882','773890002@qq.com','地址2'),(13,'2021-02-26 14:27:49','用户3','123456','姓名3','13823888883','773890003@qq.com','地址3'),(14,'2021-02-26 14:27:49','用户4','123456','姓名4','13823888884','773890004@qq.com','地址4'),(15,'2021-02-26 14:27:49','用户5','123456','姓名5','13823888885','773890005@qq.com','地址5'),(16,'2021-02-26 14:27:49','用户6','123456','姓名6','13823888886','773890006@qq.com','地址6'),(1614349723479,'2021-02-26 14:28:43','222','222','222',NULL,NULL,NULL);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-27 16:41:20
