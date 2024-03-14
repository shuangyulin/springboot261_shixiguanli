-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootk78s8
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
-- Current Database: `springbootk78s8`
--

/*!40000 DROP DATABASE IF EXISTS `springbootk78s8`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootk78s8` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootk78s8`;

--
-- Table structure for table `chengjipingding`
--

DROP TABLE IF EXISTS `chengjipingding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengjipingding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shixigangwei` varchar(200) DEFAULT NULL COMMENT '实习岗位',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `shixichengji` int(11) NOT NULL COMMENT '实习成绩',
  `richangshenghuo` varchar(200) DEFAULT NULL COMMENT '日常生活',
  `shixiguochenggenzong` longtext COMMENT '实习过程跟踪',
  `tianjiariqi` date DEFAULT NULL COMMENT '添加日期',
  `danweimingcheng` varchar(200) NOT NULL COMMENT '单位名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='成绩评定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengjipingding`
--

LOCK TABLES `chengjipingding` WRITE;
/*!40000 ALTER TABLE `chengjipingding` DISABLE KEYS */;
INSERT INTO `chengjipingding` VALUES (151,'2022-05-09 08:05:29','实习岗位1','学号1','姓名1','教师工号1',1,'日常生活1','实习过程跟踪1','2022-05-09','单位名称1','联系人1','联系电话1',1,1,'是',''),(152,'2022-05-09 08:05:29','实习岗位2','学号2','姓名2','教师工号2',2,'日常生活2','实习过程跟踪2','2022-05-09','单位名称2','联系人2','联系电话2',2,2,'是',''),(153,'2022-05-09 08:05:29','实习岗位3','学号3','姓名3','教师工号3',3,'日常生活3','实习过程跟踪3','2022-05-09','单位名称3','联系人3','联系电话3',3,3,'是',''),(154,'2022-05-09 08:05:29','实习岗位4','学号4','姓名4','教师工号4',4,'日常生活4','实习过程跟踪4','2022-05-09','单位名称4','联系人4','联系电话4',4,4,'是',''),(155,'2022-05-09 08:05:29','实习岗位5','学号5','姓名5','教师工号5',5,'日常生活5','实习过程跟踪5','2022-05-09','单位名称5','联系人5','联系电话5',5,5,'是',''),(156,'2022-05-09 08:05:29','实习岗位6','学号6','姓名6','教师工号6',6,'日常生活6','实习过程跟踪6','2022-05-09','单位名称6','联系人6','联系电话6',6,6,'是','');
/*!40000 ALTER TABLE `chengjipingding` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danweifankui`
--

DROP TABLE IF EXISTS `danweifankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `danweifankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fankuimingcheng` varchar(200) NOT NULL COMMENT '反馈名称',
  `danweimingcheng` varchar(200) NOT NULL COMMENT '单位名称',
  `fankuineirong` longtext COMMENT '反馈内容',
  `fankuiriqi` date DEFAULT NULL COMMENT '反馈日期',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='单位反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danweifankui`
--

LOCK TABLES `danweifankui` WRITE;
/*!40000 ALTER TABLE `danweifankui` DISABLE KEYS */;
INSERT INTO `danweifankui` VALUES (121,'2022-05-09 08:05:29','反馈名称1','单位名称1','反馈内容1','2022-05-09','学号1','姓名1','教师工号1','是',''),(122,'2022-05-09 08:05:29','反馈名称2','单位名称2','反馈内容2','2022-05-09','学号2','姓名2','教师工号2','是',''),(123,'2022-05-09 08:05:29','反馈名称3','单位名称3','反馈内容3','2022-05-09','学号3','姓名3','教师工号3','是',''),(124,'2022-05-09 08:05:29','反馈名称4','单位名称4','反馈内容4','2022-05-09','学号4','姓名4','教师工号4','是',''),(125,'2022-05-09 08:05:29','反馈名称5','单位名称5','反馈内容5','2022-05-09','学号5','姓名5','教师工号5','是',''),(126,'2022-05-09 08:05:29','反馈名称6','单位名称6','反馈内容6','2022-05-09','学号6','姓名6','教师工号6','是','');
/*!40000 ALTER TABLE `danweifankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yuanxizhanghao` varchar(200) NOT NULL COMMENT '院系账号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (41,'2022-05-09 08:05:29','教师工号1','123456','教师姓名1','男','upload/jiaoshi_zhaopian1.jpg','院系1','专业1','职称1','13823888881','院系账号1'),(42,'2022-05-09 08:05:29','教师工号2','123456','教师姓名2','男','upload/jiaoshi_zhaopian2.jpg','院系2','专业2','职称2','13823888882','院系账号2'),(43,'2022-05-09 08:05:29','教师工号3','123456','教师姓名3','男','upload/jiaoshi_zhaopian3.jpg','院系3','专业3','职称3','13823888883','院系账号3'),(44,'2022-05-09 08:05:29','教师工号4','123456','教师姓名4','男','upload/jiaoshi_zhaopian4.jpg','院系4','专业4','职称4','13823888884','院系账号4'),(45,'2022-05-09 08:05:29','教师工号5','123456','教师姓名5','男','upload/jiaoshi_zhaopian5.jpg','院系5','专业5','职称5','13823888885','院系账号5'),(46,'2022-05-09 08:05:29','教师工号6','123456','教师姓名6','男','upload/jiaoshi_zhaopian6.jpg','院系6','专业6','职称6','13823888886','院系账号6');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixianpai`
--

DROP TABLE IF EXISTS `shixianpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixianpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shixigangwei` varchar(200) NOT NULL COMMENT '实习岗位',
  `shixineirong` varchar(200) DEFAULT NULL COMMENT '实习内容',
  `gangweixingzhi` varchar(200) DEFAULT NULL COMMENT '岗位性质',
  `shixididian` varchar(200) DEFAULT NULL COMMENT '实习地点',
  `danweimingcheng` varchar(200) NOT NULL COMMENT '单位名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `richenganpai` varchar(200) DEFAULT NULL COMMENT '日程安排',
  `shixihetong` longtext COMMENT '实习合同',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `anpairiqi` date DEFAULT NULL COMMENT '安排日期',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `yuanxizhanghao` varchar(200) DEFAULT NULL COMMENT '院系账号',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='实习安排';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixianpai`
--

LOCK TABLES `shixianpai` WRITE;
/*!40000 ALTER TABLE `shixianpai` DISABLE KEYS */;
INSERT INTO `shixianpai` VALUES (111,'2022-05-09 08:05:29','实习岗位1','实习内容1','岗位性质1','实习地点1','单位名称1','联系人1','联系电话1','日程安排1','实习合同1','学号1','姓名1','13823888881','2022-05-09','教师工号1','院系账号1',1,1,'是',''),(112,'2022-05-09 08:05:29','实习岗位2','实习内容2','岗位性质2','实习地点2','单位名称2','联系人2','联系电话2','日程安排2','实习合同2','学号2','姓名2','13823888882','2022-05-09','教师工号2','院系账号2',2,2,'是',''),(113,'2022-05-09 08:05:29','实习岗位3','实习内容3','岗位性质3','实习地点3','单位名称3','联系人3','联系电话3','日程安排3','实习合同3','学号3','姓名3','13823888883','2022-05-09','教师工号3','院系账号3',3,3,'是',''),(114,'2022-05-09 08:05:29','实习岗位4','实习内容4','岗位性质4','实习地点4','单位名称4','联系人4','联系电话4','日程安排4','实习合同4','学号4','姓名4','13823888884','2022-05-09','教师工号4','院系账号4',4,4,'是',''),(115,'2022-05-09 08:05:29','实习岗位5','实习内容5','岗位性质5','实习地点5','单位名称5','联系人5','联系电话5','日程安排5','实习合同5','学号5','姓名5','13823888885','2022-05-09','教师工号5','院系账号5',5,5,'是',''),(116,'2022-05-09 08:05:29','实习岗位6','实习内容6','岗位性质6','实习地点6','单位名称6','联系人6','联系电话6','日程安排6','实习合同6','学号6','姓名6','13823888886','2022-05-09','教师工号6','院系账号6',6,6,'是','');
/*!40000 ALTER TABLE `shixianpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixibaozhang`
--

DROP TABLE IF EXISTS `shixibaozhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixibaozhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baozhangmingcheng` varchar(200) DEFAULT NULL COMMENT '保障名称',
  `shixijingfei` int(11) DEFAULT NULL COMMENT '实习经费',
  `chuxingxinxi` varchar(200) DEFAULT NULL COMMENT '出行信息',
  `zhusuxinxi` varchar(200) DEFAULT NULL COMMENT '住宿信息',
  `shenqingneirong` longtext COMMENT '申请内容',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `yuanxizhanghao` varchar(200) NOT NULL COMMENT '院系账号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='实习保障';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixibaozhang`
--

LOCK TABLES `shixibaozhang` WRITE;
/*!40000 ALTER TABLE `shixibaozhang` DISABLE KEYS */;
INSERT INTO `shixibaozhang` VALUES (141,'2022-05-09 08:05:29','保障名称1',1,'出行信息1','住宿信息1','申请内容1','2022-05-09','教师工号1','教师姓名1','院系账号1','是',''),(142,'2022-05-09 08:05:29','保障名称2',2,'出行信息2','住宿信息2','申请内容2','2022-05-09','教师工号2','教师姓名2','院系账号2','是',''),(143,'2022-05-09 08:05:29','保障名称3',3,'出行信息3','住宿信息3','申请内容3','2022-05-09','教师工号3','教师姓名3','院系账号3','是',''),(144,'2022-05-09 08:05:29','保障名称4',4,'出行信息4','住宿信息4','申请内容4','2022-05-09','教师工号4','教师姓名4','院系账号4','是',''),(145,'2022-05-09 08:05:29','保障名称5',5,'出行信息5','住宿信息5','申请内容5','2022-05-09','教师工号5','教师姓名5','院系账号5','是',''),(146,'2022-05-09 08:05:29','保障名称6',6,'出行信息6','住宿信息6','申请内容6','2022-05-09','教师工号6','教师姓名6','院系账号6','是','');
/*!40000 ALTER TABLE `shixibaozhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixidanwei`
--

DROP TABLE IF EXISTS `shixidanwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixidanwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danweimingcheng` varchar(200) NOT NULL COMMENT '单位名称',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `danweitupian` varchar(200) DEFAULT NULL COMMENT '单位图片',
  `danweixingzhi` varchar(200) DEFAULT NULL COMMENT '单位性质',
  `danweidizhi` varchar(200) DEFAULT NULL COMMENT '单位地址',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `danweimingcheng` (`danweimingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='实习单位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixidanwei`
--

LOCK TABLES `shixidanwei` WRITE;
/*!40000 ALTER TABLE `shixidanwei` DISABLE KEYS */;
INSERT INTO `shixidanwei` VALUES (51,'2022-05-09 08:05:29','单位名称1','123456','upload/shixidanwei_danweitupian1.jpg','私企','单位地址1','联系人1','13823888881','经营范围1','是',''),(52,'2022-05-09 08:05:29','单位名称2','123456','upload/shixidanwei_danweitupian2.jpg','私企','单位地址2','联系人2','13823888882','经营范围2','是',''),(53,'2022-05-09 08:05:29','单位名称3','123456','upload/shixidanwei_danweitupian3.jpg','私企','单位地址3','联系人3','13823888883','经营范围3','是',''),(54,'2022-05-09 08:05:29','单位名称4','123456','upload/shixidanwei_danweitupian4.jpg','私企','单位地址4','联系人4','13823888884','经营范围4','是',''),(55,'2022-05-09 08:05:29','单位名称5','123456','upload/shixidanwei_danweitupian5.jpg','私企','单位地址5','联系人5','13823888885','经营范围5','是',''),(56,'2022-05-09 08:05:29','单位名称6','123456','upload/shixidanwei_danweitupian6.jpg','私企','单位地址6','联系人6','13823888886','经营范围6','是','');
/*!40000 ALTER TABLE `shixidanwei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixigonggao`
--

DROP TABLE IF EXISTS `shixigonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) NOT NULL COMMENT '公告类型',
  `gonggaotupian` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='实习公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixigonggao`
--

LOCK TABLES `shixigonggao` WRITE;
/*!40000 ALTER TABLE `shixigonggao` DISABLE KEYS */;
INSERT INTO `shixigonggao` VALUES (81,'2022-05-09 08:05:29','公告标题1','资讯','upload/shixigonggao_gonggaotupian1.jpg','公告内容1','2022-05-09','教师工号1'),(82,'2022-05-09 08:05:29','公告标题2','资讯','upload/shixigonggao_gonggaotupian2.jpg','公告内容2','2022-05-09','教师工号2'),(83,'2022-05-09 08:05:29','公告标题3','资讯','upload/shixigonggao_gonggaotupian3.jpg','公告内容3','2022-05-09','教师工号3'),(84,'2022-05-09 08:05:29','公告标题4','资讯','upload/shixigonggao_gonggaotupian4.jpg','公告内容4','2022-05-09','教师工号4'),(85,'2022-05-09 08:05:29','公告标题5','资讯','upload/shixigonggao_gonggaotupian5.jpg','公告内容5','2022-05-09','教师工号5'),(86,'2022-05-09 08:05:29','公告标题6','资讯','upload/shixigonggao_gonggaotupian6.jpg','公告内容6','2022-05-09','教师工号6');
/*!40000 ALTER TABLE `shixigonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixiliucheng`
--

DROP TABLE IF EXISTS `shixiliucheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixiliucheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `liuchengmingcheng` varchar(200) NOT NULL COMMENT '流程名称',
  `richenganpai` longtext COMMENT '日程安排',
  `zhidaoziliao` varchar(200) DEFAULT NULL COMMENT '指导资料',
  `guochenggenzong` longtext COMMENT '过程跟踪',
  `liuchengneirong` longtext COMMENT '流程内容',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='实习流程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixiliucheng`
--

LOCK TABLES `shixiliucheng` WRITE;
/*!40000 ALTER TABLE `shixiliucheng` DISABLE KEYS */;
INSERT INTO `shixiliucheng` VALUES (71,'2022-05-09 08:05:29','流程名称1','日程安排1','','过程跟踪1','流程内容1','教师工号1'),(72,'2022-05-09 08:05:29','流程名称2','日程安排2','','过程跟踪2','流程内容2','教师工号2'),(73,'2022-05-09 08:05:29','流程名称3','日程安排3','','过程跟踪3','流程内容3','教师工号3'),(74,'2022-05-09 08:05:29','流程名称4','日程安排4','','过程跟踪4','流程内容4','教师工号4'),(75,'2022-05-09 08:05:29','流程名称5','日程安排5','','过程跟踪5','流程内容5','教师工号5'),(76,'2022-05-09 08:05:29','流程名称6','日程安排6','','过程跟踪6','流程内容6','教师工号6');
/*!40000 ALTER TABLE `shixiliucheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixineirong`
--

DROP TABLE IF EXISTS `shixineirong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixineirong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shixigangwei` varchar(200) NOT NULL COMMENT '实习岗位',
  `gangweitupian` varchar(200) DEFAULT NULL COMMENT '岗位图片',
  `shixineirong` varchar(200) DEFAULT NULL COMMENT '实习内容',
  `gangweixingzhi` varchar(200) DEFAULT NULL COMMENT '岗位性质',
  `gangweixinchou` int(11) DEFAULT NULL COMMENT '岗位薪酬',
  `shixididian` varchar(200) DEFAULT NULL COMMENT '实习地点',
  `danweimingcheng` varchar(200) NOT NULL COMMENT '单位名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `neirongxiangqing` longtext COMMENT '内容详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='实习内容';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixineirong`
--

LOCK TABLES `shixineirong` WRITE;
/*!40000 ALTER TABLE `shixineirong` DISABLE KEYS */;
INSERT INTO `shixineirong` VALUES (91,'2022-05-09 08:05:29','实习岗位1','upload/shixineirong_gangweitupian1.jpg','实习内容1','岗位性质1',1,'实习地点1','单位名称1','联系人1','联系电话1','内容详情1'),(92,'2022-05-09 08:05:29','实习岗位2','upload/shixineirong_gangweitupian2.jpg','实习内容2','岗位性质2',2,'实习地点2','单位名称2','联系人2','联系电话2','内容详情2'),(93,'2022-05-09 08:05:29','实习岗位3','upload/shixineirong_gangweitupian3.jpg','实习内容3','岗位性质3',3,'实习地点3','单位名称3','联系人3','联系电话3','内容详情3'),(94,'2022-05-09 08:05:29','实习岗位4','upload/shixineirong_gangweitupian4.jpg','实习内容4','岗位性质4',4,'实习地点4','单位名称4','联系人4','联系电话4','内容详情4'),(95,'2022-05-09 08:05:29','实习岗位5','upload/shixineirong_gangweitupian5.jpg','实习内容5','岗位性质5',5,'实习地点5','单位名称5','联系人5','联系电话5','内容详情5'),(96,'2022-05-09 08:05:29','实习岗位6','upload/shixineirong_gangweitupian6.jpg','实习内容6','岗位性质6',6,'实习地点6','单位名称6','联系人6','联系电话6','内容详情6');
/*!40000 ALTER TABLE `shixineirong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixishenqing`
--

DROP TABLE IF EXISTS `shixishenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbiaoti` varchar(200) NOT NULL COMMENT '申请标题',
  `shixishenqing` varchar(200) NOT NULL COMMENT '实习申请',
  `tijiaoneirong` longtext COMMENT '提交内容',
  `tijiaoriqi` date DEFAULT NULL COMMENT '提交日期',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `yuanxizhanghao` varchar(200) DEFAULT NULL COMMENT '院系账号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='实习申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixishenqing`
--

LOCK TABLES `shixishenqing` WRITE;
/*!40000 ALTER TABLE `shixishenqing` DISABLE KEYS */;
INSERT INTO `shixishenqing` VALUES (101,'2022-05-09 08:05:29','申请标题1','申请','提交内容1','2022-05-09','学号1','姓名1','院系1','专业1','教师工号1','院系账号1','是',''),(102,'2022-05-09 08:05:29','申请标题2','申请','提交内容2','2022-05-09','学号2','姓名2','院系2','专业2','教师工号2','院系账号2','是',''),(103,'2022-05-09 08:05:29','申请标题3','申请','提交内容3','2022-05-09','学号3','姓名3','院系3','专业3','教师工号3','院系账号3','是',''),(104,'2022-05-09 08:05:29','申请标题4','申请','提交内容4','2022-05-09','学号4','姓名4','院系4','专业4','教师工号4','院系账号4','是',''),(105,'2022-05-09 08:05:29','申请标题5','申请','提交内容5','2022-05-09','学号5','姓名5','院系5','专业5','教师工号5','院系账号5','是',''),(106,'2022-05-09 08:05:29','申请标题6','申请','提交内容6','2022-05-09','学号6','姓名6','院系6','专业6','教师工号6','院系账号6','是','');
/*!40000 ALTER TABLE `shixishenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixizonghechengji`
--

DROP TABLE IF EXISTS `shixizonghechengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixizonghechengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shixibiaoxianchengji` int(11) NOT NULL COMMENT '实习表现成绩',
  `shixibaogaochengji` int(11) DEFAULT NULL COMMENT '实习报告成绩',
  `danweipingdingchengji` int(11) DEFAULT NULL COMMENT '单位评定成绩',
  `chengjimiaoshu` varchar(200) DEFAULT NULL COMMENT '成绩描述',
  `tianjiariqi` date DEFAULT NULL COMMENT '添加日期',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `yuanxizhanghao` varchar(200) DEFAULT NULL COMMENT '院系账号',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='实习综合成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixizonghechengji`
--

LOCK TABLES `shixizonghechengji` WRITE;
/*!40000 ALTER TABLE `shixizonghechengji` DISABLE KEYS */;
INSERT INTO `shixizonghechengji` VALUES (161,'2022-05-09 08:05:29','学号1','姓名1',1,1,1,'成绩描述1','2022-05-09','教师工号1','院系账号1',1,1,'是',''),(162,'2022-05-09 08:05:29','学号2','姓名2',2,2,2,'成绩描述2','2022-05-09','教师工号2','院系账号2',2,2,'是',''),(163,'2022-05-09 08:05:29','学号3','姓名3',3,3,3,'成绩描述3','2022-05-09','教师工号3','院系账号3',3,3,'是',''),(164,'2022-05-09 08:05:29','学号4','姓名4',4,4,4,'成绩描述4','2022-05-09','教师工号4','院系账号4',4,4,'是',''),(165,'2022-05-09 08:05:29','学号5','姓名5',5,5,5,'成绩描述5','2022-05-09','教师工号5','院系账号5',5,5,'是',''),(166,'2022-05-09 08:05:29','学号6','姓名6',6,6,6,'成绩描述6','2022-05-09','教师工号6','院系账号6',6,6,'是','');
/*!40000 ALTER TABLE `shixizonghechengji` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-05-09 08:05:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `yuanxizhanghao` varchar(200) DEFAULT NULL COMMENT '院系账号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (61,'2022-05-09 08:05:29','学号1','123456','姓名1','男','upload/xuesheng_touxiang1.jpg','13823888881','院系1','专业1','班级1','教师工号1','院系账号1'),(62,'2022-05-09 08:05:29','学号2','123456','姓名2','男','upload/xuesheng_touxiang2.jpg','13823888882','院系2','专业2','班级2','教师工号2','院系账号2'),(63,'2022-05-09 08:05:29','学号3','123456','姓名3','男','upload/xuesheng_touxiang3.jpg','13823888883','院系3','专业3','班级3','教师工号3','院系账号3'),(64,'2022-05-09 08:05:29','学号4','123456','姓名4','男','upload/xuesheng_touxiang4.jpg','13823888884','院系4','专业4','班级4','教师工号4','院系账号4'),(65,'2022-05-09 08:05:29','学号5','123456','姓名5','男','upload/xuesheng_touxiang5.jpg','13823888885','院系5','专业5','班级5','教师工号5','院系账号5'),(66,'2022-05-09 08:05:29','学号6','123456','姓名6','男','upload/xuesheng_touxiang6.jpg','13823888886','院系6','专业6','班级6','教师工号6','院系账号6');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengfankui`
--

DROP TABLE IF EXISTS `xueshengfankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengfankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fankuimingcheng` varchar(200) NOT NULL COMMENT '反馈名称',
  `danweimingcheng` varchar(200) NOT NULL COMMENT '单位名称',
  `shixirizhi` longtext COMMENT '实习日志',
  `shixibaogao` longtext COMMENT '实习报告',
  `neirongfankui` longtext COMMENT '内容反馈',
  `fankuiriqi` date DEFAULT NULL COMMENT '反馈日期',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='学生反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengfankui`
--

LOCK TABLES `xueshengfankui` WRITE;
/*!40000 ALTER TABLE `xueshengfankui` DISABLE KEYS */;
INSERT INTO `xueshengfankui` VALUES (131,'2022-05-09 08:05:29','反馈名称1','单位名称1','实习日志1','实习报告1','内容反馈1','2022-05-09','学号1','姓名1','教师工号1','是',''),(132,'2022-05-09 08:05:29','反馈名称2','单位名称2','实习日志2','实习报告2','内容反馈2','2022-05-09','学号2','姓名2','教师工号2','是',''),(133,'2022-05-09 08:05:29','反馈名称3','单位名称3','实习日志3','实习报告3','内容反馈3','2022-05-09','学号3','姓名3','教师工号3','是',''),(134,'2022-05-09 08:05:29','反馈名称4','单位名称4','实习日志4','实习报告4','内容反馈4','2022-05-09','学号4','姓名4','教师工号4','是',''),(135,'2022-05-09 08:05:29','反馈名称5','单位名称5','实习日志5','实习报告5','内容反馈5','2022-05-09','学号5','姓名5','教师工号5','是',''),(136,'2022-05-09 08:05:29','反馈名称6','单位名称6','实习日志6','实习报告6','内容反馈6','2022-05-09','学号6','姓名6','教师工号6','是','');
/*!40000 ALTER TABLE `xueshengfankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuanxi`
--

DROP TABLE IF EXISTS `yuanxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuanxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanxi` varchar(200) NOT NULL COMMENT '院系',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuanxi` (`yuanxi`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='院系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuanxi`
--

LOCK TABLES `yuanxi` WRITE;
/*!40000 ALTER TABLE `yuanxi` DISABLE KEYS */;
INSERT INTO `yuanxi` VALUES (11,'2022-05-09 08:05:29','院系1'),(12,'2022-05-09 08:05:29','院系2'),(13,'2022-05-09 08:05:29','院系3'),(14,'2022-05-09 08:05:29','院系4'),(15,'2022-05-09 08:05:29','院系5'),(16,'2022-05-09 08:05:29','院系6');
/*!40000 ALTER TABLE `yuanxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuanxifuzeren`
--

DROP TABLE IF EXISTS `yuanxifuzeren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuanxifuzeren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanxizhanghao` varchar(200) NOT NULL COMMENT '院系账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuanxizhanghao` (`yuanxizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='院系负责人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuanxifuzeren`
--

LOCK TABLES `yuanxifuzeren` WRITE;
/*!40000 ALTER TABLE `yuanxifuzeren` DISABLE KEYS */;
INSERT INTO `yuanxifuzeren` VALUES (31,'2022-05-09 08:05:29','院系账号1','123456','负责人1','男','upload/yuanxifuzeren_zhaopian1.jpg','院系1','13823888881'),(32,'2022-05-09 08:05:29','院系账号2','123456','负责人2','男','upload/yuanxifuzeren_zhaopian2.jpg','院系2','13823888882'),(33,'2022-05-09 08:05:29','院系账号3','123456','负责人3','男','upload/yuanxifuzeren_zhaopian3.jpg','院系3','13823888883'),(34,'2022-05-09 08:05:29','院系账号4','123456','负责人4','男','upload/yuanxifuzeren_zhaopian4.jpg','院系4','13823888884'),(35,'2022-05-09 08:05:29','院系账号5','123456','负责人5','男','upload/yuanxifuzeren_zhaopian5.jpg','院系5','13823888885'),(36,'2022-05-09 08:05:29','院系账号6','123456','负责人6','男','upload/yuanxifuzeren_zhaopian6.jpg','院系6','13823888886');
/*!40000 ALTER TABLE `yuanxifuzeren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanye`
--

DROP TABLE IF EXISTS `zhuanye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanye` varchar(200) NOT NULL COMMENT '专业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanye` (`zhuanye`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='专业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanye`
--

LOCK TABLES `zhuanye` WRITE;
/*!40000 ALTER TABLE `zhuanye` DISABLE KEYS */;
INSERT INTO `zhuanye` VALUES (21,'2022-05-09 08:05:29','专业1'),(22,'2022-05-09 08:05:29','专业2'),(23,'2022-05-09 08:05:29','专业3'),(24,'2022-05-09 08:05:29','专业4'),(25,'2022-05-09 08:05:29','专业5'),(26,'2022-05-09 08:05:29','专业6');
/*!40000 ALTER TABLE `zhuanye` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-12 12:05:24
