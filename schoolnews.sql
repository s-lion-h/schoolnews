-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolnews
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'校园',NULL),(2,'事务',NULL),(3,'公告',NULL),(4,'世界',NULL),(5,'体育',NULL),(6,'高层',NULL),(7,'经济',NULL),(8,'科研',NULL),(9,'就业',NULL),(10,'社会',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) COLLATE utf8_bin NOT NULL,
  `newsid` varchar(45) COLLATE utf8_bin NOT NULL,
  `comment` varchar(255) COLLATE utf8_bin NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (2,'1','27','妇联红旗好像很厉害的样子~~','2018-03-19 07:10:51'),(3,'1','27','为什么刚定向不了啊','2018-03-19 07:13:29'),(4,'1','25','查宿舍草泥马','2018-03-19 08:01:41'),(5,'1','35','为什么呢。。。。。。。。','2018-03-20 05:02:55'),(6,'1','37','难受啊','2018-03-20 06:30:13'),(7,'2','39','我是gay~！~~','2018-03-21 13:03:49'),(8,'1','39','楼上真的是gay','2018-03-21 13:05:42'),(9,'1','40','17暴击的狗贼~！！！！！！！！！！','2018-03-21 13:49:42'),(10,'2','40','前排出售26速招财，全服独此一家','2018-03-21 13:50:34'),(13,'1','42','草泥马','2018-03-27 00:49:50');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commenttop`
--

DROP TABLE IF EXISTS `commenttop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commenttop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentid` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commenttop`
--

