-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.24-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema personalplatform
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ personalplatform;
USE personalplatform;

--
-- Table structure for table `personalplatform`.`client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `userid` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `truename` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `QQ` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `ispublic` varchar(255) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `personalplatform`.`client`
--

/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` (`userid`,`username`,`password`,`truename`,`sex`,`email`,`tel`,`QQ`,`description`,`ispublic`) VALUES 
 (1,'severus','severus','张树凯','男','severuszh@gmail.com','13654685409','675980656','绝世好人啊!!！','是'),
 (4,'fuqiang','fuqiang','付强','男','fuqiang843012@163.com','13624604627','609385993','人人都问我长寿的秘诀 我呀 就不告诉你！','是'),
 (5,'liujie','liujie','刘杰','男','liujie@gmail.com','13936014649','454654165','无敌二师兄！','是'),
 (6,'liuyang','liuyang','刘洋','男','liuyang@gmail.con','15847562893','48573847','刘洋','是'),
 (7,'zhouyang','zhouyang','周扬','男','zhouyang@gmail.com','36497839378','59934839','周扬','是'),
 (8,'renzhiqiang','renzhiqiang','任志强','男','renzhiqiang','13624605022','348905349','任志强','是'),
 (9,'liuzhaodong','liuzhaodong','刘兆东','男','liuzhaodong@gmail.com','13569583739','58945859','刘兆东','是'),
 (10,'wangbin','wangbin','王彬','男','wangbin@gmail.com','1589389394','884545008','王彬','是'),
 (11,'zhangjian','zhangjian','张剑','男','zhangjian@gmail.com','15884949493','8598354','张剑','是');
INSERT INTO `client` (`userid`,`username`,`password`,`truename`,`sex`,`email`,`tel`,`QQ`,`description`,`ispublic`) VALUES 
 (12,'rongyiran','rongyiran','荣一然','男','rongyiran@gmail.com','13385858303','546243562','荣一然','是');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;


--
-- Table structure for table `personalplatform`.`clientfile`
--

DROP TABLE IF EXISTS `clientfile`;
CREATE TABLE `clientfile` (
  `fileid` int(11) NOT NULL auto_increment,
  `filename` varchar(255) default NULL,
  `filesize` int(10) unsigned default NULL,
  `uploadtime` datetime default NULL,
  `ispublic` varchar(6) default NULL,
  `userid` int(11) default NULL,
  PRIMARY KEY  (`fileid`),
  KEY `FKB8815C07D3C1859` (`userid`),
  CONSTRAINT `FKB8815C07D3C1859` FOREIGN KEY (`userid`) REFERENCES `client` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `personalplatform`.`clientfile`
--

/*!40000 ALTER TABLE `clientfile` DISABLE KEYS */;
INSERT INTO `clientfile` (`fileid`,`filename`,`filesize`,`uploadtime`,`ispublic`,`userid`) VALUES 
 (5,'English Speaking.doc',91136,'2009-07-10 15:46:22','是',1),
 (6,'面试综合习题.doc',117248,'2009-07-10 16:07:15','是',1);
/*!40000 ALTER TABLE `clientfile` ENABLE KEYS */;


--
-- Table structure for table `personalplatform`.`clientfilespace`
--

DROP TABLE IF EXISTS `clientfilespace`;
CREATE TABLE `clientfilespace` (
  `spaceid` int(11) NOT NULL auto_increment,
  `filespace` float default NULL,
  `fileexist` float default NULL,
  `filecount` int(11) default NULL,
  `userid` int(11) default NULL,
  PRIMARY KEY  (`spaceid`),
  UNIQUE KEY `userid` (`userid`),
  KEY `FK7EB0113FD3C1859` (`userid`),
  CONSTRAINT `FK7EB0113FD3C1859` FOREIGN KEY (`userid`) REFERENCES `client` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `personalplatform`.`clientfilespace`
--

/*!40000 ALTER TABLE `clientfilespace` DISABLE KEYS */;
INSERT INTO `clientfilespace` (`spaceid`,`filespace`,`fileexist`,`filecount`,`userid`) VALUES 
 (1,102400,102197,2,1),
 (2,102400,102400,0,4),
 (3,102400,102400,0,5),
 (4,102400,102400,0,6),
 (5,102400,102400,0,7),
 (6,102400,102400,0,8),
 (7,102400,102400,0,9),
 (8,102400,102400,0,10),
 (9,102400,102400,0,11),
 (10,102400,102400,0,12);
/*!40000 ALTER TABLE `clientfilespace` ENABLE KEYS */;


--
-- Table structure for table `personalplatform`.`clientmessage`
--

DROP TABLE IF EXISTS `clientmessage`;
CREATE TABLE `clientmessage` (
  `messageid` int(11) NOT NULL auto_increment,
  `sender` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `sendtime` datetime default NULL,
  `userid` int(11) default NULL,
  PRIMARY KEY  (`messageid`),
  KEY `FK8197099CD3C1859` (`userid`),
  CONSTRAINT `FK8197099CD3C1859` FOREIGN KEY (`userid`) REFERENCES `client` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `personalplatform`.`clientmessage`
--

/*!40000 ALTER TABLE `clientmessage` DISABLE KEYS */;
INSERT INTO `clientmessage` (`messageid`,`sender`,`content`,`sendtime`,`userid`) VALUES 
 (4,'severus','二师兄 你好啊！！！','2009-07-10 09:52:38',5),
 (5,'severus','哈哈哈哈哈哈','2009-07-10 10:23:01',5),
 (6,'severus','abcdefghigklmnopqrstuvwxyz','2009-07-10 10:30:01',5),
 (7,'fuqiang','hello severus!','2009-07-10 11:10:59',1);
/*!40000 ALTER TABLE `clientmessage` ENABLE KEYS */;


--
-- Table structure for table `personalplatform`.`clienttremind`
--

DROP TABLE IF EXISTS `clienttremind`;
CREATE TABLE `clienttremind` (
  `tremindid` int(11) NOT NULL auto_increment,
  `theme` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `makeDate` datetime default NULL,
  `userid` int(11) default NULL,
  PRIMARY KEY  (`tremindid`),
  KEY `FK949C40ED3C1859` (`userid`),
  CONSTRAINT `FK949C40ED3C1859` FOREIGN KEY (`userid`) REFERENCES `client` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `personalplatform`.`clienttremind`
--

/*!40000 ALTER TABLE `clienttremind` DISABLE KEYS */;
INSERT INTO `clienttremind` (`tremindid`,`theme`,`content`,`makeDate`,`userid`) VALUES 
 (1,'周五 修煤气','周五下午 修煤气','2009-07-09 16:23:17',1),
 (2,'下礼拜 回家','下礼拜 回家！！！！','2009-07-09 16:25:26',5),
 (3,'下午交水费','下午交水费下午交水费','2009-07-09 16:55:22',1);
/*!40000 ALTER TABLE `clienttremind` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
