#
# SQL Export
# Created by Querious (962)
# Created: March 14, 2015 at 12:10:08 PM CDT
# Encoding: Unicode (UTF-8)
#


DROP TABLE IF EXISTS `articles`;


CREATE TABLE `articles` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `publicationDate` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;




SET @PREVIOUS_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS;
SET FOREIGN_KEY_CHECKS = 0;


LOCK TABLES `articles` WRITE;
ALTER TABLE `articles` DISABLE KEYS;
INSERT INTO `articles` (`id`, `publicationDate`, `title`, `summary`, `content`) VALUES 
	(1,'2015-03-14','My first Article','This is my first article to test out the new CMS system.','<p>Not a whole lot to say other than this is the first article I am writing to test out the new CMS system that I am working on.</p>\r\n\r\n<p>This was built based on a tutorial by Matt Doyle called <a href="http://www.elated.com/articles/cms-in-an-afternoon-php-mysql/">Build a CMS in an afternoon using PHP and MySQL</a>.</p>\r\n\r\n<p>Just a sample to learn a little more about PHP.</p>');
ALTER TABLE `articles` ENABLE KEYS;
UNLOCK TABLES;




SET FOREIGN_KEY_CHECKS = @PREVIOUS_FOREIGN_KEY_CHECKS;