LOCK TABLES `commenttop` WRITE;
/*!40000 ALTER TABLE `commenttop` DISABLE KEYS */;
INSERT INTO `commenttop` VALUES (9,'9');
/*!40000 ALTER TABLE `commenttop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headimg`
--

DROP TABLE IF EXISTS `headimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `headimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) COLLATE utf8_bin NOT NULL,
  `src` varchar(45) COLLATE utf8_bin NOT NULL DEFAULT 'head.jpg',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headimg`
--

LOCK TABLES `headimg` WRITE;
/*!40000 ALTER TABLE `headimg` DISABLE KEYS */;
/*!40000 ALTER TABLE `headimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `newsid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) COLLATE utf8_bin NOT NULL,
  `title` varchar(45) COLLATE utf8_bin NOT NULL,
  `content` text CHARACTER SET utf8,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isshow` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`newsid`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (41,'1','多国驱逐俄外交人员 俄方：将根据对等原则做出回应','<p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">中新社莫斯科3月26日电 (记者 王修君)俄罗斯前情报人员斯克里帕尔中毒一事仍在发酵。26日，针对多国宣布驱逐俄外交人员一事，俄方表示，将根据对等原则做出回应。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">美国、加拿大、法国、意大利、乌克兰等多个国家26日发表声明，宣布驱逐若干名俄驻自己国家的外交人员，以报复俄涉嫌在英国袭击俄前特工斯克里帕尔。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">对此，俄外交部当天表示强烈抗议并称这些国家的举动不利于确定事故原因以及搜索罪犯。俄将这些举动视为“不友好行为”。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">俄外交部强调，这些国家不了解事件情况，“盲目听信英国政府并同英国政府保持一致”。其举动延续了对抗路线，导致局势紧张。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">俄总统新闻秘书佩斯科夫当天对此表示了遗憾。他说，俄方多次声明与斯克里帕尔中毒一事没有关系。多国驱逐俄外交人员的举动加剧了紧张局势。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">佩斯科夫说，俄方正在分析局势并将根据对等原则一一做出回应。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">本月4日，俄罗斯前情报人员斯克里帕尔与其女儿在英国遭神经毒剂袭击。英方怀疑俄罗斯“极有可能”对此事承担责任并要求俄方在3月13日晚前就这一事件提供详细信息和解释。但这一要求被俄以英国“未履行《禁止化学武器公约》义务”为由拒绝。</p><p><br/></p>','2018-03-27 00:45:04',1),(40,'1','【震惊】阴阳师欧皇与非酋形成强烈对比','<p><span style=\"font-size: 20px;\">今日非洲玩家<span style=\"font-size: 20px; color: rgb(192, 0, 0);\">sl夜神</span>在阴阳师游戏中获得一颗强力招财<span style=\"font-size: 20px; color: rgb(227, 108, 9);\">猫御魂</span></span><br/></p><p><span style=\"font-size: 20px;\"><img src=\"../../ueditor/jsp/upload/image/20180321/1521639951675017318.jpg\" title=\"1521639951675017318.jpg\" alt=\"微信图片_20180321214320.jpg\"/></span></p><p><span style=\"font-size: 20px;\">强化更是<span style=\"font-size: 20px; color: rgb(192, 0, 0);\">极品中的极品</span></span></p><p><span style=\"font-size: 20px;\"><img src=\"../../ueditor/jsp/upload/image/20180321/1521640003322006355.jpg\" title=\"1521640003322006355.jpg\" alt=\"微信图片_20180321214325.jpg\"/></span></p><p><span style=\"font-size: 20px;\">非洲玩家的26防御</span></p><p><span style=\"font-size: 20px;\">甚至没有人能秒掉带了这颗御魂的式神</span></p><p><span style=\"font-size: 20px;\">然而欧洲玩家<span style=\"font-size: 20px; color: rgb(192, 0, 0);\">形影不离的73</span>却获得了加<span style=\"font-size: 20px; color: rgb(227, 108, 9);\">17无敌暴击</span>御魂</span></p><p><span style=\"font-size: 20px;\"><img src=\"../../ueditor/jsp/upload/image/20180321/1521640040569034112.jpg\" title=\"1521640040569034112.jpg\" alt=\"微信图片_20180321214457.jpg\"/></span></p><p><span style=\"font-size: 20px;\">真是羡煞旁人</span></p>','2018-03-21 13:49:04',1),(39,'1','电话费更好地规范','<p><img src=\"../../ueditor/jsp/upload/image/20180320/1521527764378098392.jpg\" title=\"1521527764378098392.jpg\" alt=\"9_1280x960.jpg\"/></p>','2018-03-20 06:36:06',1),(44,'1','人民日报：领导干部政治上有问题，一票否决','<p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">原标题：“关键少数”要有关键作为（人民论坛）</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">余谓之</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">“时代是出卷人，我们是答卷人，人民是阅卷人。”如何向人民交出满意的答卷？领导干部作为“关键少数”，需要有关键作为。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">有“两把刷子”，不做“两面人”。习近平总书记指出，“领导十三亿多人的社会主义大国，我们党既要政治过硬，也要本领高强。”政治过硬、本领高强，就是新时代领导干部必须具备的“两把刷子”。对领导干部来说，政治建设是第一建设，政治标准是第一标准，政治能力是第一能力。政治上有问题，一票否决。忠诚才可靠，可靠才可用。对党绝对忠诚是最根本的党性要求。必须增强政治自觉、政治定力、政治历练、政治担当、政治自律，嘴上说的、心里想的、实际做的，都要完全一致，自觉做政治过硬的表率。这方面决不能含糊。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">成为“行家里手”，不做“二传手”。面对新时代新要求，各级领导干部既要有做好工作的强烈愿望和十足干劲，也要防止“爱岗不敬业、敬业不专业”，克服有“上前”的意识状态、缺少“上手”的知识能力，避免成为只能上传下达、在面上吆喝的“二传手”。习近平总书记强调：“各级领导干部要加快知识更新、加强实践锻炼，使专业素养和工作能力跟上时代节拍，避免少知而迷、无知而乱，努力成为做好工作的行家里手。”始终把工作当学问做，在实践中培养专业精神、丰富专业知识、提高专业能力，坚持干什么学什么、缺什么补什么、做什么钻什么，有针对性弥补精神软肋、知识弱项、能力短板、经验盲区，才能使自己真正成为专门家、主攻手。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">当好“施工队长”，不做“裱糊匠”。现在，全面深化改革的四梁八柱已经建立，进入施工高峰期。领导干部特别是一把手作为“施工队长”，既要当好“指挥员”，又要当好“施工员”。当好“指挥员”，参透“施工图”是首务，明白“任务书”是首责，按图施策，挂图作战，对标施工，确保中央决策部署在自己手上不走样、不跑偏。作为“施工员”，“出场”就要出色，“出手”就是高手，夯基垒台必须步步推进，立柱架梁需要招招精准，确保施工无纰漏、安全有保障。做了，更要做好；完成，更要力求完美，方能多建设“精品工程”“传世之作”。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">发挥“头雁效应”，不做“稻草人”。群雁高飞头雁领，领导干部特别是“一把手”坐镇中枢、指挥四方，其作风形象、精神状态如何，决定着工作推进的成效。“头雁”头在领路先飞。“率军者披坚执锐，执戈者方能战不旋踵”。当认清前进方向，盯住改革目标，按照发展规划，以功成不必在我的境界，带领“群雁”接续奋进，久久为功。“头雁”头在担当作为。对于本地本单位的改革发展，要有干事不避事、担责不塞责的进取精神，拎着乌纱帽干事，而不捂着乌纱帽做官。应当勇于挑最重的担子，敢于啃最硬的骨头，善于接最烫的山芋。“头雁”头在一抓到底。针对矛盾和问题，尤须拿出真抓的实劲、敢抓的狠劲、善抓的巧劲、常抓的韧劲，用钉钉子精神，一件一件抓推进，一项一项抓兑现。“头雁效应”充分发挥，就会形成头雁领飞、群雁齐追的壮美景象。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">“举网以纲，千目皆张”。“关键少数”有关键作为，改革发展局面就会风生水起，闯难关、解难题更会势如破竹</p><p><br/></p>','2018-03-27 00:52:05',1),(42,'1','美国财长姆努钦放风：有望和中国达成协议避免“贸易战”','<p style=\"text-align: center;\"><img src=\"../../ueditor/jsp/upload/image/20180327/1522111560262049619.jpg\" title=\"1522111560262049619.jpg\" alt=\"640.jpg\"/></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;美国财长姆努钦 东方IC 资料</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　中美贸易战疑云笼罩了3天之后，美国财长姆努钦开始对外放风有望“停战”。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　据外媒报道，当地时间3月25日，美国财长姆努钦表示，他乐观认为，美国能和中国达成协议，从而避免美国对至少500亿美元的进口中国产品征收关税。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　“我们正在与他们进行颇有成果的对话，”姆努钦在谈到与中国正在进行的会谈时说。“对于达成协议，我保持一种谨慎乐观的态度。”</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　《华尔街日报》最新报道也显示，消息人士透露，中美已悄然启动磋商，讨论改善美国对中国的市场准入。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　报道中提到，在上周末姆努钦和美国贸易代表莱特希泽发给刘鹤的信中，特朗普政府提出了具体要求，包括降低中国对美国汽车征收的关税，增加中国对美国半导体的购买，以及扩大美国企业对中国金融业的准入。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　其中一名知情人士称，姆努钦正在考虑去北京继续深入谈判。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　就在上周六，也就是3月24日上午，中央政治局委员、国务院副总理、中财办主任、中美全面经济对话中方牵头人刘鹤应约与美国财政部长姆努钦通话。姆努钦向中方通报了美方公布301调查报告最新情况。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　刘鹤表示，美方近日公布301调查报告，违背国际贸易规则，不利于中方利益，不利于美方利益，不利于全球利益。中方已经做好准备，有实力捍卫国家利益，希望双方保持理性，共同努力，维护中美经贸关系总体稳定的大局。双方同意继续就此保持沟通。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　《华尔街日报》提到，美国财政部发言人称，“他们在通话中还讨论了两国之间贸易逆差的问题，承诺将继续通过对话找到一个互相认可的方法来减少它。”</p><p><br/></p>','2018-03-27 00:46:22',1),(43,'1','伊朗原子能组织发言人：伊朗在重水领域已取得重要进展','<p style=\"text-align: center;\"><img src=\"../../ueditor/jsp/upload/image/20180327/1522111664652056978.jpg\" title=\"1522111664652056978.jpg\" alt=\"641.jpg\"/></p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">伊朗国家通讯社伊朗伊斯兰共和国通讯社26日报道称，伊朗原子能组织发言人卡莫尔万迪（Kamalvandi）当天表示，伊朗在重水领域已经取得了重要进展，部分成果将于4月9日伊朗国家核技术日期间亮相。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">重水主要用作核反应堆的慢化剂和冷却剂。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">他同时表示，此前伊朗已向美国和俄罗斯出口了部分重水，现在伊朗正在就生产更多重水进行谈判</p><p><br/></p>','2018-03-27 00:47:54',1),(45,'1','中国原油期货五大看点详解：人民币计价有何深意？','<p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">中新网客户端北京3月27日电(记者 邱宇) 历经多年筹备，中国原油期货终于在2018年3月26日于上海期货交易所挂牌交易，这是中国第一个国际化的期货品种。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">中国原油期货为何选择这一时间节点上市？与全球另外两种原油期货有何不同？采用人民币计价有何特殊意义？个人又将如何参与投资呢？对此，中新网记者进行了梳理解读。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><strong>为何选择这一时间节点上市？</strong></p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">中国原油期货经历了漫长的上市历程。如果从2001年上海期货交易所开始研究论证开展石油期货交易算起，中国原油期货的筹备已历时17年。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">关于推出原油期货的原因，中国证监会副主席姜洋近日撰文称，亚太地区的原油消费量和进口量大，但在该时区内还没有一个成熟的期货市场为原油贸易提供定价基准和规避风险的工具。目前，中国在内的亚太国家从中东地区进口原油的价格，比欧、美国家在同地区购买同品质原油要高，这对亚太国家及人民都是一件很吃亏的事情。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">为何选择这一时间节点上市？卓创资讯分析师高健告诉记者，主要是因为政策、流通和硬件等方面的条件已经成熟。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">“一是政策壁垒的打破，财政部、税务总局、海关总署、外汇局、证监会和人民银行等制定了完善的制度体系，为原油期货上市提供配套政策支持；二是现货市场的流通体制改革，主要体现在地方炼厂的进口权和使用权的增强，原油市场参与主体日益多元化；三是基础仓储交割库的建设、配套硬件等趋于完善。”高健说。</p><p style=\"text-align:center\"><img src=\"../../ueditor/jsp/upload/image/20180327/1522112527255094673.jpg\" title=\"1522112527255094673.jpg\" alt=\"641 (1).jpg\"/></p><p class=\"text image_desc\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">中国原油期货在上海期货交易所子公司——上海国际能源交易中心正式挂牌交易。曹卉 摄</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><strong>与全球另外两种原油期货有何不同？</strong></p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">纵观全球原油期货市场，布伦特原油期货与WTI原油期货分别是全球与美国的原油现货定价基准。根据已公布的《上海国际能源交易中心原油期货标准合约》，中国原油期货与上述两种原油期货有诸多不同。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">交易品种方面，中国原油交易的是中质含硫原油，另外两种原油期货交易的是轻质低硫原油。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">关于“选什么油的问题”，姜洋指出，“进口的原油中43%来自中东地区，是我国原油进口最主要的来源。综合考虑我国进口原油品种结构和实体经济需求，上海期货交易所原油期货合约以区别于WTI和布伦特的中质含硫原油作为标的。”</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">另外，记者注意到，几种原油期货在最小价格变动、结算价计价方式、涨跌停限制、保证金要求、交易时间等方面也存在不同。例如，中国原油期货涨跌停幅度是±4%，布伦特原油没有涨跌停板限制，WTI设置了涨跌幅限制和熔断机制。</p><p style=\"text-align:center\"><img src=\"../../ueditor/jsp/upload/image/20180327/1522112548426007399.jpg\" title=\"1522112548426007399.jpg\" alt=\"641 (2).jpg\"/></p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><strong>个人如何参与投资？</strong></p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">作为一种新的期货品种，个人如何投资原油期货呢？</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">除了要了解中国原油期货的交易规则，例如交易单位为1000桶/手，最小变动价位为0.1元人民币/桶，最低保证金为合约价格的5%等，还要具备专业知识，持有一定量的资金。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">根据规定，参与原油期货的投资者要充分熟悉和了解期货市场制度和风险，具有交易经验或参加过原油期货仿真交易，通过交易所的测试，个人投资者资金门槛50万人民币或等值外币，机构投资者资金门槛100万人民币或等值外币。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">对于个人客户来说，申请交易编码前5个工作日保证金账户可用资金余额均不低于人民币50万元或者等值外币。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><strong>为什么采用人民币计价？</strong></p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">“人民币计价”是中国原油期货的亮点之一。根据设计方案，原油期货将以人民币计价和结算，接受美元等外汇资金作为保证金。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">“我国原油期货以人民币计价和结算，其价格体现的是进口原油的到岸价，能更方便国内涉油企业管理价格波动风险。”证监会期货部副主任程莘近日接受媒体采访时表示。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">国务院发展研究中心对外经济研究部副部长王金照指出，推动石油的人民币结算、计价、交易，对石油出口国来讲，有利于规避汇率风险，节省汇率费用。另外，还有利于人民币的国际化。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">关于“美元的霸主地位是否遭到挑战”，王金照认为，一方面，石油美元树大根深，地位短期难以动摇，石油人民币还不具备取代石油美元的条件；另一方面，从长远来看，石油人民币也不是要简单地取代美元或者石油美元的地位，形成一家独大的格局。他说，未来的国际货币体系应当是多元化的。</p><p class=\"text\" style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p><br/></p>','2018-03-27 01:02:53',1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newscategory`
--

DROP TABLE IF EXISTS `newscategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newscategory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `newsid` int(11) NOT NULL,
  `catalog` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newscategory`
--

LOCK TABLES `newscategory` WRITE;
/*!40000 ALTER TABLE `newscategory` DISABLE KEYS */;
INSERT INTO `newscategory` VALUES (1,23,'1'),(2,23,'10'),(3,25,'1'),(4,25,'2'),(5,25,'3'),(21,31,'2'),(20,30,'3'),(19,30,'2'),(9,27,'1'),(10,27,'3'),(11,27,'6'),(12,27,'7'),(13,27,'8'),(14,27,'9'),(15,27,'10'),(16,29,'3'),(17,29,'4'),(18,29,'5'),(22,31,'8'),(23,31,'9'),(24,32,'4'),(25,32,'5'),(26,32,'6'),(27,33,'1'),(28,33,'2'),(29,33,'3'),(30,34,'5'),(31,34,'6'),(32,34,'7'),(33,35,'9'),(34,35,'10'),(35,36,'5'),(36,36,'6'),(37,37,'4'),(38,37,'5'),(39,37,'8'),(40,37,'9'),(41,37,'10'),(42,38,'5'),(43,38,'6'),(44,39,'3'),(45,39,'4'),(46,39,'5'),(47,40,'1'),(48,40,'2'),(49,40,'3'),(50,40,'4'),(51,40,'5'),(52,40,'6'),(53,40,'7'),(54,40,'8'),(55,40,'9'),(56,40,'10'),(57,41,'4'),(58,41,'6'),(59,41,'7'),(60,43,'4'),(61,43,'6'),(62,43,'7'),(63,43,'8'),(64,43,'9'),(65,43,'10'),(66,44,'2'),(67,44,'3'),(68,44,'5'),(69,44,'6'),(70,44,'7'),(71,45,'1'),(72,45,'2'),(73,45,'3'),(74,45,'4'),(75,45,'5'),(76,45,'6'),(77,45,'7'),(78,45,'8'),(79,45,'9'),(80,45,'10');
/*!40000 ALTER TABLE `newscategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newstop`
--

DROP TABLE IF EXISTS `newstop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newstop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsid` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newstop`
--

LOCK TABLES `newstop` WRITE;
/*!40000 ALTER TABLE `newstop` DISABLE KEYS */;
INSERT INTO `newstop` VALUES (1,'39');
/*!40000 ALTER TABLE `newstop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `title` varchar(45) COLLATE utf8_bin NOT NULL,
  `content` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'slionh','公告','3月6日编写此页，组件拆分','2018-03-10 12:00:50'),(2,'slionh','测试','emmmmm 不开心aaaa','2018-03-10 12:00:50'),(3,'slionh','公告','有什么开心的事情呢','2018-03-10 12:00:50'),(4,'huyungui@qq.com','公告','嘿嘿嘿','2018-03-13 02:07:00'),(47,'huyungui@qq.com','公告','告列表告列表','2018-03-15 08:42:03'),(43,'huyungui@qq.com','sssss','ssssssss','2018-03-15 05:14:04');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) COLLATE utf8_bin NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `level` int(11) NOT NULL DEFAULT '1',
  `is_lock` int(11) NOT NULL DEFAULT '0',
  `headimg` varchar(45) COLLATE utf8_bin NOT NULL DEFAULT 'head.jpg',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'huyungui','huyungui@qq.com','huyungui','2018-03-07 07:31:35',2,0,'2616156.jpg'),(2,'xuan','gayxuan@qq.com','gayxuan','2018-03-13 00:47:52',1,0,'head.jpg'),(3,'zhi','gayzhi@qq.com','gayzhi','2018-03-18 07:28:14',1,0,'head.jpg');
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

-- Dump completed on 2018-04-01 18:46:30
