--
-- Database: `opencart`
--

-----------------------------------------------------------

SET sql_mode = '';

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_target`
--

DROP TABLE IF EXISTS `oc_googleshopping_target`;
CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` DATE,
  `roas` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`advertise_google_target_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-----------------------------------------------------------

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
												
  

																								  
																																																																																														  

														   

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
												   
  

															
					   
					   
					 
					   
						

														   

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
											   
									
								 
											
												   
										   
											
															   
																  
									   
										 
							
														

  
													
  

																																												  
																												 
																													  
																													
																													 

														   

  
															 
  

													 
								
								 
							   
							  
										   
									   
									 
								  
					  
										   
					 
									 

  
																
  

																																									
																																																																																																																																																																				
																																																																																																																																																																																																										 
																																																																																																																																																																																																																																																																																																																																																																																																	
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								
																																																																																																																																																																																																																																																																																																																																																																																																																																																				
																																									 
																																																																																																																																																																																												   
																																														 

														   

  
													   
  

											   
													 
								
									
										   
								  
									 

														   

  
														 
  

												 
								
								
										 
									 

  
															
  

																	
		   
		   
		   
		   
		   
		   

														   

  
															
  

													
								
									 
											  
									 

  
															   
  

																			
		 
		 
		 
		 

														   

  
																 
  

														 
								
								
										 
									 

  
																	
  

																			
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  

														   

  
															
  

													
								
								 
										  
									 

  
															   
  

																		
		  
		  
		  
		  
		  

														   

  
																  
  

														  
								
									  
													   
											   
									 

  
																	 
  

																										 
			 
			 
			 
			 
			 

														   

  
															 
  

													 
								
								 
										  
									 

														   

  
														   
  

												   
								
							  
							   
									   
									 

  
															  
  

																				 
			
			
			
			

														   

  
														  
  

												  
								
										  
									   
									 

  
															 
  

																   
		 
		 
		 
		 

														   

  
												   
  

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-----------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Описание'),
(1, 2, 'Description'),
(2, 1, 'Один из атрибутов'),
(2, 2, 'One of the attributes'),
(3, 1, 'Наполнитель'),
(3, 2, 'Filling'),
(4, 1, 'test 1'),
(4, 2, 'test 1'),
(5, 1, 'test 2'),
(5, 2, 'test 2'),
(6, 1, 'test 3'),
(6, 2, 'test 3'),
(7, 1, 'test 4'),
(7, 2, 'test 4'),
(8, 1, 'test 5'),
(8, 2, 'test 5'),
(9, 1, 'test 6'),
(9, 2, 'test 6'),
(10, 1, 'test 7'),
(10, 2, 'test 7'),
(11, 1, 'test 8'),
(11, 2, 'test 8');

-----------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-----------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Вторая группа'),
(3, 2, 'Second group'),
(4, 1, 'Техническое'),
(4, 2, 'Technical'),
(5, 1, 'Одна из групп характеристик'),
(5, 2, 'One of the characteristic groups'),
(6, 1, 'Состав'),
(6, 2, 'Composition');

-----------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-----------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(127, 8, 1, 'ABCD+', '', 'catalog/demo/manufacturer/abcd.png', 0),
(128, 8, 1, 'MAMO Kitchen', '', 'catalog/demo/manufacturer/mamo.png', 0),
(129, 8, 1, 'Politeh Corp', '', 'catalog/demo/manufacturer/politeh.png', 0),
(130, 8, 1, 'С добром', '', 'catalog/demo/manufacturer/sdobrom.png', 0),
(131, 8, 1, 'TeplyDom', '', 'catalog/demo/manufacturer/teplydom.png', 0),
(132, 8, 1, 'Все для семьи', '', 'catalog/demo/manufacturer/vsedlyasemyi.png', 0),
(133, 8, 2, 'ABCD+', '', 'catalog/demo/manufacturer/abcd.png', 0),
(134, 8, 2, 'MAMO Kitchen', '', 'catalog/demo/manufacturer/mamo.png', 0),
(135, 8, 2, 'Politeh Corp', '', 'catalog/demo/manufacturer/politeh.png', 0),
(136, 8, 2, 'S dobrom', '', 'catalog/demo/manufacturer/sdobrom.png', 0),
(137, 8, 2, 'TeplyDom', '', 'catalog/demo/manufacturer/teplydom.png', 0),
(138, 8, 2, 'Vsyo dlya semyi', '', 'catalog/demo/manufacturer/vsedlyasemyi.png', 0),
(147, 7, 1, 'Умная ложка', 'index.php?route=product/product&amp;path=24&amp;product_id=40', 'catalog/demo/banners/bsamrt.jpg', 0),
(148, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/bdiv.jpg', 0),
(149, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(150, 7, 2, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(151, 6, 1, 'MAMO Kitchen', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/manufacturer/mamo.png', 0),
(152, 6, 2, 'MAMO Kitchen', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/manufacturer/mamo.png', 0);
																																			
																  
																																										  
									 

-----------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

											   
													 
									
										   
							
						   
										   
							   
											
															   
																  
								  
													   

  
														  
  

																																								   
																										
																									
																								 

														   

  
																   
  

														   
									  
								 
										  
							  
										   
									   
									 
								  
												 
					 
									 

  
								   
  

																																										 
									  
																 
									 
																	
									 
									 

														   

  
															
  

DROP TABLE IF EXISTS `oc_cart`;
									  
							 
						   
											
									 

  
															   
  

																				   
			
			
			
			

														   

  
																 
  

														 
									  
							  
							   
											 
									 

  
																	
  

																							 
		   
		   
		   

														   

  
																
  

														
									  
							  
											 
									 

  
																   
  

																			   
		
		
		

														   

  
											  
  

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
												 
  

																																				 
																							  

														   

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `noindex`) VALUES
(17, '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2025-03-31 11:58:14', 0),
(18, 'catalog/demo/hp_2.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2025-03-31 11:55:33', 1),
(20, 'catalog/demo/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2025-04-18 10:17:28', 1),
(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2025-03-31 11:58:51', 1),
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2025-03-31 12:18:38', 1),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2025-03-31 11:52:15', 1),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2025-03-31 11:51:42', 1),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2025-03-31 12:20:17', 1),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2025-03-31 12:20:47', 1),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2025-03-31 12:21:20', 1),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2025-03-31 12:21:56', 1),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2025-03-31 12:19:07', 1),
(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2025-03-31 11:59:41', 1),
(34, 'catalog/demo/ipod_touch_4.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2025-03-31 12:23:17', 1),
(35, '', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2010-09-18 14:02:42', 1),
(36, '', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2010-09-18 14:02:55', 1),
(37, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08', 1),
(38, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:51', '2010-09-18 14:03:51', 1),
(39, '', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20', 1),
(40, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36', 1),
(41, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30', 1),
(42, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04', 1),
(43, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:49', '2011-04-22 01:55:40', 1),
(44, '', 34, 0, 0, 0, 1, '2010-09-21 15:39:21', '2010-11-07 20:30:55', 1),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2025-03-31 12:02:00', 1),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2025-03-31 12:01:18', 1),
(47, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:16', '2010-11-07 11:13:16', 1),
(48, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:33', '2010-11-07 11:13:33', 1),
(49, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:04', '2010-11-07 11:14:04', 1),
(50, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:23', '2011-04-22 01:16:01', 1),
(51, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:38', '2011-04-22 01:16:13', 1),
(52, '', 34, 0, 0, 0, 1, '2010-11-07 11:16:09', '2011-04-22 01:54:57', 1),
(53, '', 34, 0, 0, 0, 1, '2010-11-07 11:28:53', '2011-04-22 01:14:36', 1),
(54, '', 34, 0, 0, 0, 1, '2010-11-07 11:29:16', '2011-04-22 01:16:50', 1),
(55, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:32', '2010-11-08 10:31:32', 1),
(56, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2011-04-22 01:16:37', 1),
(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2025-03-31 11:57:15', 1),
(58, '', 52, 0, 0, 0, 1, '2011-05-08 13:44:16', '2011-05-08 13:44:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `meta_h1`) VALUES
(17, 1, 'Бытовая химия', '', '', '', '', ''),
(17, 2, 'Household chemicals', '', '', '', '', ''),
(18, 1, 'Одежда', '&lt;p&gt;Одежда — это больше, чем просто необходимость. Это способ выразить себя, подчеркнуть индивидуальность и почувствовать уверенность в любой ситуации. В нашем каталоге вы найдёте всё: от уютных повседневных вещей до стильных нарядов на выход. Мы тщательно подбираем модели, чтобы каждая вещь радовала комфортом, качеством и актуальным дизайном. Хотите тёплый свитшот для прохладных вечеров или легкое платье на летнюю прогулку? У нас есть всё, чтобы вы выглядели и чувствовали себя прекрасно каждый день.&lt;/p&gt;\n', 'Одежда для вас', '', '', ''),
(18, 2, 'Clothing', '<p>Clothing is more than just a necessity. It\'s a way to express yourself, highlight your individuality, and feel confident in any situation. In our catalog, you’ll find everything from cozy everyday wear to stylish outfits for special occasions. We carefully select each piece to ensure comfort, quality, and modern design. Looking for a warm sweatshirt for cool evenings or a light dress for a summer walk? We have everything you need to look and feel great every day.</p>\ncomparing laptop deals from the likes of PC World, Comet, Dixons, The \nLink and Carphone Warehouse, Shop Laptop has the most comprehensive \nselection of laptops on the internet. At Shop Laptop, we pride ourselves\n on offering customers the very best laptop deals. From refurbished \nlaptops to netbooks, Shop Laptop ensures that every laptop - in every \ncolour, style, size and technical spec - is featured on the site at the \nlowest possible price.&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(20, 1, 'Посуда', '&lt;p&gt;\r\n Пример текста в описания категории. Можно использовать оформление: &lt;b&gt;жирным&lt;/b&gt;, &lt;i&gt;курсивом&lt;/i&gt;, &lt;font color=&quot;#000000&quot; style=&quot;background-color: rgb(156, 0, 255);&quot;&gt;цветом&lt;/font&gt;, менять &lt;span style=&quot;font-size: 16px;&quot;&gt;размер&lt;/span&gt;, вставлять картинки и прочее.&lt;/p&gt;\r\n', '', '', '', ''),
(20, 2, 'Tableware', '&lt;p&gt;Example of category description text&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(24, 1, 'Электроника', '', '', '', '', ''),
(24, 2, 'Electronics', '', '', '', '', ''),
(25, 1, 'Для дома', '', 'Для дома', '', '', ''),
(25, 2, 'For the home', '', '', '', '', ''),
(26, 1, 'Тарелки', '', '', '', '', ''),
(26, 2, 'Plates', '', '', '', '', ''),
(27, 1, 'Кружки', '', '', '', '', ''),
(27, 2, 'Mugs', '', '', '', '', ''),
(28, 1, 'Гостинная', '', '', '', '', ''),
(28, 2, 'Living room', '', '', '', '', ''),
(29, 1, 'Ванная комната', '', 'Ванная', '', '', ''),
(29, 2, 'Bathroom', '', '', '', '', ''),
(30, 1, 'Детская', '', '', '', '', ''),
(30, 2, 'Childrens room', '', '', '', '', ''),
(31, 1, 'Кладовка', '', '', '', '', ''),
(31, 2, 'Storage room', '', '', '', '', ''),
(32, 1, 'Кухня', '', '', '', '', ''),
(32, 2, 'Kitchen', '', '', '', '', ''),
(33, 1, 'Мебель', '', '', '', '', ''),
(33, 2, 'Furniture', '', '', '', '', ''),
(34, 1, 'Обувь', '&lt;p&gt;Удобная и красивая обувь — это то, без чего невозможно представить ни один день. Она завершает образ, влияет на настроение и отвечает за комфорт, особенно если вы в движении с утра до вечера. В нашем ассортименте — обувь на любой сезон и случай: от лёгких кед до утеплённых ботинок. Каждая пара подбирается с учётом стиля, практичности и материалов, которые прослужат долго. Хотите почувствовать уверенность в каждом шаге? Просто выберите свою идеальную пару здесь.&lt;/p&gt;\n', '', '', '', ''),
(34, 2, 'Footwear', '<p>Comfortable and stylish footwear is something no day can go without. It completes your look, affects your mood, and ensures comfort — especially if you\'re on the move from morning till night. In our collection, you’ll find shoes for every season and occasion: from lightweight sneakers to warm boots. Each pair is selected with style, practicality, and durable materials in mind. Want to feel confident with every step? Just find your perfect pair right here.</p>', '', '', '', ''),
(35, 1, 'test 1', '', 'test 1', '', '', ''),
(35, 2, 'test 1', '', '', '', '', ''),
(36, 1, 'test 2', '', 'test 2', '', '', ''),
(36, 2, 'test 2', '', '', '', '', ''),
(37, 1, 'test 5', '', '', '', '', ''),
(37, 2, 'test 5', '', '', '', '', ''),
(38, 1, 'test 4', '', '', '', '', ''),
(38, 2, 'test 4', '', '', '', '', ''),
(39, 1, 'test 6', '', '', '', '', ''),
(39, 2, 'test 6', '', '', '', '', ''),
(40, 1, 'test 7', '', '', '', '', ''),
(40, 2, 'test 7', '', '', '', '', ''),
(41, 1, 'test 8', '', '', '', '', ''),
(41, 2, 'test 8', '', '', '', '', ''),
(42, 1, 'test 9', '', '', '', '', ''),
(42, 2, 'test 9', '', '', '', '', ''),
(43, 1, 'test 11', '', '', '', '', ''),
(43, 2, 'test 11', '', '', '', '', ''),
(44, 1, 'test 12', '', '', '', '', ''),
(44, 2, 'test 12', '', '', '', '', ''),
(45, 1, 'Женская одежда', '', '', '', '', ''),
(45, 2, 'Womens clothing', '', '', '', '', ''),
(46, 1, 'Мужская одежда', '', '', '', '', ''),
(46, 2, 'Macs', '', '', '', '', ''),
(47, 1, 'test 15', '', '', '', '', ''),
(47, 2, 'test 15', '', '', '', '', ''),
(48, 1, 'test 16', '', '', '', '', ''),
(48, 2, 'test 16', '', '', '', '', ''),
(49, 1, 'test 17', '', '', '', '', ''),
(49, 2, 'test 17', '', '', '', '', ''),
(50, 1, 'test 18', '', '', '', '', ''),
(50, 2, 'test 18', '', '', '', '', ''),
(51, 1, 'test 19', '', '', '', '', ''),
(51, 2, 'test 19', '', '', '', '', ''),
(52, 1, 'test 20', '', '', '', '', ''),
(52, 2, 'test 20', '', '', '', '', ''),
(53, 1, 'test 21', '', '', '', '', ''),
(53, 2, 'test 21', '', '', '', '', ''),
(54, 1, 'test 22', '', '', '', '', ''),
(54, 2, 'test 22', '', '', '', '', ''),
(55, 1, 'test 23', '', '', '', '', ''),
(55, 2, 'test 23', '', '', '', '', ''),
(56, 1, 'test 24', '', '', '', '', ''),
(56, 2, 'test 24', '', '', '', '', ''),
(57, 1, 'Косметика', '', '', '', '', ''),
(57, 2, 'Tablets', '', '', '', '', ''),
(58, 1, 'test 25', '', '', '', '', ''),
(58, 2, 'test 25', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(17, 17, 0),
(18, 18, 0),
(20, 20, 0),
(24, 24, 0),
(25, 25, 0),
(26, 20, 0),
(26, 26, 1),
(27, 20, 0),
(27, 27, 1),
(28, 25, 0),
(28, 28, 1),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(33, 33, 0),
(34, 34, 0),
(35, 25, 0),
(35, 28, 1),
(35, 35, 2),
(36, 25, 0),
(36, 28, 1),
(36, 36, 2),
(37, 34, 0),
(37, 37, 1),
(38, 34, 0),
(38, 38, 1),
(39, 34, 0),
(39, 39, 1),
(40, 34, 0),
(40, 40, 1),
(41, 34, 0),
(41, 41, 1),
(42, 34, 0),
(42, 42, 1),
(43, 34, 0),
(43, 43, 1),
(44, 34, 0),
(44, 44, 1),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(47, 34, 0),
(47, 47, 1),
(48, 34, 0),
(48, 48, 1),
(49, 34, 0),
(49, 49, 1),
(50, 34, 0),
(50, 50, 1),
(51, 34, 0),
(51, 51, 1),
(52, 34, 0),
(52, 52, 1),
(53, 34, 0),
(53, 53, 1),
(54, 34, 0),
(54, 54, 1),
(55, 34, 0),
(55, 55, 1),
(56, 34, 0),
(56, 56, 1),
(57, 57, 0),
(58, 34, 0),
(58, 52, 1),
(58, 58, 2);

-----------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_category`
--

DROP TABLE IF EXISTS `oc_googleshopping_category`;
CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`google_product_category`,`store_id`),
  KEY `category_id_store_id` (`category_id`,`store_id`)
										
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-----------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   

-----------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0);

-----------------------------------------------------------

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(11, 'Армения', 'AM', 'ARM', '', 0, 1),
(15, 'Азербайджан', 'AZ', 'AZE', '', 0, 1),
(20, 'Белоруссия (Беларусь)', 'BY', 'BLR', '', 0, 1),
(80, 'Грузия', 'GE', 'GEO', '', 0, 1),
(109, 'Казахстан', 'KZ', 'KAZ', '', 0, 1),
(115, 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', 0, 1),
											   
(176, 'Российская Федерация', 'RU', 'RUS', '', 0, 1),
(207, 'Таджикистан', 'TJ', 'TJK', '', 0, 1),
(216, 'Туркменистан', 'TM', 'TKM', '', 0, 1),
(220, 'Украина', 'UA', 'UKR', '', 0, 1),
(226, 'Узбекистан', 'UZ', 'UZB', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-----------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Рубль', 'RUB', '', 'р.', '2', 1.00000000, 1, '2017-07-19 22:28:03'),
(2, 'US Dollar', 'USD', '$', '', '2', 0.01697793, 1, '2017-07-19 21:28:21'),
(3, 'Euro', 'EUR', '', '€', '2', 0.01476363, 1, '2017-07-19 21:28:21');
																					 

-----------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
													 
  

																																																																								 
																																																									  
																																																					  
																																																					   
																																																						
																																																				
																																																				 
																																																				  
																																																				 
																																																					  
																																																				   

														   

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_customer_affiliate`;
CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

DROP TABLE IF EXISTS `oc_customer_approval`;
CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-----------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-----------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

											 
												   
								 
							
								 
								 
				 
													   

  
														
  

																						 
											   
											   
												
												
											   
											   
												
											  
												 
												

														   

  
DROP TABLE IF EXISTS `oc_customer_login`;
  

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
																										 
																				  
																			  
																				
																				 
																			   
																					
																				
																									 
																				  
																						 
																									  
																			   
																				
																									  
																				
																								 
																								
																						 
																			   
																								
																								   
																			   
																				
																				 
																				 

-----------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11),
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

													  
															
								 
							  
							  
								  
								 
										 
									 

														   

  
DROP TABLE IF EXISTS `oc_customer_wishlist`;
  

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
															  
  

																					 
							   
							   

														   

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(32, 'admin_mail_return', 'admin/model/sale/return/addReturnHistory/after', 'mail/return', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`) VALUES
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
																																							
																																								
																																									 
																																							 
																																								  
																																								 
																																					  
																																						  
																																								  
																																								 
																																									 
																																								  
																																				  
																																			 
																																										  
																																												  
																																				 
																																		  
																																					 
																																					  
																																											 
																																			 
																																						
																																						
																																											
																																												  
																																									  
																																											  
																																								  
																																										  
																																					
																																											
																							 
																																										
																																								  
																												
																																								
																																											  
																														
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0);
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);

-----------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'module', 'blog_latest'),
(44, 'module', 'blog_featured'),
(45, 'module', 'blog_category'),
(46, 'module', 'featured_article'),
(47, 'module', 'featured_product'),
(48, 'currency', 'cbr'),
(49, 'currency', 'ecb'),
(50, 'currency', 'nbu'),
						 
						  
						 
(51, 'dashboard', 'chart_by_country_and_region');
							
							   
							 
									

-----------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
															  
  

																													 
														
														 

														   

--
-- Table structure for table `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
														   
  

																										  
												   
																   
														
															 
															   
														 
															  
															   
																	  
																  
																	   
																 
																	   
																	   
																	  
																	  
																	  
																				 
																			   
																			   
																			   
																						  
																			
																		 
																		 
																		 
																		 
																		 
																		 
																																													 
																			 
																																						  
																																					 
																		 
																				  
																				 
																				   
																				  
																			
																		  
																		  
																				  
																		
																				
																				
																				
																				
																				
																						 
																				   
																				
																				
																		  
																		  
																					
																				
																		   
																		 
																			 
																					 
																		
																		  
																		 
																				   
																	  
																			 
																				
																			  
																		  
																	  
																		
																		 
																			  
																				   
																				
																		
																			
																			   
																				 
																			   
																		 
																		   
																			 
																			
																				 
																			
																			   
																		   
																		   
																			 
																			 
																			
																			  
																			 
																		  
																			   
																			   
																			   
																			 
																			
																				 
																			
																						   
																			
																					
																																												 
																						 
																			  
																		   
																	   
																		 
																		 
																		   
																		   
																		
																	  
																		   
																		 
																	 
																	  
																	  
																	  
																	  
																	  
																	  
																	  
																	  
																	  
																	 
																	 
																	 
																	 
																	 
																	 
																	 
																																												  
																																													 
																																												 
																			
																		  
																							
																			   
																			   
																			   
																				 
																				 
																				  
																				  
																				  
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				   
																				 
																				   
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																				 
																					
																			 
																			  
																		  
																				
																				
																				
																				
																																		  
																																												
																			 
																			  
																			  
																			  
																				 
																		
																																												
																																												
																						  
																				 
																			   
																					
																			
																							 
																							 
																							 
																				  
																				
																				
																				  
																				  
																				  
																							 
																					  
																				 
																				  
																					 
																					 
																				  
																				  
																				  
																				  
																					  
																			   
																			   
																				 
																						  
																					 
																						
																						
																						
																					  
																						
																						 
																																												
																	   
																		
																				
																																												
																		   
																																		  
																																												
																																		  
																																		  
																			
																				   
																				   
																				   
																				   
																				 
																	   
																		
																		
																		   
																		   
																		  
																		   
																						   
																																			  
																			 
																			 
																				
																			 
																			 
																			 
																																		  
																			
																			
																			
																		 
																		   
																		  
																																		  
																																										
																																										
																																										
																			 
																			  
																					
																				
																			  
																					  
																		   
																					   
																					 
																					 
																				   
																					  
																					  
																					  

														   

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-----------------------------------------------------------

--
-- Table structure for table `oc_information`
--

														 
												 
										  
								 
													 
													   
									 

														   

  
																
  

														
																		 
									
										  
									   
																						   
											 
										
											 
												 
															 
													 
															
								  
								   
									  
																			 
							   
													   
																					  
																						   
							  
												
											  
															
									 

														   

  
									
  

DROP TABLE IF EXISTS `oc_information`;
											
										  
														 
									   
									  
									
														
															  
									 

														   

  
									
  

															   
								
										  
														 
														 
									 

														   

  
															   
  

													   
														 
										  
												   
										   
												   
						
															 
								 
									  
											 
							 
									 

														   

  
															  
  

													  
															
							   
										 
									 

														   

  
									 
  

																  
											 
								 
													   
									 

														   

  
													 
  

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `noindex` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`, `noindex`) VALUES
(3, 1, 3, 1, 1),
(4, 1, 1, 1, 0),
(5, 1, 4, 1, 1),
(6, 1, 2, 1, 1);
				

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `meta_h1`) VALUES
(3, 1, 'Политика безопасности', '&lt;div class=&quot;row mb-3&quot;&gt;\r\n                    &lt;div class=&quot;col&quot; style=&quot;border: solid 2px #eee; padding: 20px&quot;&gt;\r\n                        &lt;div id=&quot;inputResult&quot;&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h4&gt;&lt;strong&gt;Политика в&amp;nbsp;отношении обработки персональных данных&lt;/strong&gt;&lt;/h4&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;1. Общие положения&lt;/h5&gt;\r\n                                    &lt;div class=&quot;descr&quot;&gt;\r\n                                        Настоящая политика обработки персональных данных составлена\r\n                                        в&amp;nbsp;соответствии с&amp;nbsp;требованиями Федерального закона от&amp;nbsp;27.07.2006.\r\n                                        №&amp;nbsp;152-ФЗ «О&amp;nbsp;персональных данных» (далее&amp;nbsp;—\r\n                                        Закон о&amp;nbsp;персональных данных) и&amp;nbsp;определяет порядок обработки\r\n                                        персональных данных и&amp;nbsp;меры по&amp;nbsp;обеспечению безопасности персональных\r\n                                        данных, предпринимаемые &lt;span class=&quot;link mark owner-name-field&quot; id=&quot;owner-name-value&quot; data-scroll-to=&quot;#owner-name-field&quot;&gt;ООО ВАШЕ ООО&lt;/span&gt; (далее&amp;nbsp;— Оператор).\r\n                                    &lt;/div&gt;\r\n                                    &lt;div class=&quot;ol&quot;&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            1.1. Оператор ставит своей важнейшей целью и&amp;nbsp;условием осуществления\r\n                                            своей деятельности соблюдение прав и&amp;nbsp;свобод человека и&amp;nbsp;гражданина\r\n                                            при обработке его персональных данных, в&amp;nbsp;том числе защиты прав\r\n                                            на&amp;nbsp;неприкосновенность частной жизни, личную и&amp;nbsp;семейную тайну.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            1.2. Настоящая политика Оператора в&amp;nbsp;отношении обработки персональных\r\n                                            данных (далее&amp;nbsp;— Политика) применяется ко&amp;nbsp;всей информации,\r\n                                            которую Оператор может получить о&amp;nbsp;посетителях веб-сайта &lt;span class=&quot;link mark owner-site-url-field&quot; data-scroll-to=&quot;#owner-site-url-field&quot;&gt;https://вашсайт&lt;/span&gt;.\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;2. Основные понятия, используемые в&amp;nbsp;Политике&lt;/h5&gt;\r\n                                    &lt;div class=&quot;ol&quot;&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.1. Автоматизированная обработка персональных\r\n                                            данных&amp;nbsp;— обработка персональных данных с&amp;nbsp;помощью средств\r\n                                            вычислительной техники.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.2. Блокирование персональных данных&amp;nbsp;— временное прекращение\r\n                                            обработки персональных данных (за&amp;nbsp;исключением случаев, если обработка\r\n                                            необходима для уточнения персональных данных).\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.3. Веб-сайт&amp;nbsp;— совокупность графических и&amp;nbsp;информационных\r\n                                            материалов, а&amp;nbsp;также программ для ЭВМ и&amp;nbsp;баз данных, обеспечивающих\r\n                                            их&amp;nbsp;доступность в&amp;nbsp;сети интернет по&amp;nbsp;сетевому адресу &lt;span class=&quot;link mark owner-site-url-field&quot; data-scroll-to=&quot;#owner-site-url-field&quot;&gt;https://вашсайт&lt;/span&gt;.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.4. Информационная система персональных данных&amp;nbsp;— совокупность\r\n                                            содержащихся в&amp;nbsp;базах данных персональных данных и&amp;nbsp;обеспечивающих\r\n                                            их&amp;nbsp;обработку информационных технологий и&amp;nbsp;технических средств.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.5. Обезличивание персональных данных&amp;nbsp;— действия,\r\n                                            в&amp;nbsp;результате которых невозможно определить без использования\r\n                                            дополнительной информации принадлежность персональных данных конкретному\r\n                                            Пользователю или иному субъекту персональных данных.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.6. Обработка персональных данных&amp;nbsp;— любое действие (операция)\r\n                                            или совокупность действий (операций), совершаемых с&amp;nbsp;использованием\r\n                                            средств автоматизации или без использования таких средств\r\n                                            с&amp;nbsp;персональными данными, включая сбор, запись, систематизацию,\r\n                                            накопление, хранение, уточнение (обновление, изменение), извлечение,\r\n                                            использование, передачу (распространение, предоставление, доступ),\r\n                                            обезличивание, блокирование, удаление, уничтожение персональных данных.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.7. Оператор&amp;nbsp;— государственный орган, муниципальный орган,\r\n                                            юридическое или физическое лицо, самостоятельно или совместно с&amp;nbsp;другими\r\n                                            лицами организующие и/или&amp;nbsp;осуществляющие обработку персональных данных,\r\n                                            а&amp;nbsp;также определяющие цели обработки персональных данных, состав\r\n                                            персональных данных, подлежащих обработке, действия (операции), совершаемые\r\n                                            с&amp;nbsp;персональными данными.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;2.8. Персональные данные&amp;nbsp;— любая информация,\r\n                                            относящаяся прямо или косвенно к&amp;nbsp;определенному или определяемому\r\n                                            Пользователю веб-сайта &lt;span class=&quot;link mark owner-site-url-field&quot; data-scroll-to=&quot;#owner-site-url-field&quot;&gt;https://вашсайт&lt;/span&gt;.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.9. Персональные данные, разрешенные субъектом персональных данных для\r\n                                            распространения,&amp;nbsp;— персональные данные, доступ неограниченного\r\n                                            круга лиц к&amp;nbsp;которым предоставлен субъектом персональных данных путем\r\n                                            дачи согласия на&amp;nbsp;обработку персональных данных, разрешенных субъектом\r\n                                            персональных данных для распространения в&amp;nbsp;порядке, предусмотренном\r\n                                            Законом о&amp;nbsp;персональных данных (далее&amp;nbsp;— персональные данные,\r\n                                            разрешенные для распространения).\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.10. Пользователь&amp;nbsp;— любой посетитель веб-сайта &lt;span class=&quot;link mark owner-site-url-field&quot; data-scroll-to=&quot;#owner-site-url-field&quot;&gt;https://вашсайт&lt;/span&gt;.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.11. Предоставление персональных данных&amp;nbsp;— действия, направленные\r\n                                            на&amp;nbsp;раскрытие персональных данных определенному лицу или определенному\r\n                                            кругу лиц.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.12. Распространение персональных данных&amp;nbsp;— любые действия,\r\n                                            направленные на&amp;nbsp;раскрытие персональных данных неопределенному кругу лиц\r\n                                            (передача персональных данных) или на&amp;nbsp;ознакомление с&amp;nbsp;персональными\r\n                                            данными неограниченного круга лиц, в&amp;nbsp;том числе обнародование\r\n                                            персональных данных в&amp;nbsp;средствах массовой информации, размещение\r\n                                            в&amp;nbsp;информационно-телекоммуникационных сетях или предоставление доступа\r\n                                            к&amp;nbsp;персональным данным каким-либо иным способом.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.13. Трансграничная передача персональных данных&amp;nbsp;— передача\r\n                                            персональных данных на&amp;nbsp;территорию иностранного государства органу\r\n                                            власти иностранного государства, иностранному физическому или иностранному\r\n                                            юридическому лицу.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            2.14. Уничтожение персональных данных&amp;nbsp;— любые действия,\r\n                                            в&amp;nbsp;результате которых персональные данные уничтожаются безвозвратно\r\n                                            с&amp;nbsp;невозможностью дальнейшего восстановления содержания персональных\r\n                                            данных в&amp;nbsp;информационной системе персональных данных\r\n                                            и/или&amp;nbsp;уничтожаются\r\n                                            материальные носители персональных данных.\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;3. Основные права и&amp;nbsp;обязанности Оператора&lt;/h5&gt;\r\n                                    &lt;div class=&quot;ol&quot;&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;3.1. Оператор имеет право:&lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;получать от&amp;nbsp;субъекта персональных данных достоверные\r\n                                            информацию и/или&amp;nbsp;документы, содержащие персональные данные;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;в&amp;nbsp;случае отзыва субъектом персональных данных согласия\r\n                                            на&amp;nbsp;обработку персональных данных, а&amp;nbsp;также, направления обращения\r\n                                            с&amp;nbsp;требованием о&amp;nbsp;прекращении обработки персональных данных,\r\n                                            Оператор вправе продолжить обработку персональных данных без согласия\r\n                                            субъекта персональных данных при наличии оснований, указанных в&amp;nbsp;Законе\r\n                                            о&amp;nbsp;персональных данных;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;самостоятельно определять состав и&amp;nbsp;перечень мер,\r\n                                            необходимых и&amp;nbsp;достаточных для обеспечения выполнения обязанностей,\r\n                                            предусмотренных Законом о&amp;nbsp;персональных данных и&amp;nbsp;принятыми\r\n                                            в&amp;nbsp;соответствии с&amp;nbsp;ним нормативными правовыми актами, если иное\r\n                                            не&amp;nbsp;предусмотрено Законом о&amp;nbsp;персональных данных или другими\r\n                                            федеральными законами.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;3.2. Оператор обязан:&lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;предоставлять субъекту персональных данных по&amp;nbsp;его просьбе\r\n                                            информацию, касающуюся обработки его персональных данных;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;организовывать обработку персональных данных в&amp;nbsp;порядке,\r\n                                            установленном действующим законодательством&amp;nbsp;РФ;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;отвечать на&amp;nbsp;обращения и&amp;nbsp;запросы субъектов\r\n                                            персональных данных и&amp;nbsp;их&amp;nbsp;законных представителей\r\n                                            в&amp;nbsp;соответствии с&amp;nbsp;требованиями Закона о&amp;nbsp;персональных данных;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;сообщать в&amp;nbsp;уполномоченный орган по&amp;nbsp;защите прав\r\n                                            субъектов персональных данных по&amp;nbsp;запросу этого органа необходимую\r\n                                            информацию в&amp;nbsp;течение 10&amp;nbsp;дней с&amp;nbsp;даты получения такого запроса;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;публиковать или иным образом обеспечивать неограниченный доступ\r\n                                            к&amp;nbsp;настоящей Политике в&amp;nbsp;отношении обработки персональных данных;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;принимать правовые, организационные и&amp;nbsp;технические меры для\r\n                                            защиты персональных данных от&amp;nbsp;неправомерного или случайного доступа\r\n                                            к&amp;nbsp;ним, уничтожения, изменения, блокирования, копирования,\r\n                                            предоставления, распространения персональных данных, а&amp;nbsp;также\r\n                                            от&amp;nbsp;иных неправомерных действий в&amp;nbsp;отношении персональных данных;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;прекратить передачу (распространение, предоставление, доступ)\r\n                                            персональных данных, прекратить обработку и&amp;nbsp;уничтожить персональные\r\n                                            данные в&amp;nbsp;порядке и&amp;nbsp;случаях, предусмотренных Законом\r\n                                            о&amp;nbsp;персональных данных;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;исполнять иные обязанности, предусмотренные Законом\r\n                                            о&amp;nbsp;персональных данных.\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;4. Основные права и&amp;nbsp;обязанности субъектов персональных данных&lt;/h5&gt;\r\n                                    &lt;div class=&quot;ol&quot;&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;4.1. Субъекты персональных данных имеют право:&lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;получать информацию, касающуюся обработки его персональных\r\n                                            данных, за&amp;nbsp;исключением случаев, предусмотренных федеральными законами.\r\n                                            Сведения предоставляются субъекту персональных данных Оператором\r\n                                            в&amp;nbsp;доступной форме, и&amp;nbsp;в&amp;nbsp;них не&amp;nbsp;должны содержаться\r\n                                            персональные данные, относящиеся к&amp;nbsp;другим субъектам персональных\r\n                                            данных, за&amp;nbsp;исключением случаев, когда имеются законные основания для\r\n                                            раскрытия таких персональных данных. Перечень информации и&amp;nbsp;порядок\r\n                                            ее&amp;nbsp;получения установлен Законом о&amp;nbsp;персональных данных;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;требовать от&amp;nbsp;оператора уточнения его персональных данных,\r\n                                            их&amp;nbsp;блокирования или уничтожения в&amp;nbsp;случае, если персональные данные\r\n                                            являются неполными, устаревшими, неточными, незаконно полученными или\r\n                                            не&amp;nbsp;являются необходимыми для заявленной цели обработки, а&amp;nbsp;также\r\n                                            принимать предусмотренные законом меры по&amp;nbsp;защите своих прав;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;выдвигать условие предварительного согласия при обработке\r\n                                            персональных данных в&amp;nbsp;целях продвижения на&amp;nbsp;рынке товаров, работ\r\n                                            и&amp;nbsp;услуг;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;на&amp;nbsp;отзыв согласия на&amp;nbsp;обработку персональных данных,\r\n                                            а&amp;nbsp;также, на&amp;nbsp;направление требования о&amp;nbsp;прекращении обработки\r\n                                            персональных данных;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;обжаловать в&amp;nbsp;уполномоченный орган по&amp;nbsp;защите прав\r\n                                            субъектов персональных данных или в&amp;nbsp;судебном порядке неправомерные\r\n                                            действия или бездействие Оператора при обработке его персональных данных;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;на&amp;nbsp;осуществление иных прав, предусмотренных\r\n                                            законодательством&amp;nbsp;РФ.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;4.2. Субъекты персональных данных обязаны:&lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;предоставлять Оператору достоверные данные о&amp;nbsp;себе;\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            —&amp;nbsp;сообщать Оператору об&amp;nbsp;уточнении (обновлении, изменении)\r\n                                            своих персональных данных.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            4.3. Лица, передавшие Оператору недостоверные сведения о&amp;nbsp;себе, либо\r\n                                            сведения о&amp;nbsp;другом субъекте персональных данных без согласия последнего,\r\n                                            несут ответственность в&amp;nbsp;соответствии с&amp;nbsp;законодательством&amp;nbsp;РФ.\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;5. Принципы обработки персональных данных&lt;/h5&gt;\r\n                                    &lt;div class=&quot;ol&quot;&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            5.1. Обработка персональных данных осуществляется на&amp;nbsp;законной\r\n                                            и&amp;nbsp;справедливой основе.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            5.2. Обработка персональных данных ограничивается достижением конкретных,\r\n                                            заранее определенных и&amp;nbsp;законных целей. Не&amp;nbsp;допускается обработка\r\n                                            персональных данных, несовместимая с&amp;nbsp;целями сбора персональных данных.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            5.3. Не&amp;nbsp;допускается объединение баз данных, содержащих персональные\r\n                                            данные, обработка которых осуществляется в&amp;nbsp;целях, несовместимых между\r\n                                            собой.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            5.4. Обработке подлежат только персональные данные, которые отвечают целям\r\n                                            их&amp;nbsp;обработки.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            5.5. Содержание и&amp;nbsp;объем обрабатываемых персональных данных\r\n                                            соответствуют заявленным целям обработки. Не&amp;nbsp;допускается избыточность\r\n                                            обрабатываемых персональных данных по&amp;nbsp;отношению к&amp;nbsp;заявленным целям\r\n                                            их&amp;nbsp;обработки.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            5.6. При обработке персональных данных обеспечивается точность персональных\r\n                                            данных, их&amp;nbsp;достаточность, а&amp;nbsp;в&amp;nbsp;необходимых случаях\r\n                                            и&amp;nbsp;актуальность по&amp;nbsp;отношению к&amp;nbsp;целям обработки персональных\r\n                                            данных. Оператор принимает необходимые меры и/или&amp;nbsp;обеспечивает\r\n                                            их&amp;nbsp;принятие по&amp;nbsp;удалению или уточнению неполных или неточных\r\n                                            данных.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            5.7. Хранение персональных данных осуществляется в&amp;nbsp;форме, позволяющей\r\n                                            определить субъекта персональных данных, не&amp;nbsp;дольше, чем этого требуют\r\n                                            цели обработки персональных данных, если срок хранения персональных данных\r\n                                            не&amp;nbsp;установлен федеральным законом, договором, стороной которого,\r\n                                            выгодоприобретателем или поручителем по&amp;nbsp;которому является субъект\r\n                                            персональных данных. Обрабатываемые персональные данные уничтожаются либо\r\n                                            обезличиваются по&amp;nbsp;достижении целей обработки или в&amp;nbsp;случае утраты\r\n                                            необходимости в&amp;nbsp;достижении этих целей, если иное не&amp;nbsp;предусмотрено\r\n                                            федеральным законом.\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;6. Цели обработки персональных данных&lt;/h5&gt;\r\n                                    &lt;div class=&quot;ol&quot;&gt;\r\n                                        &lt;div class=&quot;li&quot; id=&quot;Y23UR8S&quot;&gt;\r\n                                                &lt;table class=&quot;purpose-table&quot;&gt;\r\n                                                    &lt;tbody&gt;&lt;tr&gt;\r\n                                                        &lt;th&gt;Цель обработки&lt;/th&gt;\r\n                                                        &lt;td class=&quot;purpose-field&quot;&gt;&lt;span class=&quot;mark link&quot;&gt;заключение, исполнение и&amp;nbsp;прекращение гражданско-правовых договоров&lt;/span&gt;&lt;/td&gt;\r\n                                                    &lt;/tr&gt;\r\n                                                    &lt;tr&gt;\r\n                                                        &lt;th&gt;Персональные данные&lt;/th&gt;\r\n                                                        &lt;td class=&quot;data-field&quot;&gt;&lt;ul&gt;&lt;li&gt;&lt;span class=&quot;mark link&quot;&gt;фамилия, имя, отчество&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span class=&quot;mark link&quot;&gt;электронный адрес&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span class=&quot;mark link&quot;&gt;номера телефонов&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/td&gt;\r\n                                                    &lt;/tr&gt;\r\n                                                    &lt;tr&gt;\r\n                                                        &lt;th&gt;Правовые основания&lt;/th&gt;\r\n                                                        &lt;td class=&quot;legal-field&quot;&gt;&lt;ul&gt;&lt;li&gt;&lt;span class=&quot;mark link&quot;&gt;Федеральный закон «Об&amp;nbsp;информации, информационных технологиях и&amp;nbsp;о&amp;nbsp;защите информации» от&amp;nbsp;27.07.2006&amp;nbsp;N 149-ФЗ&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/td&gt;\r\n                                                    &lt;/tr&gt;\r\n                                                    &lt;tr&gt;\r\n                                                        &lt;th&gt;Виды обработки персональных данных&lt;/th&gt;\r\n                                                        &lt;td class=&quot;types-field&quot;&gt;&lt;ul&gt;&lt;li&gt;&lt;span class=&quot;mark link&quot;&gt;Сбор, запись, систематизация, накопление, хранение, уничтожение и&amp;nbsp;обезличивание персональных данных&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span class=&quot;mark link&quot;&gt;Отправка информационных писем на&amp;nbsp;адрес электронной почты&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/td&gt;\r\n                                                    &lt;/tr&gt;\r\n                                                &lt;/tbody&gt;&lt;/table&gt;\r\n                                            &lt;/div&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;7. Условия обработки персональных данных&lt;/h5&gt;\r\n                                    &lt;div class=&quot;ol&quot;&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            7.1. Обработка персональных данных осуществляется с&amp;nbsp;согласия субъекта\r\n                                            персональных данных на&amp;nbsp;обработку его персональных данных.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            7.2. Обработка персональных данных необходима для достижения целей,\r\n                                            предусмотренных международным договором Российской Федерации или законом,\r\n                                            для осуществления возложенных законодательством Российской Федерации\r\n                                            на&amp;nbsp;оператора функций, полномочий и&amp;nbsp;обязанностей.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            7.3. Обработка персональных данных необходима для осуществления правосудия,\r\n                                            исполнения судебного акта, акта другого органа или должностного лица,\r\n                                            подлежащих исполнению в&amp;nbsp;соответствии с&amp;nbsp;законодательством\r\n                                            Российской Федерации об&amp;nbsp;исполнительном производстве.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            7.4. Обработка персональных данных необходима для исполнения договора,\r\n                                            стороной которого либо выгодоприобретателем или поручителем по&amp;nbsp;которому\r\n                                            является субъект персональных данных, а&amp;nbsp;также для заключения договора\r\n                                            по&amp;nbsp;инициативе субъекта персональных данных или договора,\r\n                                            по&amp;nbsp;которому субъект персональных данных будет являться\r\n                                            выгодоприобретателем или поручителем.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            7.5. Обработка персональных данных необходима для осуществления прав\r\n                                            и&amp;nbsp;законных интересов оператора или третьих лиц либо для достижения\r\n                                            общественно значимых целей при условии, что при этом не&amp;nbsp;нарушаются\r\n                                            права и&amp;nbsp;свободы субъекта персональных данных.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            7.6. Осуществляется обработка персональных данных, доступ неограниченного\r\n                                            круга лиц к&amp;nbsp;которым предоставлен субъектом персональных данных либо\r\n                                            по&amp;nbsp;его просьбе (далее&amp;nbsp;— общедоступные персональные данные).\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            7.7. Осуществляется обработка персональных данных, подлежащих опубликованию\r\n                                            или обязательному раскрытию в&amp;nbsp;соответствии с&amp;nbsp;федеральным законом.\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;\r\n                                        8. Порядок сбора, хранения, передачи и&amp;nbsp;других видов обработки персональных\r\n                                        данных\r\n                                    &lt;/h5&gt;\r\n                                    &lt;div class=&quot;descr&quot;&gt;\r\n                                        Безопасность персональных данных, которые обрабатываются Оператором,\r\n                                        обеспечивается путем реализации правовых, организационных и&amp;nbsp;технических\r\n                                        мер, необходимых для выполнения в&amp;nbsp;полном объеме требований действующего\r\n                                        законодательства в&amp;nbsp;области защиты персональных данных.\r\n                                    &lt;/div&gt;\r\n                                    &lt;div class=&quot;ol&quot;&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            8.1. Оператор обеспечивает сохранность персональных данных и&amp;nbsp;принимает\r\n                                            все возможные меры, исключающие доступ к&amp;nbsp;персональным данным\r\n                                            неуполномоченных лиц.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            8.2. Персональные данные Пользователя никогда, ни&amp;nbsp;при каких условиях\r\n                                            не&amp;nbsp;будут переданы третьим лицам, за&amp;nbsp;исключением случаев, связанных\r\n                                            с&amp;nbsp;исполнением действующего законодательства либо в&amp;nbsp;случае, если\r\n                                            субъектом персональных данных дано согласие Оператору на&amp;nbsp;передачу\r\n                                            данных третьему лицу для исполнения обязательств\r\n                                            по&amp;nbsp;гражданско-правовому договору.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            8.3. В&amp;nbsp;случае выявления неточностей в&amp;nbsp;персональных данных,\r\n                                            Пользователь может актуализировать их&amp;nbsp;самостоятельно, путем направления\r\n                                            Оператору уведомление на&amp;nbsp;адрес электронной почты Оператора &lt;span class=&quot;link mark owner-email-field&quot; data-scroll-to=&quot;#owner-email-field&quot;&gt;ваша почта&lt;/span&gt;\r\n                                            с&amp;nbsp;пометкой «Актуализация персональных данных».\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            8.4. Срок обработки персональных данных определяется достижением целей, для\r\n                                            которых были собраны персональные данные, если иной срок\r\n                                            не&amp;nbsp;предусмотрен договором или действующим\r\n                                            законодательством.\r\n                                            &lt;br&gt;\r\n                                            Пользователь может в&amp;nbsp;любой момент отозвать свое согласие\r\n                                            на&amp;nbsp;обработку персональных данных, направив Оператору уведомление\r\n                                            посредством электронной почты на&amp;nbsp;электронный адрес Оператора &lt;span class=&quot;link mark owner-email-field&quot; data-scroll-to=&quot;#owner-email-field&quot;&gt;ваша почта&lt;/span&gt;\r\n                                            с&amp;nbsp;пометкой «Отзыв согласия на&amp;nbsp;обработку персональных\r\n                                            данных».\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            8.5. Вся информация, которая собирается сторонними сервисами, в&amp;nbsp;том\r\n                                            числе платежными системами, средствами связи и&amp;nbsp;другими поставщиками\r\n                                            услуг, хранится и&amp;nbsp;обрабатывается указанными лицами (Операторами)\r\n                                            в&amp;nbsp;соответствии с&amp;nbsp;их&amp;nbsp;Пользовательским соглашением\r\n                                            и&amp;nbsp;Политикой конфиденциальности. Субъект персональных данных\r\n                                            и/или&amp;nbsp;с&amp;nbsp;указанными документами. Оператор не&amp;nbsp;несет\r\n                                            ответственность за&amp;nbsp;действия третьих лиц, в&amp;nbsp;том числе указанных\r\n                                            в&amp;nbsp;настоящем пункте поставщиков услуг.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            8.6. Установленные субъектом персональных данных запреты на&amp;nbsp;передачу\r\n                                            (кроме предоставления доступа), а&amp;nbsp;также на&amp;nbsp;обработку или условия\r\n                                            обработки (кроме получения доступа) персональных данных, разрешенных для\r\n                                            распространения, не&amp;nbsp;действуют в&amp;nbsp;случаях обработки персональных\r\n                                            данных в&amp;nbsp;государственных, общественных и&amp;nbsp;иных публичных интересах,\r\n                                            определенных законодательством&amp;nbsp;РФ.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            8.7. Оператор при обработке персональных данных обеспечивает\r\n                                            конфиденциальность персональных данных.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            8.8. Оператор осуществляет хранение персональных данных в&amp;nbsp;форме,\r\n                                            позволяющей определить субъекта персональных данных, не&amp;nbsp;дольше, чем\r\n                                            этого требуют цели обработки персональных данных, если срок хранения\r\n                                            персональных данных не&amp;nbsp;установлен федеральным законом, договором,\r\n                                            стороной которого, выгодоприобретателем или поручителем по&amp;nbsp;которому\r\n                                            является субъект персональных данных.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            8.9. Условием прекращения обработки персональных данных может являться\r\n                                            достижение целей обработки персональных данных, истечение срока действия\r\n                                            согласия субъекта персональных данных, отзыв согласия субъектом персональных\r\n                                            данных или требование о&amp;nbsp;прекращении обработки персональных данных,\r\n                                            а&amp;nbsp;также выявление неправомерной обработки персональных данных.\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;\r\n                                        9. Перечень действий, производимых Оператором с&amp;nbsp;полученными персональными\r\n                                        данными\r\n                                    &lt;/h5&gt;\r\n                                    &lt;div class=&quot;ol&quot;&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            9.1. Оператор осуществляет сбор, запись, систематизацию, накопление,\r\n                                            хранение, уточнение (обновление, изменение), извлечение, использование,\r\n                                            передачу (распространение, предоставление, доступ), обезличивание,\r\n                                            блокирование, удаление и&amp;nbsp;уничтожение персональных данных.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            9.2. Оператор осуществляет автоматизированную обработку персональных данных\r\n                                            с&amp;nbsp;получением и/или&amp;nbsp;передачей полученной информации\r\n                                            по&amp;nbsp;информационно-телекоммуникационным сетям или без таковой.\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;10. Трансграничная передача персональных данных&lt;/h5&gt;\r\n                                    &lt;div class=&quot;ol&quot;&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            10.1. Оператор до&amp;nbsp;начала осуществления деятельности\r\n                                            по&amp;nbsp;трансграничной передаче персональных данных обязан уведомить\r\n                                            уполномоченный орган по&amp;nbsp;защите прав субъектов персональных данных\r\n                                            о&amp;nbsp;своем намерении осуществлять трансграничную передачу персональных\r\n                                            данных (такое уведомление направляется отдельно от&amp;nbsp;уведомления\r\n                                            о&amp;nbsp;намерении осуществлять обработку персональных данных).\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            10.2. Оператор до&amp;nbsp;подачи вышеуказанного уведомления, обязан получить\r\n                                            от&amp;nbsp;органов власти иностранного государства, иностранных физических лиц,\r\n                                            иностранных юридических лиц, которым планируется трансграничная передача\r\n                                            персональных данных, соответствующие сведения.\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;11. Конфиденциальность персональных данных&lt;/h5&gt;\r\n                                    &lt;div class=&quot;descr&quot;&gt;\r\n                                        Оператор и&amp;nbsp;иные лица, получившие доступ к&amp;nbsp;персональным данным, обязаны\r\n                                        не&amp;nbsp;раскрывать третьим лицам и&amp;nbsp;не&amp;nbsp;распространять персональные\r\n                                        данные без согласия субъекта персональных данных, если иное\r\n                                        не&amp;nbsp;предусмотрено федеральным законом.\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;row mb-4&quot;&gt;\r\n                                &lt;div class=&quot;col&quot;&gt;\r\n                                    &lt;h5&gt;12. Заключительные положения&lt;/h5&gt;\r\n                                    &lt;div class=&quot;ol&quot;&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            12.1. Пользователь может получить любые разъяснения по&amp;nbsp;интересующим\r\n                                            вопросам, касающимся обработки его персональных данных, обратившись\r\n                                            к&amp;nbsp;Оператору с&amp;nbsp;помощью электронной почты &lt;span class=&quot;link mark owner-email-field&quot; data-scroll-to=&quot;#owner-email-field&quot;&gt;ваша почта&lt;/span&gt;.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            12.2. В&amp;nbsp;данном документе будут отражены любые изменения политики\r\n                                            обработки персональных данных Оператором. Политика действует бессрочно\r\n                                            до&amp;nbsp;замены ее&amp;nbsp;новой версией.\r\n                                        &lt;/div&gt;\r\n                                        &lt;div class=&quot;li&quot;&gt;\r\n                                            12.3. Актуальная версия Политики в&amp;nbsp;свободном доступе расположена\r\n                                            в&amp;nbsp;сети Интернет по&amp;nbsp;адресу &lt;span id=&quot;owner-privacy-url-value&quot; class=&quot;link mark owner-privacy-url-field&quot; data-scroll-to=&quot;#owner-privacy-url-field&quot;&gt;https://вашсайт/privacy&lt;/span&gt;.\r\n                                        &lt;/div&gt;\r\n                                    &lt;/div&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                        &lt;/div&gt;\r\n                    &lt;/div&gt;\r\n                &lt;/div&gt;&lt;p&gt;&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `meta_h1`) VALUES

																				  
(3, 2, 'Privacy Policy', '&lt;p&gt;Privacy Policy&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(4, 1, 'О нас', '&lt;p&gt;О нас&lt;br&gt;&lt;/p&gt;\r\n', '', '', '', ''),
(4, 2, 'About Us', '&lt;p&gt;About Us&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(5, 1, 'Условия соглашения', '&lt;p&gt;\r\n Условия соглашения&lt;/p&gt;\r\n', '', '', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;Terms &amp;amp; Conditions&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(6, 1, 'Информация о доставке', '&lt;p&gt;\r\n Информация о доставке&lt;/p&gt;\r\n', '', '', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;Delivery Information&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(7, 1, 'Политика cookie', 'Мы используем файлы cookie для улучшения работы сайта, анализа его использования и предоставления пользователям персонализированного контента. Мы также используем файлы cookie для рекламы и маркетинга. Вы можете изменить настройки браузера и отказаться от использования файлов cookie. Если вы не согласны с использованием файлов cookie, вы можете прекратить использование нашего сайта. Более подробная информация о файлах cookie и их использовании приведена в &lt;a href=&quot;/privacy&quot; target=&quot;_blank&quot;&gt;нашей политике конфиденциальности&lt;/a&gt;.', '', '', '', ''),
(7, 2, 'Cookie Policy', ' We use cookies to improve website performance, analyze its usage, and provide personalized content to users. We also use cookies for advertising and marketing purposes. You can change your browser settings to refuse the use of cookies. If you do not agree with the use of cookies, you may stop using our website. More detailed information about cookies and how we use them is available in our &lt;a href=&quot;/privacy&quot; target=&quot;_blank&quot;&gt;Privacy Policy&lt;/a&gt;.', '', '', '', '');


-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
																						 
		  


														   

  
															  
  
--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);


-----------------------------------------------------------

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'Russian', 'ru-ru', 'ru_RU.UTF-8,ru_RU,russian', 'gb.png', 'english', 1, 1),
(2, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', '', '', 2, 1);

-----------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Главная'),
(2, 'Товар'),
(3, 'Категория'),
(4, 'По-умолчанию'),
(5, 'Список Производителей'),
(6, 'Аккаунт'),
(7, 'Оформление заказа'),
(8, 'Контакты'),
(9, 'Карта сайта'),
(10, 'Партнерская программа'),
(11, 'Информация'),
(12, 'Сравнение'),
(13, 'Поиск'),
(14, 'Блог'),
(15, 'Категории Блога'),
(16, 'Статьи Блога'),
(17, 'Страница Производителя');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(67, 1, 'carousel.29', 'content_top', 3),
(66, 1, 'slideshow.27', 'content_top', 1),
(65, 1, 'featured.28', 'content_top', 2),
(83, 3, 'banner.30', 'column_left', 1),
(82, 3, 'category', 'column_left', 0),
(74, 14, 'blog_category', 'column_left', 0),
(75, 14, 'blog_featured.33', 'column_left', 1),
(76, 14, 'blog_latest.32', 'content_bottom', 0),
(77, 15, 'blog_category', 'column_left', 0),
(78, 15, 'blog_latest.32', 'column_left', 1),
(79, 15, 'blog_featured.33', 'content_bottom', 0),
(80, 16, 'blog_category', 'column_left', 0),
(81, 16, 'blog_featured.33', 'column_left', 1),
												 
												  
(84, 3, 'featured_article.34', 'column_left', 2),
(85, 3, 'featured_product.35', 'column_left', 3),
(86, 17, 'featured_article.34', 'column_left', 0),
(87, 17, 'featured_product.35', 'column_left', 1),
(88, 2, 'featured_article.34', 'content_bottom', 0);
										

														   


-----------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(42, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
			   
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
							   
							  
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
										 
(57, 14, 0, 'blog/latest'),
(58, 15, 0, 'blog/category'),
(56, 16, 0, 'blog/article'),
(63, 17, 0, 'product/manufacturer/info');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-----------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Сантиметр', 'см'),
(1, 2, 'Centimeter', 'cm'),
(2, 1, 'Миллиметр', 'мм'),
(2, 2, 'Millimeter', 'mm'),
(3, 1, 'Дюйм', 'in'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`, `noindex`) VALUES
(5, 'Politeh corp', 'catalog/demo/htc_logo.jpg', 0, 1),
(6, 'ABCD+', 'catalog/demo/manufacturer/abcd.png', 0, 1),
(7, 'MAMO Kitchen', 'catalog/demo/hp_logo.jpg', 0, 1),
(8, 'Все для семьи', '', 1, 0),
(9, 'TeplyDom', '', 0, 1),
(10, 'С добром', 'catalog/demo/manufacturer/sdobrom.png', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_description`
--

DROP TABLE IF EXISTS `oc_manufacturer_description`;
CREATE TABLE `oc_manufacturer_description` (
  `manufacturer_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`manufacturer_id`, `language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_description`
--

INSERT INTO `oc_manufacturer_description` (`manufacturer_id`, `language_id`, `description`, `meta_description`, `meta_keyword`, `meta_title`, `meta_h1`) VALUES
(7, 1, '', '', '', '', ''),
(7, 2, '', '', '', '', ''),
(5, 1, '', '', '', '', ''),
(5, 2, '', '', '', '', ''),
(9, 1, '', '', '', '', ''),
(9, 2, '', '', '', '', ''),
(8, 1, '', '', '', '', ''),
(8, 2, '', '', '', '', ''),
(10, 1, '', '', '', '', ''),
(10, 2, '', '', '', '', ''),
(6, 1, '', '', '', '', ''),
(6, 2, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,

  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_layout`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_layout`;
CREATE TABLE `oc_manufacturer_to_layout` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
  

																			 
	   
	   
	   
	   
	   
		

														   


-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-------------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

															 
  
--
-- Table structure for table `oc_modification_backup`
--

DROP TABLE IF EXISTS `oc_modification_backup`;
CREATE TABLE `oc_modification_backup` (
  `backup_id` int(11) NOT NULL AUTO_INCREMENT,
  `modification_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `xml` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-------------------------------------------------------------

-- Table structure for table `oc_module`
										
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{"name":"Category","banner_id":"6","width":"182","height":"182","status":"1"}'),
(29, 'Home Page', 'carousel', '{"name":"Home Page","banner_id":"8","width":"130","height":"100","status":"1"}'),
(28, 'Home Page', 'featured', '{"name":"Home Page","product":["43","40","42","30"],"limit":"4","width":"200","height":"200","status":"1"}'),
(27, 'Home Page', 'slideshow', '{"name":"Home Page","banner_id":"7","width":"1140","height":"380","status":"1"}'),
																																																																																									
(31, 'Banner 1', 'banner', '{"name":"Banner 1","banner_id":"6","width":"182","height":"182","status":"1"}'),
(32, 'Последние статьи', 'blog_latest', '{"name":"\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438","limit":"4","width":"200","height":"200","status":"1"}'),
(33, 'Рекомендуемые статьи', 'blog_featured', '{"name":"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438","article_name":"","article":["120","123","125","124"],"limit":"4","width":"200","height":"200","status":"1"}'),
(34, 'Рекомендуемые статьи в товаре, категории и производителе', 'featured_article', '{"name":"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438 \\u0432 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0435, \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435","limit":"4","width":"200","height":"200","status":"1"}'),
(35, 'Рекомендуемые товары в категории и производителе', 'featured_product', '{"name":"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u0432 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435","limit":"4","width":"200","height":"200","status":"1"}');


-----------------------------------------------------------

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-----------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Переключатель'),
(1, 2, 'Radio'),
(2, 1, 'Флажок'),
(2, 2, 'Checkbox'),
(4, 1, 'Текст'),
(4, 2, 'Text'),
(5, 1, 'Список'),
(5, 2, 'Select'),
(6, 1, 'Текстовая область'),
(6, 2, 'Textarea'),
(7, 1, 'Файл'),
(7, 2, 'File'),
(8, 1, 'Дата'),
(8, 2, 'Date'),
(9, 1, 'Время'),
(9, 2, 'Time'),
(10, 1, 'Дата и время'),
(10, 2, 'Date &amp; Time'),
(11, 1, 'Размер'),
(11, 2, 'Size'),
(12, 1, 'Время доставки'),
(12, 2, 'Delivery Date');

-----------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(23, 2, '', 1),
(24, 2, '', 2),
(31, 1, '', 2),
(32, 1, '', 1),
(39, 5, '', 1),
(40, 5, '', 2),
(41, 5, '', 3),
(42, 5, '', 4),
(43, 1, '', 3),
(44, 2, '', 3),
(45, 2, '', 4),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-----------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(23, 1, 2, 'Флажок 1'),
(23, 2, 2, 'Checkbox 1'),
(24, 1, 2, 'Флажок 2'),
(24, 2, 2, 'Checkbox 2'),
(31, 1, 1, 'Средний'),
(31, 2, 1, 'Medium'),
(32, 1, 1, 'Маленький'),
(32, 2, 1, 'Small'),
(39, 1, 5, 'Красный'),
(39, 2, 5, 'Red'),
(40, 1, 5, 'Синий'),
(40, 2, 5, 'Blue'),
(41, 1, 5, 'Зеленый'),
(41, 2, 5, 'Green'),
(42, 1, 5, 'Желтый'),
(42, 2, 5, 'Yellow'),
(43, 1, 1, 'Большой'),
(43, 2, 1, 'Large'),
(44, 1, 2, 'Флажок 3'),
(44, 2, 2, 'Checkbox 3'),
(45, 1, 2, 'Флажок 4'),
(45, 2, 2, 'Checkbox 4'),
(46, 1, 11, 'Маленький'),
(46, 2, 11, 'Small'),
(47, 1, 11, 'Средний'),
(47, 2, 11, 'Medium'),
(48, 1, 11, 'Большой'),
(48, 2, 11, 'Large');

-----------------------------------------------------------

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
																																																																																																																																																																																																																																																																																																											
																																																																																																																																																																																																									

																																																																																																																																																																																																																																																																							 
																																																																																																																																																																																																			 
																																																																																																																																																																																																																								 

														   

  
													   
  
--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
																															
										
										
										
										
										
										
										
										
										

														   

  
													  

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
																																					
																	  

																			
																	  
																	  

														   

  
														 
  
--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

DROP TABLE IF EXISTS `oc_order_shipment`;
CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

DROP TABLE IF EXISTS `oc_shipping_courier`;
CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
  (1, 'dhl', 'DHL'),
  (2, 'fedex', 'Fedex'),
  (3, 'ups', 'UPS'),
  (4, 'royal-mail', 'Royal Mail'),
  (5, 'usps', 'United States Postal Service'),
  (6, 'auspost', 'Australia Post');

-----------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
					 
							   
(2, 1, 'В обработке'),
										  
(3, 1, 'Доставлено'),
(7, 1, 'Отменено'),
(5, 1, 'Сделка завершена'),
						 
				 
													 
(8, 1, 'Возврат'),
								  
(9, 1, 'Отмена и аннулирование'),
								  
(10, 1, 'Неудавшийся'),
			
(11, 1, 'Возмещенный'),
(12, 1, 'Полностью измененный'),
(13, 1, 'Полный возврат'),
(1, 1, 'Ожидание'),
(15, 1, 'Обработано'),
(14, 1, 'Истекло'),
(2, 2, 'Processing'),
(8, 2, 'Denied'),
(11, 2, 'Refunded'),
(3, 2, 'Shipped'),
(10, 2, 'Failed'),
(1, 2, 'Pending'),
(9, 2, 'Canceled Reversal'),
(7, 2, 'Canceled'),
(12, 2, 'Reversed'),
				   
(13, 2, 'Chargeback'),
(5, 2, 'Complete'),
(14, 2, 'Expired'),
				  
	  
(16, 1, 'Анулированный'),
(16, 2, 'Voided'),
(15, 2, 'Processed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
																										  
											   
												   
										  
										   
											   
												   
										  
										   
											   
																									  
										   
											
												
																									  
										   
											
												
																									  
										   
											

														   

  
													   

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`, `noindex`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/demo-ch-01.jpg', 5, 1, 100.0000, 200, 9, '2009-02-03', 146.40000000, 2, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 53, '2009-02-03 16:06:50', '2025-04-18 10:46:31', 1),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/demo-miks-01.jpg', 6, 1, 279.9900, 0, 9, '2009-02-03', 133.00000000, 2, 0.00000000, 0.00000000, 0.00000000, 3, 1, 1, 0, 1, 47, '2009-02-03 16:42:17', '2025-04-18 10:43:39', 1),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/demo-div-01.jpg', 9, 1, 100.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 143, '2009-02-03 16:59:00', '2025-04-18 10:41:46', 1),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/demo-bar-01.jpg', 0, 1, 80.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 3, 1, 1, 0, 1, 56, '2009-02-03 17:00:10', '2025-04-18 10:40:48', 1),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/demo-san-01.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 50, '2009-02-03 17:07:26', '2025-04-18 10:44:58', 1),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/demo-vas-01.jpg', 0, 1, 200.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 54, '2009-02-03 17:08:31', '2025-04-18 10:41:02', 1),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/demo-str-01.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 44, '2009-02-03 18:07:54', '2025-04-18 10:45:42', 1),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 44, '2009-02-03 18:08:31', '2025-04-18 05:40:02', 1),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/demo-sa-01.jpg', 8, 0, 100.0000, 100, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 48, '2009-02-03 18:09:19', '2025-04-18 10:45:14', 1),
(40, 'product 11', '', '', '', '', '', '', '', 966, 5, 'catalog/demo/demo-smart-01.jpg', 8, 1, 101.0000, 0, 9, '2009-02-03', 10.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 218, '2009-02-03 21:07:12', '2025-04-18 10:46:10', 1),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/demo-cup-1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 63, '2009-02-03 21:07:26', '2025-04-18 10:43:05', 1),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/demo-kr-01.jpg', 8, 1, 100.0000, 400, 9, '2009-02-04', 12.50000000, 1, 1.00000000, 2.00000000, 3.00000000, 1, 1, 2, 0, 1, 360, '2009-02-03 21:07:37', '2025-04-18 10:42:24', 0),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/demo-gal-01.jpg', 8, 0, 500.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 190, '2009-02-03 21:07:49', '2025-04-18 10:41:15', 1),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/demo-swim-01.jpg', 8, 1, 1000.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 58, '2009-02-03 21:08:00', '2025-04-18 10:43:24', 1),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/demo-je-01.jpg', 8, 1, 2000.0000, 0, 0, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 49, '2009-02-03 21:08:17', '2025-04-18 10:41:32', 1),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/demo-kar-02.jpg', 10, 1, 1000.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 89, '2009-02-03 21:08:29', '2025-04-18 10:42:09', 1),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/demo-na-01.jpg', 7, 1, 100.0000, 400, 9, '2009-02-03', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 0, 1, 0, 1, 157, '2009-02-03 21:08:40', '2025-04-18 10:44:41', 1),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 994, 5, 'catalog/demo/shoes.jpg', 8, 1, 100.0000, 0, 9, '2009-02-08', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 123, '2009-02-08 17:21:51', '2025-04-18 10:42:48', 1),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/demo-balsam-01.jpg', 0, 1, 199.9900, 0, 9, '2011-04-25', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 242, '2011-04-26 08:57:34', '2025-04-18 10:14:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product`
--

DROP TABLE IF EXISTS `oc_googleshopping_product`;
CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_advertise_google_id`),
  UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-----------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_status`
--

DROP TABLE IF EXISTS `oc_googleshopping_product_status`;
CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-----------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_target`
--

DROP TABLE IF EXISTS `oc_googleshopping_product_target`;
CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`product_id`,`advertise_google_target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-----------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(42, 3, 1, 'Вата'),
(42, 3, 2, 'Сotton wool'),
(43, 2, 1, '1'),
(43, 2, 2, ''),
(43, 4, 1, '8gb'),
(43, 4, 2, ''),
(47, 2, 1, '4'),
(47, 2, 2, ''),
(47, 4, 1, '16GB'),
(47, 4, 2, '');

-----------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `meta_h1`) VALUES
(28, 1, 'Чайник электрический', '&lt;p&gt;Этот электрический чайник - настоящая находка для тех, кто ценит стиль и функциональность. У него лаконичный дизайн с плавными линиями и удобной ручкой, благодаря чему он отлично вписывается как в современную кухню, так и в уютную классику. Быстрый нагрев, надёжная система защиты от перегрева и удобная крышка делают его идеальным спутником утреннего кофе или вечернего чая.&lt;/p&gt;\r\n&lt;p&gt;Чайник доступен сразу в нескольких ярких цветах:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#ff9c00&quot;&gt;оранжевый&lt;/font&gt;&lt;/li&gt;&lt;li&gt;&lt;font color=&quot;#ff0000&quot;&gt;красный&lt;/font&gt;&lt;/li&gt;&lt;li&gt;&lt;font color=&quot;#0000ff&quot;&gt;синий&lt;/font&gt;&lt;/li&gt;&lt;li&gt;&lt;font color=&quot;#00ff00&quot;&gt;зелёный&lt;/font&gt;.&lt;/li&gt;&lt;/ul&gt;Выбирайте тот, который подходит под настроение или интерьер. Хотите акцент? Берите красный. Любите спокойствие - присмотритесь к синему. Каждый цвет делает привычный предмет чуть более живым и личным.\r\n&lt;p&gt;Корпус выполнен из прочного материала с матовой текстурой - он приятно лежит в руке и не боится ежедневной эксплуатации. Объём оптимальный для семьи или компании друзей, а вращающееся основание на 360° делает использование ещё удобнее.&lt;/p&gt;\r\n&lt;p&gt;Этот чайник - не просто техника, а маленькая деталь, которая делает кухню уютнее. Поставили, включили, и уже через пару минут в воздухе аромат любимого напитка.&lt;br&gt;\r\nИ пусть выбор цвета станет началом хорошего утра.&lt;/p&gt;', '', '', '', '', ''),
(28, 2, 'Electric kettle', '&lt;p&gt;This electric kettle is a true find for those who value both style and functionality. With its sleek design, smooth lines, and comfortable handle, it fits perfectly into both modern kitchens and cozy classic interiors. Fast heating, a reliable overheating protection system, and a convenient lid make it the perfect companion for your morning coffee or evening tea.&lt;/p&gt;\r\n\r\n&lt;p&gt;The kettle is available in several vibrant colors:&lt;/p&gt;  \r\n&lt;ul&gt;  \r\n&lt;li&gt;&lt;font color=&quot;#ff9c00&quot;&gt;orange&lt;/font&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;font color=&quot;#ff0000&quot;&gt;red&lt;/font&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;font color=&quot;#0000ff&quot;&gt;blue&lt;/font&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;font color=&quot;#00ff00&quot;&gt;green&lt;/font&gt;&lt;/li&gt;  \r\n&lt;/ul&gt;  \r\n&lt;p&gt;Choose the one that matches your mood or interior. Want a bold accent? Go for red. Prefer calm tones - consider blue. Each color adds a bit of personality and charm to an everyday item.&lt;/p&gt;\r\n\r\n&lt;p&gt;The body is made of durable material with a matte texture - pleasant to the touch and built to withstand daily use. The capacity is perfect for a family or group of friends, and the 360° rotating base adds to the convenience.&lt;/p&gt;\r\n\r\n&lt;p&gt;This kettle is more than just an appliance - it’s a small detail that makes your kitchen feel warmer. Set it up, turn it on, and in just a few minutes the air is filled with the aroma of your favorite drink.  \r\nLet choosing the color be the start of a good morning.&lt;/p&gt;', '', '', '', '', ''),
(29, 1, 'Миксер', '&lt;p&gt;Этот миксер - не просто техника, а настоящий помощник на кухне. Он работает тихо, не трясёт стол и не требует усилий - просто включаешь, и он всё делает за тебя. Хоть взбить сливки, хоть замесить тесто... всё получается с первого раза. Это как будто кто-то надёжный стоит рядом и помогает.&lt;/p&gt;\r\n&lt;p&gt;Корпус аккуратный, гладкий, белый с лёгким блеском. Чаша из нержавейки - не поцарапается, не потемнеет, и всегда выглядит как новая. У миксера нет ничего лишнего - только удобная ручка, плавный переключатель скоростей и крепкое основание. Всё по делу, без показухи.&lt;/p&gt;\r\n&lt;p&gt;Он не занимает много места, легко помещается на любой кухне. А если поставить его в угол на полке - он не выбивается из интерьера, а будто продолжает его. Такой миксер не кричит о себе, он просто делает свою работу, день за днём.&lt;/p&gt;\r\n&lt;p&gt;Подходит как для начинающих, так и для тех, кто давно дружит с тестом. Даже если вы печёте раз в месяц - он всё равно будет рад помочь. А если часто - вы точно оцените, насколько он бережно и равномерно всё перемешивает, не оставляя комочков.&lt;/p&gt;\r\n&lt;p&gt;Это тот случай, когда техника не раздражает, не шумит, не капризничает - а просто приносит удовольствие. Такой миксер - это про тишину, порядок и удовольствие от простых вещей.&lt;/p&gt;', '', '', '', '', ''),
(29, 2, 'Mixer', '&lt;p&gt;This mixer isn’t just a kitchen appliance - it’s a real helper. It runs quietly, doesn’t shake the counter, and doesn’t require effort - just turn it on and it does the work for you. Whether you’re whipping cream or kneading dough, everything turns out right the first time. It’s like having a reliable partner by your side.&lt;/p&gt;  \r\n&lt;p&gt;The body is sleek, smooth, and white with a subtle sheen. The stainless steel bowl won’t scratch or darken and always looks brand new. The mixer has nothing extra - just a comfortable handle, a smooth speed control, and a sturdy base. Everything has a purpose - no frills, just function.&lt;/p&gt;  \r\n&lt;p&gt;It doesn’t take up much space and fits easily in any kitchen. And if you put it in the corner of a shelf, it won’t stand out - it’ll blend in like it belongs. This mixer doesn’t scream for attention, it just quietly gets the job done, day after day.&lt;/p&gt;  \r\n&lt;p&gt;Perfect for beginners and seasoned bakers alike. Even if you bake once a month - it’s always ready to help. And if you bake often, you’ll appreciate how gently and evenly it mixes, leaving no lumps behind.&lt;/p&gt;  \r\n&lt;p&gt;This is the kind of appliance that doesn’t annoy, doesn’t make noise, doesn’t act up - it simply brings joy. This mixer is all about quiet, order, and the pleasure of simple things.&lt;/p&gt;', '', '', '', '', ''),
(30, 1, 'Диван', '&lt;p&gt;Уютный, стильный и просто надёжный - этот диван создан, чтобы стать любимым местом в доме. Мягкая обивка в тёплом кофейном оттенке впишется в любой интерьер - от минимализма до классики. Он достаточно компактный, чтобы не загромождать комнату, и при этом - безумно удобный, чтобы на нём хотелось проводить всё свободное время.&lt;/p&gt;\r\n&lt;p&gt;Подушки и валики идут в комплекте, они добавляют уюта и поддерживают спину и руки во время отдыха. А прочный каркас и плотная ткань делают этот диван не только красивым, но и долговечным - он не просядет и не потеряет форму через пару месяцев.&lt;/p&gt;\r\n&lt;p&gt;Идеальный выбор для:&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n&lt;p&gt;гостиной, где собирается семья&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;офиса или приёмной в современном стиле&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;съёмной квартиры, где хочется уюта без лишних затрат&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;тех, кто любит сочетание простоты и комфорта&lt;/p&gt;\r\n&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;Просто поставь и отдыхай.&lt;/p&gt;&lt;p&gt;&lt;/p&gt;\r\n', '', '', '', '', ''),
(30, 2, 'Sofa', '&lt;p&gt;Cozy, stylish, and simply reliable - this sofa is made to become your favorite spot at home. The soft upholstery in a warm coffee shade fits perfectly into any interior - from minimalism to classic. It’s compact enough not to clutter the room, yet incredibly comfortable so you\'ll want to spend all your free time on it.&lt;/p&gt;  \r\n&lt;p&gt;Pillows and bolsters come included, adding extra coziness and supporting your back and arms while you relax. A sturdy frame and durable fabric make this sofa not just beautiful but long-lasting - it won’t sag or lose its shape after a couple of months.&lt;/p&gt;  \r\n&lt;p&gt;An ideal choice for:&lt;/p&gt;  \r\n&lt;ul&gt;&lt;li&gt;\r\n&lt;p&gt;a living room where the whole family gathers&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;a modern-style office or waiting area&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;a rental apartment where you want coziness without overspending&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;those who love a balance of simplicity and comfort&lt;/p&gt;\r\n&lt;/li&gt;&lt;/ul&gt;  \r\n&lt;p&gt;Just place it and relax.&lt;/p&gt;', '', '', '', '', ''),
(31, 1, 'Барный стул', 'Натуральное дерево в сочетании с металлическими элементами делает этот барный стул универсальным для любого интерьера: от скандинавского до лофта. Удобная круглая посадка и опорное кольцо для ног добавляют комфорта, а прочная конструкция гарантирует устойчивость. Такой стул отлично подойдёт для кухни, домашнего бара или студийного пространства - он не только удобен, но и визуально лёгкий, благодаря своей лаконичной форме.', '', '', '', '', ''),
(31, 2, 'Bar stool', '&lt;p&gt;Natural wood combined with metal elements makes this bar stool a versatile piece for any interior — from Scandinavian to loft style. The comfortable round seat and footrest ring add extra comfort, while the sturdy construction ensures stability. This stool is perfect for a kitchen, home bar, or studio space — it\'s not only practical, but also visually light thanks to its clean and minimal design.&lt;/p&gt;', '', '', '', '', ''),
(32, 1, 'Сандали', '&lt;p&gt;Эти сандалии - то самое сочетание комфорта и простоты, которое так нужно летом. Они дышат, не натирают, не устают в пути и подходят почти под любой наряд: от шорт и футболки до льняных брюк и рубашки. Если вы ищете пару обуви на каждый день - перед вами отличный вариант.&lt;/p&gt;\r\n&lt;p&gt;Материалы подобраны с умом. Внутренняя поверхность - мягкая и приятная к стопе, повторяет анатомическую форму, а внешняя часть -износостойкая, не боится царапин и легкой влаги. А ещё эти сандалии легко чистятся - просто протёр тряпкой и готово.&lt;/p&gt;\r\n&lt;p&gt;Регулируемые ремешки с пряжками позволяют подогнать посадку под любую ногу - плотно, но без давления. А задняя фиксация на пятке делает шаги уверенными - обувь остаётся на месте, даже если приходится пройтись активнее обычного.&lt;/p&gt;\r\n&lt;p&gt;Подошва не скользит, хорошо амортизирует и делает ходьбу мягкой, что особенно важно в городе. Даже при длительной носке вы не почувствуете усталости. Это не просто пляжный вариант, это полноценная обувь на каждый день лета.&lt;/p&gt;\r\n&lt;p&gt;Плюсы, на которые стоит обратить внимание:&lt;/p&gt;\r\n&lt;ol&gt;&lt;li&gt;\r\n&lt;p&gt;&lt;b&gt;Анатомическая стелька&lt;/b&gt; - поддерживает стопу и равномерно распределяет нагрузку&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&lt;b&gt;Натуральные материалы&lt;/b&gt; - дышащая внутренняя отделка и прочная внешняя часть&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&lt;b&gt;Регулировка по стопе&lt;/b&gt; - три ремешка с пряжками&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&lt;b&gt;Устойчивая подошва&lt;/b&gt; с хорошим сцеплением&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&lt;b&gt;Универсальный дизайн&lt;/b&gt; - подойдёт под одежду в разных стилях&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&lt;b&gt;Удобство каждый день&lt;/b&gt; - проверено в жару, на прогулке и даже в дороге&lt;/p&gt;\r\n&lt;/li&gt;&lt;/ol&gt;\r\n&lt;p&gt;Если вы ищете обувь, которая не подведёт летом - эти сандалии точно заслуживают места в гардеробе. Надел и пошёл. Без дискомфорта, без перегрева, просто в своё удовольствие.&lt;/p&gt;', '', '', '', '', ''),
(32, 2, 'Sandals', '&lt;p&gt;These sandals are the perfect blend of comfort and simplicity that you need in the summer. They’re breathable, don’t cause chafing, won’t tire your feet, and go with almost any outfit - from shorts and a T-shirt to linen trousers and a shirt. If you’re looking for everyday footwear, this is a great option.&lt;/p&gt;  \r\n&lt;p&gt;The materials are thoughtfully chosen. The inner surface is soft and pleasant to the foot, following its natural shape, while the outer part is durable, scratch-resistant, and can handle light moisture. Plus, these sandals are easy to clean - just wipe them down and you’re good to go.&lt;/p&gt;  \r\n&lt;p&gt;Adjustable buckle straps let you customize the fit to your foot - snug but not tight. The back strap gives extra support, keeping the sandals securely in place even if your day gets active.&lt;/p&gt;  \r\n&lt;p&gt;The sole is non-slip, cushioned, and provides soft steps - especially important for city walking. Even after hours of wear, your feet won’t feel tired. These aren’t just for the beach - they’re real everyday summer shoes.&lt;/p&gt;  \r\n&lt;p&gt;Key benefits to note:&lt;/p&gt;  \r\n&lt;ol&gt;&lt;li&gt;&lt;p&gt;&lt;b&gt;Anatomical insole&lt;/b&gt; - supports the foot and evenly distributes pressure&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&lt;b&gt;Natural materials&lt;/b&gt; - breathable inner lining and durable outer finish&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&lt;b&gt;Adjustable fit&lt;/b&gt; - three buckle straps for a secure hold&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&lt;b&gt;Stable sole&lt;/b&gt; with excellent grip&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&lt;b&gt;Versatile design&lt;/b&gt; - works with various styles of clothing&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&lt;b&gt;Everyday comfort&lt;/b&gt; - tested in heat, on long walks, and on the go&lt;/p&gt;&lt;/li&gt;&lt;/ol&gt;  \r\n&lt;p&gt;If you’re looking for sandals that won’t let you down this summer - these are a must-have. Slip them on and go. No discomfort, no overheating, just pure comfort and freedom.&lt;/p&gt;', '', '', '', '', ''),
(33, 1, 'Ваза', '&lt;div&gt;Деревянная ваза - это не просто элемент декора, а настоящее ощущение тепла и уюта в интерьере. Она отлично смотрится как сама по себе, так и с сухоцветами или веточками, добавляя комнате природную текстуру и спокойствие. Такая ваза подходит для любой комнаты - от кухни до спальни - и легко вписывается как в современный, так и в классический стиль.&lt;/div&gt;\r\n', '', '', '', '', ''),
(33, 2, 'Vase', '&lt;p&gt;A wooden vase is more than just a decorative element - it brings a true sense of warmth and coziness to the interior. It looks beautiful both on its own and with dried flowers or branches, adding natural texture and a calming presence to the room. This type of vase fits perfectly in any space - from the kitchen to the bedroom - and blends easily with both modern and classic styles.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(34, 1, 'Туфли', '&lt;div&gt;\r\n &lt;p&gt;Воплощение уверенности и женственности. Эффектный силуэт с изящной шпилькой и платформой визуально вытягивает ноги и добавляет образу выразительности. Они идеально подойдут для особого случая, вечеринки или выхода, где нужно блистать.&lt;/p&gt;\r\n&lt;p&gt;Материал смотрится дорого и стильно - лёгкий матовый блеск подчёркивает форму и делает туфли заметными, но без лишней вычурности. Анатомический подъем и платформа под пальцами помогают распределить нагрузку, так что туфли не только эффектные, но и более удобные, чем могут показаться на первый взгляд.&lt;/p&gt;\r\n&lt;p&gt;Благодаря классическому чёрному цвету эти туфли легко сочетаются с платьями, костюмами, юбками и даже джинсами - они универсальны, но при этом не теряются на фоне образа. Это обувь, которая подчёркивает характер и делает походку уверенной.&lt;/p&gt;\r\n&lt;p&gt;Такая пара обязательно должна быть в гардеробе, потому что иногда нужно добавить в день немного высоты и блеска. Эти туфли - для тех, кто любит быть в центре внимания и не боится шагать громко.&lt;/p&gt;&lt;/div&gt;\r\n', '', '', '', '', ''),
(34, 2, 'Heels', '&lt;div&gt;  \r\n&lt;p&gt;The embodiment of confidence and femininity. With their striking silhouette, graceful stiletto heel, and platform, these heels visually elongate the legs and add boldness to any look. They’re perfect for special occasions, parties, or nights out when you want to shine.&lt;/p&gt;  \r\n&lt;p&gt;The material looks elegant and refined - a subtle matte sheen enhances the shape and makes the shoes stand out without being over-the-top. An anatomical arch and forefoot platform help distribute pressure, making these heels more comfortable than they appear at first glance.&lt;/p&gt;  \r\n&lt;p&gt;Thanks to their classic black color, these heels pair easily with dresses, suits, skirts, and even jeans - they’re versatile yet never fade into the background. This is the kind of footwear that shows character and brings confidence to your walk.&lt;/p&gt;  \r\n&lt;p&gt;Every wardrobe deserves a pair like this, because sometimes you just need a little extra height and sparkle in your day. These heels are made for those who love to stand out and aren’t afraid to step boldly.&lt;/p&gt;  \r\n&lt;/div&gt;', '', '', '', '', ''),
(35, 1, 'Товар 8', '&lt;p&gt;Товар 8&lt;/p&gt;\r\n', '', '', '', '', ''),
(35, 2, 'Product 8', '&lt;p&gt;Product 8&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(36, 1, 'Сапоги', '&lt;p&gt;Эти чёрные ботильоны - идеальное сочетание комфорта и стиля. Устойчивый каблук, плотная подошва и мягкая посадка делают их отличным выбором для повседневной носки в прохладное время года. Эластичные вставки по бокам облегчают надевание, а лаконичный дизайн легко сочетается как с джинсами, так и с платьем. Надёжная пара на каждый день, которая не подведёт.&lt;/p&gt;', '', '', '', '', ''),
(36, 2, 'Boots', '&lt;p&gt;These black ankle boots are the perfect blend of comfort and style. A sturdy heel, durable sole, and soft fit make them a great choice for everyday wear during the cooler seasons. Elastic side panels make them easy to slip on, and the minimalist design pairs effortlessly with both jeans and dresses. A reliable everyday pair that won’t let you down.&lt;/p&gt;', '', '', '', '', ''),
(40, 1, 'Умная ложка', '&lt;h3&gt;&lt;strong&gt;Умная ложка &quot;SpoonSync&quot; - ест с умом!&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;Это не просто столовый прибор, а мини-компьютер в твоей руке. &lt;strong&gt;SpoonSync&lt;/strong&gt; считает калории, отслеживает скорость еды и мягко напоминает, когда пора остановиться. Она синхронизируется с твоим телефоном и знает, сколько ты уже ел, что именно и с каким настроением.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Особенности SpoonSync:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol&gt;&lt;li&gt;\r\n&lt;p&gt;&lt;strong&gt;Датчик веса и температуры&lt;/strong&gt; - точно знает, что ты ешь и сколько.&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&lt;strong&gt;Вибро-напоминание&lt;/strong&gt; - ешь слишком быстро? Ложка аккуратно завибрирует и напомнит: &quot;Потихоньку!&quot;&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&lt;strong&gt;Эмоциональный ИИ&lt;/strong&gt; - если ты нервничаешь и жуешь без остановки, ложка подскажет: &quot;Может, сначала выдохнем?&quot;&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&lt;strong&gt;Режим &quot;Бабушки&quot;&lt;/strong&gt; - хвалит за каждую ложку: &quot;Умничка! Так держать!&quot;&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&lt;strong&gt;Блокировка переедания&lt;/strong&gt; - при попытке четвёртого десерта ложка скажет: &quot;А может, чаёк?&quot; и перестанет подавать еду :)&lt;/p&gt;\r\n&lt;/li&gt;&lt;/ol&gt;\r\n&lt;p&gt;В комплекте идёт приложение, в котором можно выбрать режим:&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n&lt;p&gt;&quot;Фитнес&quot;&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&quot;Без угрызений совести&quot;&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&quot;Новый год, отстаньте&quot;&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;&quot;Я сегодня заслужил&quot;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;', '', '', '', '', ''),
(40, 2, 'Smart spoon', '&lt;h3&gt;&lt;strong&gt;Smart Spoon &quot;SpoonSync&quot; – eating with intelligence!&lt;/strong&gt;&lt;/h3&gt;  \r\n&lt;p&gt;This isn’t just a utensil — it’s a mini computer in your hand. &lt;strong&gt;SpoonSync&lt;/strong&gt; counts calories, tracks your eating speed, and gently reminds you when it’s time to slow down. It syncs with your phone and knows how much you’ve eaten, what you’re eating, and even your mood while eating.&lt;/p&gt;  \r\n\r\n&lt;p&gt;&lt;strong&gt;Key features of SpoonSync:&lt;/strong&gt;&lt;/p&gt;  \r\n&lt;ol&gt;  \r\n&lt;li&gt;&lt;p&gt;&lt;strong&gt;Weight and temperature sensor&lt;/strong&gt; – knows exactly what you’re eating and how much.&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&lt;strong&gt;Vibration reminder&lt;/strong&gt; – eating too fast? The spoon will gently vibrate and suggest: &quot;Slow down!&quot;&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&lt;strong&gt;Emotional AI&lt;/strong&gt; – if you\'re anxious and chewing nonstop, the spoon might ask: &quot;How about a deep breath first?&quot;&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&lt;strong&gt;“Grandma” mode&lt;/strong&gt; – praises every bite: &quot;Well done! Keep it up!&quot;&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&lt;strong&gt;Overeating lock&lt;/strong&gt; – going for a fourth dessert? The spoon says: &quot;Maybe a cup of tea instead?&quot; and stops serving food :)&lt;/p&gt;&lt;/li&gt;  \r\n&lt;/ol&gt;  \r\n\r\n&lt;p&gt;The set comes with an app where you can choose your mode:&lt;/p&gt;  \r\n&lt;ul&gt;  \r\n&lt;li&gt;&lt;p&gt;&quot;Fitness&quot;&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&quot;Guilt-free eating&quot;&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&quot;It\'s New Year\'s, leave me alone&quot;&lt;/p&gt;&lt;/li&gt;  \r\n&lt;li&gt;&lt;p&gt;&quot;I earned it today&quot;&lt;/p&gt;&lt;/li&gt;  \r\n&lt;/ul&gt;', '', '', '', '', ''),
(41, 1, 'Кружка с необычным дизайном', '    &lt;p&gt;Представляем вашему вниманию уютную кружку с необычным принтом, которая поднимет настроение каждое утро. Это идеальный подарок для друзей, близких или даже себя любимого. Кружка сделана из качественной керамики и прослужит долго, радуя вас и ваших близких.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Размер кружки оптимален для любимого напитка, будь то ароматный кофе, чай или горячий шоколад. Яркий и забавный принт не выгорает, а сама кружка отлично моется в посудомоечной машине. С этой кружкой ваше утро всегда будет добрым.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Этот товар не только практичен, но и отлично смотрится на рабочем столе или кухне. Добавьте частичку тепла и уюта в повседневную жизнь вместе с нашей фирменной кружкой. А еще ей можно хвастаться в социальных сетях!&lt;/p&gt;\r\n\r\n    &lt;p&gt;Покупайте прямо сейчас и радуйте себя и своих близких яркими эмоциями каждый день!&lt;/p&gt;', '', '', '', '', ''),
(41, 2, 'A mug with a unique design', '&lt;p&gt;Introducing a cozy mug with a unique print that’s sure to brighten your morning. It’s the perfect gift for friends, loved ones, or even yourself. Made from high-quality ceramic, this mug is built to last and will bring joy to you and those around you.&lt;/p&gt;\r\n\r\n&lt;p&gt;The size is just right for your favorite drink, whether it’s aromatic coffee, tea, or hot chocolate. The vibrant, fun print doesn’t fade, and the mug is dishwasher-safe. With this mug, your morning is guaranteed to start on a positive note.&lt;/p&gt;\r\n\r\n&lt;p&gt;This item is not only practical, but also looks great on your desk or kitchen counter. Add a touch of warmth and comfort to your everyday routine with our signature mug. And yes - it’s totally post-worthy on social media!&lt;/p&gt;\r\n\r\n&lt;p&gt;Order now and treat yourself and your loved ones to bright emotions every single day!&lt;/p&gt;', '', '', '', '', ''),
(42, 1, 'Кресло', '&lt;p&gt;Это кресло - уют с первой посадки. Мягкое, широкое, с аккуратной подушкой и удобными подлокотниками. Хочешь почитать, поработать, просто посидеть в тишине - самое оно. Выглядит стильно, не перегружает интерьер и сразу добавляет уюта.&lt;/p&gt;\r\n&lt;p&gt;Ножки - металл с золотым оттенком, смотрятся легко, но держат крепко. Цвета тоже на высоте - бежевый для спокойных тонов или розовый, если хочется чего-то свежего и необычного. И да, вживую оно выглядит даже лучше, чем на фото - проверено.&lt;/p&gt;\r\n&lt;p&gt;Идеально подойдёт для:&lt;/p&gt;\r\n&lt;ul&gt;&lt;li&gt;\r\n&lt;p&gt;чтения в тёплом пледе&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;утреннего кофе с подкастом&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;вечерних посиделок с сериалами&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;уютного уголка в спальне или гостиной&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;фотогеничного фона для сторис&lt;/p&gt;\r\n&lt;/li&gt;&lt;/ul&gt;\r\n&lt;p&gt;Ставь, садись - и отдыхай.&lt;/p&gt;&lt;br&gt;', '', '', '', '', ''),
(42, 2, 'Armchair', '&lt;p&gt;This armchair is pure comfort from the very first sit. Soft, wide, with a neat cushion and comfy armrests. Whether you want to read, work, or just sit quietly - it’s perfect. It looks stylish, doesn’t clutter the space, and instantly adds a cozy vibe to the room.&lt;/p&gt;  \r\n&lt;p&gt;The legs are metal with a golden finish - light in appearance but strong and stable. The colors are spot on too - beige for a calm, neutral mood or pink if you’re after something fresh and unique. And yes, it actually looks even better in real life than in the photos - tested and approved.&lt;/p&gt;  \r\n&lt;p&gt;Perfect for:&lt;/p&gt;  \r\n&lt;ul&gt;&lt;li&gt;\r\n&lt;p&gt;reading wrapped in a warm blanket&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;morning coffee with a podcast&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;evening binge-watching sessions&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;a cozy corner in your bedroom or living room&lt;/p&gt;\r\n&lt;/li&gt;&lt;li&gt;\r\n&lt;p&gt;a picture-perfect background for stories&lt;/p&gt;\r\n&lt;/li&gt;&lt;/ul&gt;  \r\n&lt;p&gt;Set it down, sit back - and relax.&lt;/p&gt;', '', '', '', '', ''),
(43, 1, 'Галстук', '&lt;p&gt;Этот галстук - отличный способ добавить яркий акцент в образ, не перегружая его. Нежный голубой оттенок &lt;b&gt;с узором в стиле пейсли&lt;/b&gt; выглядит свежо и стильно, идеально подходя как для офиса, так и для более торжественных случаев. Он хорошо сочетается с классической белой или светло-голубой рубашкой и тёмным костюмом.&lt;/p&gt;\r\n&lt;p&gt;&lt;b&gt;Ткань гладкая&lt;/b&gt;, с лёгким благородным блеском, а узор добавляет живости, сохраняя при этом строгость формы. Ширина галстука универсальная - не слишком узкий и не широкий, что делает его актуальным вне зависимости от трендов.&lt;/p&gt;\r\n&lt;p&gt;Такой аксессуар подойдёт и для деловой встречи, и для свадьбы, и для подарка - потому что&lt;i&gt; стиль всегда в цене&lt;/i&gt;.&lt;/p&gt;', '', '', '', '', ''),
(43, 2, 'Tie', '&lt;p&gt;This tie is a great way to add a bold accent to your outfit without overwhelming it. The soft blue shade &lt;b&gt;with a paisley pattern&lt;/b&gt; looks fresh and stylish, making it perfect for both the office and more formal occasions. It pairs well with a classic white or light blue shirt and a dark suit.&lt;/p&gt;  \r\n&lt;p&gt;&lt;b&gt;The fabric is smooth&lt;/b&gt; with a subtle elegant sheen, and the pattern adds vibrancy while maintaining a refined look. The width of the tie is universal - not too slim and not too wide - making it relevant regardless of trends.&lt;/p&gt;  \r\n&lt;p&gt;This accessory is suitable for business meetings, weddings, or as a thoughtful gift - because &lt;i&gt;style never goes out of fashion&lt;/i&gt;.&lt;/p&gt;', '', '', '', '', ''),
(44, 1, 'Купальные шорты', '&lt;div&gt;&lt;p&gt;Яркие, удобные и просто незаменимые на отдыхе - эти купальные шорты созданы для тех, кто ценит стиль даже на пляже. Плотная, но лёгкая ткань быстро сохнет и не стесняет движений, а резинка с шнурком надёжно фиксирует посадку.&lt;/p&gt;&lt;/div&gt;\r\n', '', '', '', '', ''),
(44, 2, 'Swim shorts', '&lt;div&gt;&lt;p&gt;Bright, comfortable, and simply essential for any vacation - these swim shorts are made for those who value style even at the beach. The fabric is dense yet lightweight, dries quickly, and doesn’t restrict movement, while the elastic waistband with a drawstring ensures a secure fit.&lt;/p&gt;&lt;/div&gt;', '', '', '', '', ''),
(45, 1, 'Джинсы', '&lt;p&gt;Просто &lt;b&gt;классические&lt;/b&gt;, мужские, с нормальной посадкой и удобными карманами - всё как ты любишь.&lt;/p&gt;\r\n&lt;p&gt;Ткань плотная, но не дубовая - комфортно с первого дня. Не натирают, не висят мешком и не тянутся, как лосины. Идут под всё: футболка, рубашка, худи - без разницы. Можно носить на работу, в поездку или просто по делам.&lt;/p&gt;\r\n&lt;p&gt;Короче, джинсы для тех, кто не хочет заморачиваться, но хочет выглядеть нормально. Такие - на каждый день. &lt;b&gt;Надел и пошёл.&lt;/b&gt;&lt;/p&gt;', '', '', '', '', ''),
(45, 2, 'Jeans', '&lt;p&gt;Just &lt;b&gt;classic&lt;/b&gt; men’s jeans with a regular fit and comfortable pockets - exactly what you’re looking for.&lt;/p&gt;  \r\n&lt;p&gt;The fabric is dense but not stiff - comfortable from day one. They don’t chafe, don’t hang like a sack, and don’t stretch out like leggings. Go with anything: t-shirt, shirt, hoodie - it doesn’t matter. You can wear them to work, on a trip, or just for everyday errands.&lt;/p&gt;  \r\n&lt;p&gt;In short, these jeans are for those who don’t want to overthink it but still want to look good. Everyday kind of jeans. &lt;b&gt;Put them on and go.&lt;/b&gt;&lt;/p&gt;', '', '', '', '', ''),
(46, 1, 'Кардиган женский', '&lt;p&gt;Женский кардиган - это базовая вещь, которая спасает в прохладную погоду и делает образ уютным. Он легко надевается поверх футболки, блузки или платья, добавляя мягкости и тепла. Такой кардиган незаменим на работе, в поездке или просто дома на диване.&lt;/p&gt;\r\n&lt;p&gt;Модель сидит свободно - ничего не стягивает, не мешает движениям. Кардиган хорошо сочетается с повседневной одеждой и может стать акцентом в образе, если подобрать подходящий цвет. Это идеальный вариант для тех, кто ценит комфорт и стиль без лишней строгости.&lt;/p&gt;\r\n&lt;p&gt;Уход за вещью простой - постирал, высушил и снова надел. Он быстро становится любимым, потому что в нем просто удобно. А еще - он подходит под любое настроение, от &quot;хочу завернуться и пить чай&quot; до &quot;собираюсь в город по делам&quot;.&lt;/p&gt;', '', '', '', '', ''),
(46, 2, 'Women\'s cardigan', '&lt;p&gt;A women\'s cardigan is a wardrobe essential that saves the day in chilly weather and adds a cozy touch to any outfit. It’s easy to throw on over a T-shirt, blouse, or dress, bringing softness and warmth. This cardigan is perfect for work, travel, or simply lounging on the couch at home.&lt;/p&gt;  \r\n&lt;p&gt;The fit is relaxed - nothing pulls or restricts movement. It pairs well with everyday clothing and can even become a style accent if you choose the right color. It’s an ideal option for those who value comfort and style without unnecessary fuss.&lt;/p&gt;  \r\n&lt;p&gt;Care is simple - wash it, dry it, and wear it again. It quickly becomes a favorite because it’s just so comfortable. And it suits any mood - whether you\'re in a &quot;wrap up and sip tea&quot; kind of day or getting ready to head out into the city.&lt;/p&gt;', '', '', '', '', ''),
(47, 1, 'Подарочный набор', '&lt;p&gt;Этот подарочный набор &quot;Для кухни и настроения&quot; - настоящий праздник уюта и заботы в одном комплекте. Он включает в себя стильную кружку, фартук и повязку на голову - все элементы выполнены в едином дизайне, что делает набор не только практичным, но и очень фотогеничным.&lt;/p&gt;\r\n&lt;p&gt;Фартук лёгкий и удобный, с регулировкой по шее и завязками на талии - подойдёт любой фигуре. Повязка мягко держит волосы и добавляет образу игривости, а кружка из качественной керамики станет любимой для утреннего кофе или вечернего чая.&lt;/p&gt;\r\n&lt;p&gt;Такой набор идеально подойдёт в подарок - для мамы, подруги, коллеги или просто для себя любимой. Он создаёт настроение даже в самой обычной кухне и превращает рутину в маленький ритуал радости.&lt;/p&gt;&lt;p&gt;&lt;/p&gt;\r\n', '', '', '', '', ''),
(47, 2, 'Gift set', '&lt;p&gt;This gift set &quot;For the Kitchen and the Mood&quot; is a true celebration of comfort and care in one charming package. It includes a stylish mug, an apron, and a headband - all designed in a matching style, making the set not only practical but also incredibly photogenic.&lt;/p&gt;  \r\n&lt;p&gt;The apron is lightweight and comfortable, with an adjustable neck strap and waist ties - it fits any body shape. The soft headband keeps hair in place and adds a playful touch to the look, while the high-quality ceramic mug is perfect for morning coffee or evening tea.&lt;/p&gt;  \r\n&lt;p&gt;This set makes a lovely gift - for your mom, a friend, a coworker, or simply for yourself. It brings a cozy vibe even to the most ordinary kitchen and turns daily routines into little moments of joy.&lt;/p&gt;', '', '', '', '', ''),
(48, 1, 'Кроссовки', '&lt;p&gt;&lt;b&gt;Готовы к новым пробежкам?&lt;/b&gt; Наши беговые кроссовки созданы для тех, кто не сидит на месте. Лёгкие, дышащие и удобные - они идеально подойдут как для утренних забегов по парку, так и для интенсивных тренировок на стадионе. Специальная подошва смягчает удар при каждом шаге, а амортизация помогает сохранить энергию на длинных дистанциях.&lt;/p&gt;\r\n&lt;p&gt;&lt;b&gt;Верх кроссовок&lt;/b&gt; выполнен из воздухопроницаемой сетки, которая обеспечивает отличную вентиляцию и комфорт в любую погоду. Шнуровка плотно фиксирует стопу, а анатомическая форма поддерживает естественное положение ноги при движении. Эти кроссовки подойдут как новичкам, так и опытным бегунам.&lt;/p&gt;\r\n&lt;p&gt;Дизайн сочетает в себе функциональность и стиль - в таких кроссовках можно не только тренироваться, но и спокойно пойти на прогулку по городу. А благодаря качественным материалам и продуманной конструкции, они прослужат вам не один сезон.&lt;/p&gt;\r\n&lt;p&gt;&lt;b&gt;Проверьте сами&lt;/b&gt; - надевайте и бегите навстречу новым результатам!&lt;/p&gt;', '', '', '', '', ''),
(48, 2, 'Sneakers', '&lt;p&gt;&lt;b&gt;Ready for a new run?&lt;/b&gt; Our running sneakers are made for those who are always on the move. Lightweight, breathable, and comfortable - they’re perfect for morning jogs in the park or intense training at the stadium. The special sole softens impact with every step, while the cushioning helps conserve energy over long distances.&lt;/p&gt;  \r\n&lt;p&gt;&lt;b&gt;The upper part of the sneakers&lt;/b&gt; is made from breathable mesh that provides excellent ventilation and comfort in any weather. The laces securely hold the foot in place, and the anatomical shape supports the natural movement of your foot. These sneakers are great for both beginners and experienced runners.&lt;/p&gt;  \r\n&lt;p&gt;The design combines functionality and style - you can wear them for workouts or just for a walk around the city. And thanks to high-quality materials and thoughtful construction, they’ll last you more than one season.&lt;/p&gt;  \r\n&lt;p&gt;&lt;b&gt;See for yourself&lt;/b&gt; - put them on and run toward new achievements!&lt;/p&gt;', '', '', '', '', ''),
(49, 1, 'Увлажняющий бальзам для губ', '    &lt;p&gt;Ищете что-то, что освежит ваш образ и добавит уверенности? Наш увлажняющий бальзам для губ - именно то, что нужно. Он легко наносится, приятно пахнет и не оставляет липкости. Благодаря компактному размеру, он всегда под рукой - в сумке, кармане или косметичке.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Формула с натуральными маслами и витаминами заботится о нежной коже губ, защищает от ветра и холода, а также придаёт лёгкий блеск. Это отличный выбор для повседневного ухода, особенно в холодное или сухое время года.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Бальзам выпускается в стильной упаковке, которая приятно смотрится и в руках, и на полке. Идеален как для себя, так и в качестве небольшого подарка - универсальный, симпатичный и полезный.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Попробуйте и почувствуйте разницу уже с первого применения!&lt;/p&gt;', '', '', '', '', ''),
(49, 2, 'Moisturizing lip balm', '&lt;p&gt;Looking for something to refresh your look and boost your confidence? Our moisturizing lip balm is just what you need. It applies easily, smells pleasant, and leaves no sticky feeling. Thanks to its compact size, it’s always within reach — in your bag, pocket, or makeup pouch.&lt;/p&gt;\r\n\r\n&lt;p&gt;The formula, enriched with natural oils and vitamins, gently cares for the delicate skin of your lips, protects against wind and cold, and adds a subtle shine. It’s a great choice for daily care, especially during cold or dry seasons.&lt;/p&gt;\r\n\r\n&lt;p&gt;The balm comes in sleek, stylish packaging that looks great both in your hands and on your shelf. It’s perfect for yourself or as a small gift — universal, cute, and practical.&lt;/p&gt;\r\n\r\n&lt;p&gt;Try it and feel the difference from the very first use!&lt;/p&gt;', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(440, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(439, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(438, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-----------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2433, 45, 'catalog/demo/demo-je-02.jpg', 0),
(2434, 45, 'catalog/demo/demo-je-03.jpg', 0),
(2435, 30, 'catalog/demo/demo-div-02.jpg', 0),
(2436, 30, 'catalog/demo/demo-div-03.jpg', 0),
(2437, 30, 'catalog/demo/demo-div-04.jpg', 0),
(2438, 46, 'catalog/demo/demo-kar-01.jpg', 0),
(2439, 46, 'catalog/demo/demo-kar-03.jpg', 0),
(2440, 42, 'catalog/demo/demo-kr-02.jpg', 0),
(2441, 44, 'catalog/demo/demo-swim-02.jpg', 0),
(2442, 44, 'catalog/demo/demo-swim-03.jpg', 0),
(2443, 44, 'catalog/demo/demo-swim-04.jpg', 0),
(2444, 44, 'catalog/demo/demo-swim-05.jpg', 0),
(2445, 36, 'catalog/demo/demo-sa-02.jpg', 0),
(2446, 28, 'catalog/demo/demo-ch-02.jpg', 0),
(2447, 28, 'catalog/demo/demo-ch-03.jpg', 0),
(2448, 28, 'catalog/demo/demo-ch-04.jpg', 0);

-----------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(208, 42, 4, 'test', 1),
(209, 42, 6, '', 1),
(217, 42, 5, '', 1),
(218, 42, 1, '', 1),
(219, 42, 8, '2011-02-20', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(221, 42, 9, '22:25', 1),
(222, 42, 7, '', 1),
(223, 42, 2, '', 1),
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(226, 30, 5, '', 1);

-----------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(1, 217, 42, 5, 41, 100, 0, 1.0000, '+', 0, '+', 1.00000000, '+'),
(2, 217, 42, 5, 42, 200, 1, 2.0000, '+', 0, '+', 2.00000000, '+'),
(3, 217, 42, 5, 40, 300, 0, 3.0000, '+', 0, '+', 3.00000000, '+'),
(4, 217, 42, 5, 39, 92, 1, 4.0000, '+', 0, '+', 4.00000000, '+'),
(5, 218, 42, 1, 32, 96, 1, 10.0000, '+', 1, '+', 10.00000000, '+'),
(6, 218, 42, 1, 31, 146, 1, 20.0000, '+', 2, '-', 20.00000000, '+'),
(7, 218, 42, 1, 43, 300, 1, 30.0000, '+', 3, '+', 30.00000000, '+'),
(8, 223, 42, 2, 23, 48, 1, 10.0000, '+', 0, '+', 10.00000000, '+'),
(9, 223, 42, 2, 24, 194, 1, 20.0000, '+', 0, '+', 20.00000000, '+'),
(10, 223, 42, 2, 44, 2696, 1, 30.0000, '+', 0, '+', 30.00000000, '+'),
(11, 223, 42, 2, 45, 3998, 1, 40.0000, '+', 0, '+', 40.00000000, '+'),
(12, 224, 35, 11, 46, 0, 1, 5.0000, '+', 0, '+', 0.00000000, '+'),
(13, 224, 35, 11, 47, 10, 1, 10.0000, '+', 0, '+', 0.00000000, '+'),
(14, 224, 35, 11, 48, 15, 1, 15.0000, '+', 0, '+', 0.00000000, '+'),
(15, 226, 30, 5, 39, 2, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(16, 226, 30, 5, 40, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-----------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-----------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

										 
									 

  
																	
  

																			
		  
		  
		  
		  
		  
		  
		  

														   

  
															
  

													
								
									
DROP TABLE IF EXISTS `oc_product_reward`;

  
															   
  

																			
		
		
		
		

														   

  
															
  

													
								
								
									 

  
															   
  

																		
		 
		 
		 
		 
		 
		 

														   

  
														
  

												
													  
											
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(515, 42, 1, 100),
(519, 47, 1, 300),
(379, 28, 1, 400),
(329, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(335, 40, 1, 0),
(539, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(337, 31, 1, 0),
(425, 35, 1, 0),
(345, 33, 1, 0),
(347, 46, 1, 0),
(545, 41, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(521, 49, 1, 1000);

-----------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(419, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(439, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00');

-----------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`, `main_category`) VALUES
(28, 20, 0),
(28, 24, 1),
(29, 24, 1),
(29, 32, 0),
(30, 33, 1),
(31, 32, 0),
(31, 33, 1),
(32, 34, 1),
(33, 20, 0),
(33, 28, 1),
(34, 34, 1),
(35, 20, 1),
(36, 34, 1),
(40, 20, 0),
(40, 24, 1),
(41, 27, 1),
(41, 32, 0),
(42, 20, 0),
(42, 28, 1),
(43, 18, 0),
(43, 46, 1),
(44, 18, 0),
(44, 46, 1),
(45, 18, 0),
(45, 46, 1),
(46, 18, 0),
(46, 45, 1),
(47, 18, 0),
(47, 20, 0),
(47, 25, 0),
(47, 32, 0),
(47, 45, 1),
(48, 34, 1),
(49, 57, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
																				 
		   

		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   

														   

  
														  
  
--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-----------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Возмещенный'),
											
(2, 1, 'Возврат средств'),
						   
(3, 1, 'Отправлена замена'),
(1, 2, 'Refunded'),
(3, 2, 'Replacement Sent'),
(2, 2, 'Credit Issued');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Получен неисправным (сломанным)'),
(1, 2, 'Dead On Arrival'),
(2, 1, 'Получен не тот (ошибочный) товар'),
(2, 2, 'Received Wrong Item'),
(3, 1, 'Заказан по ошибке'),
(3, 2, 'Order Error'),
(4, 1, 'Неисправен, пожалуйста укажите/приложите подробности'),
(4, 2, 'Faulty, please supply details'),
(5, 1, 'Другое (другая причина), пожалуйста укажите/приложите подробности'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'В ожидании'),
(3, 1, 'Выполнен'),
(2, 1, 'Ожидание товара'),
(1, 2, 'Pending'),
				   
(2, 2, 'Awaiting Products'),
														   
(3, 2, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

DROP TABLE IF EXISTS `oc_statistics`;
CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', 0),
(2, 'order_processing', 0),
(3, 'order_complete', 0),
(4, 'order_other', 0),
(5, 'returns', 0),
(6, 'product', 0),
(7, 'review', 0);

-----------------------------------------------------------

--
-- Table structure for table `oc_session`
--

DROP TABLE IF EXISTS `oc_session`;
CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`store_id`, `code`, `key`, `value`, `serialized`) VALUES
(0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(0, 'config', 'config_shared', '0', 0),
(0, 'config', 'config_secure', '0', 0),
(0, 'config', 'config_fraud_detection', '0', 0),
(0, 'config', 'config_ftp_status', '0', 0),
(0, 'config', 'config_ftp_root', '', 0),
(0, 'config', 'config_ftp_password', '', 0),
(0, 'config', 'config_ftp_username', '', 0),
(0, 'config', 'config_ftp_port', '21', 0),
(0, 'config', 'config_ftp_hostname', '', 0),
(0, 'config', 'config_meta_title', 'Ваш магазин', 0),
(0, 'config', 'config_meta_description', 'Мой магазин', 0),
(0, 'config', 'config_meta_keyword', '', 0),
(0, 'config', 'config_theme', 'default', 0),
(0, 'config', 'config_layout_id', '4', 0),
(0, 'config', 'config_country_id', '176', 0),
(0, 'config', 'config_zone_id', '2761', 0),
(0, 'config', 'config_timezone', 'UTC', 0),
(0, 'config', 'config_language', 'ru-ru', 0),
(0, 'config', 'config_admin_language', 'ru-ru', 0),
(0, 'config', 'config_currency', 'RUB', 0),
(0, 'config', 'config_currency_auto', '0', 0),
(0, 'config', 'config_length_class_id', '1', 0),
(0, 'config', 'config_weight_class_id', '1', 0),
(0, 'config', 'config_product_count', '0', 0),
(0, 'config', 'config_limit_admin', '25', 0),
(0, 'config', 'config_limit_autocomplete', '5', 0),
(0, 'config', 'config_review_status', '1', 0),
(0, 'config', 'config_review_guest', '1', 0),
(0, 'config', 'config_voucher_min', '1', 0),
(0, 'config', 'config_voucher_max', '1000', 0),
(0, 'config', 'config_tax', '0', 0),
(0, 'config', 'config_tax_default', 'shipping', 0),
(0, 'config', 'config_tax_customer', 'shipping', 0),
(0, 'config', 'config_customer_online', '0', 0),
(0, 'config', 'config_customer_activity', '0', 0),
(0, 'config', 'config_customer_search', '0', 0),
(0, 'config', 'config_customer_group_id', '1', 0),
(0, 'config', 'config_customer_group_display', '["1"]', 1),
(0, 'config', 'config_customer_price', '0', 0),
(0, 'config', 'config_account_id', '3', 0),
(0, 'config', 'config_cookie_id', '7', 0),
(0, 'config', 'config_invoice_prefix', CONCAT('INV-', YEAR(CURDATE()), '-00'), 0),
(0, 'config', 'config_api_id', '1', 0),
(0, 'config', 'config_cart_weight', '1', 0),
(0, 'config', 'config_checkout_guest', '1', 0),
(0, 'config', 'config_checkout_id', '5', 0),
(0, 'config', 'config_order_status_id', '1', 0),
(0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(0, 'config', 'config_complete_status', '["5","3"]', 1),
(0, 'config', 'config_stock_display', '0', 0),
(0, 'config', 'config_stock_warning', '0', 0),
(0, 'config', 'config_stock_checkout', '0', 0),
(0, 'config', 'config_affiliate_approval', '0', 0),
(0, 'config', 'config_affiliate_auto', '0', 0),
(0, 'config', 'config_affiliate_commission', '5', 0),
(0, 'config', 'config_affiliate_id', '4', 0),
(0, 'config', 'config_return_id', '0', 0),
(0, 'config', 'config_return_status_id', '2', 0),
(0, 'config', 'config_logo', 'catalog/logo.png', 0),
(0, 'config', 'config_icon', 'catalog/cart.png', 0),
(0, 'config', 'config_comment', '', 0),
(0, 'config', 'config_open', '', 0),
(0, 'config', 'config_image', '', 0),
(0, 'config', 'config_fax', '', 0),
(0, 'config', 'config_telephone', '123456789', 0),
(0, 'config', 'config_email', 'demo@opencart.com', 0),
(0, 'config', 'config_geocode', '', 0),
(0, 'config', 'config_owner', 'Ваш магазин', 0),
(0, 'config', 'config_address', 'Адрес', 0),
(0, 'config', 'config_name', 'Ваш магазин', 0),
(0, 'config', 'config_seo_url', '0', 0),
(0, 'config', 'config_file_max_size', '300000', 0),
(0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(0, 'config', 'config_maintenance', '0', 0),
(0, 'config', 'config_password', '1', 0),
(0, 'config', 'config_encryption', '', 0),
(0, 'config', 'config_compression', '0', 0),
(0, 'config', 'config_error_display', '1', 0),
(0, 'config', 'config_error_log', '1', 0),
(0, 'config', 'config_error_filename', 'error.log', 0),
(0, 'config', 'config_google_analytics', '', 0),
(0, 'config', 'config_mail_engine', 'mail', 0),
(0, 'config', 'config_mail_parameter', '', 0),
(0, 'config', 'config_mail_smtp_hostname', '', 0),
(0, 'config', 'config_mail_smtp_username', '', 0),
(0, 'config', 'config_mail_smtp_password', '', 0),
(0, 'config', 'config_mail_smtp_port', '25', 0),
(0, 'config', 'config_mail_smtp_timeout', '5', 0),
(0, 'config', 'config_mail_alert_email', '', 0),
(0, 'config', 'config_mail_alert', '["order"]', 1),
(0, 'config', 'config_captcha', 'basic', 0),
(0, 'config', 'config_captcha_page', '["review","return","contact"]', 1),
(0, 'config', 'config_login_attempts', '5', 0),
(0, 'config', 'config_noindex_status', '1', 0),
(0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(0, 'payment_free_checkout', 'payment_free_checkout_order_status_id', '1', 0),
(0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(0, 'payment_cod', 'payment_cod_status', '1', 0),
(0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(0, 'total_sub_total', 'total_sub_total_sort_order', '1', 0),
(0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(0, 'total_tax', 'total_tax_status', '1', 0),
(0, 'total_total', 'total_total_sort_order', '9', 0),
(0, 'total_total', 'total_total_status', '1', 0),
(0, 'total_tax', 'total_tax_sort_order', '5', 0),
(0, 'total_credit', 'total_credit_sort_order', '7', 0),
(0, 'total_credit', 'total_credit_status', '1', 0),
(0, 'total_reward', 'total_reward_sort_order', '2', 0),
(0, 'total_reward', 'total_reward_status', '1', 0),
(0, 'total_shipping', 'total_shipping_status', '1', 0),
(0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(0, 'total_coupon', 'total_coupon_status', '1', 0),
(0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(0, 'total_voucher', 'total_voucher_status', '1', 0),
(0, 'module_category', 'module_category_status', '1', 0),
(0, 'module_account', 'module_account_status', '1', 0),
(0, 'theme_default', 'theme_default_product_limit', '15', 0),
(0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(0, 'theme_default', 'theme_default_image_manufacturer_width', '80', 0),
(0, 'theme_default', 'theme_default_image_manufacturer_height', '80', 0),
(0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(0, 'theme_default', 'theme_default_directory', 'default', 0),
(0, 'theme_default', 'theme_default_status', '1', 0),
(0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(0, 'dashboard_chart', 'dashboard_chart_status', '0', 0),
(0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(0, 'report_marketing', 'report_marketing_status', '1', 0),
(0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(0, 'developer', 'developer_theme', '1', 0),
(0, 'developer', 'developer_sass', '1', 0),
(0, 'configblog', 'configblog_name', 'Блог', 0),
(0, 'configblog', 'configblog_html_h1', 'Блог для интернет-магазина на OpenCart', 0),
(0, 'configblog', 'configblog_meta_title', 'Блог для интернет-магазина на OpenCart', 0),
(0, 'configblog', 'configblog_meta_description', 'Блог для интернет-магазина на OpenCart', 0),
(0, 'configblog', 'configblog_meta_keyword', 'Блог для интернет-магазина на OpenCart', 0),
(0, 'configblog', 'configblog_article_count', '1', 0),
(0, 'configblog', 'configblog_article_limit', '20', 0),
(0, 'configblog', 'configblog_article_description_length', '200', 0),
(0, 'configblog', 'configblog_limit_admin', '20', 0),
(0, 'configblog', 'configblog_blog_menu', '1', 0),
(0, 'configblog', 'configblog_article_download', '1', 0),
(0, 'configblog', 'configblog_review_status', '1', 0),
(0, 'configblog', 'configblog_review_guest', '1', 0),
(0, 'configblog', 'configblog_review_mail', '1', 0),
(0, 'configblog', 'configblog_image_category_width', '50', 0),
(0, 'configblog', 'configblog_image_category_height', '50', 0),
(0, 'configblog', 'configblog_image_article_width', '150', 0),
(0, 'configblog', 'configblog_image_article_height', '150', 0),
(0, 'configblog', 'configblog_image_related_width', '200', 0),
(0, 'configblog', 'configblog_image_related_height', '200', 0),
(0, 'config', 'config_currency_engine', 'cbr', 0),
(0, 'currency_cbr', 'currency_cbr_status', '1', 0),
(0, 'currency_nbu', 'currency_nbu_status', '1', 0),
(0, 'currency_ecb', 'currency_ecb_status', '1', 0),
(0, 'currency_fixer', 'currency_fixer_status', '0', 0),
(0, 'module_blog_category', 'module_blog_category_status', '1', 0),
(0, 'dashboard_chart_by_country_and_region', 'dashboard_chart_by_country_and_region_width', '6', '0'),
(0, 'dashboard_chart_by_country_and_region', 'dashboard_chart_by_country_and_region_status', '1', '0'),
(0, 'dashboard_chart_by_country_and_region', 
'dashboard_chart_by_country_and_region_sort_order', '5', 0),
(0, 'config', 'config_seo_pro', '1', 0),
(0, 'config', 'config_seo_url_include_path', '0', 0),
(0, 'config', 'config_seo_url_cache', '0', 0),
(0, 'config', 'config_seopro_addslash', '0', 0),
(0, 'config', 'config_seopro_lowercase', '0', 0),
(0, 'config', 'config_page_postfix', '.html', 0),
(0, 'config', 'config_valide_param_flag', '1', 0),
(0, 'config', 'config_valide_params', 'tracking\nutm_source\nutm_campaign\nutm_medium\ntype\nsource\nblock\nposition\nkeyword\nyclid\ngclid', '0'),
(0, 'config', 'config_canonical_method', '1', 0),
(0, 'config', 'config_canonical_self', '1', 0),
(0, 'config', 'config_add_prevnext', '0', 0),
(0, 'config', 'config_noindex_status', '1', 0),
(0, 'config', 'config_noindex_disallow_params', '', 0);															  



-----------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'В наличии'),
(8, 1, 'Предзаказ'),
(5, 1, 'Нет в наличии'),
(6, 1, 'Ожидание 2-3 дня'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'НДС', 'НДС', '2009-01-06 23:21:53', '2022-03-15 10:09:04');

-----------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'НДС (20%)', 20.0000, 'P', '2011-03-09 21:17:10', '2022-03-15 10:09:29');

-----------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-----------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(129, 9, 86, 'store', 1);

-----------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
					   
						   
										   
															   
																  
									
								 
													   

  
														   
  

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

DROP TABLE IF EXISTS `oc_seo_url`;
CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(601, 0, 1, 'account/voucher', 'vouchers'),
(602, 0, 1, 'account/wishlist', 'wishlist'),
(603, 0, 1, 'account/account', 'my-account'),
(604, 0, 1, 'checkout/cart', 'cart'),
(605, 0, 1, 'checkout/checkout', 'checkout'),
(606, 0, 1, 'account/login', 'login'),
(607, 0, 1, 'account/logout', 'logout'),
(608, 0, 1, 'account/order', 'order-history'),
(609, 0, 1, 'account/newsletter', 'newsletter'),
(610, 0, 1, 'product/special', 'specials'),
(611, 0, 1, 'affiliate/account', 'affiliates'),
(612, 0, 1, 'checkout/voucher', 'gift-vouchers'),
(613, 0, 1, 'product/manufacturer', 'brands'),
(614, 0, 1, 'information/contact', 'contact-us'),
(615, 0, 1, 'account/return/insert', 'request-return'),
(616, 0, 1, 'information/sitemap', 'sitemap'),
(617, 0, 1, 'account/forgotten', 'forgot-password'),
(618, 0, 1, 'account/download', 'downloads'),
(619, 0, 1, 'account/return', 'returns'),
(620, 0, 1, 'account/transaction', 'transactions'),
(621, 0, 1, 'account/register', 'create-account'),
(622, 0, 1, 'product/compare', 'compare-products'),
(623, 0, 1, 'product/search', 'search'),
(624, 0, 1, 'account/edit', 'edit-account'),
(625, 0, 1, 'account/password', 'change-password'),
(626, 0, 1, 'account/address', 'address-book'),
(627, 0, 1, 'account/reward', 'reward-points'),
(628, 0, 1, 'affiliate/edit', 'edit-affiliate-account'),
(629, 0, 1, 'affiliate/password', 'change-affiliate-password'),
(630, 0, 1, 'affiliate/payment', 'affiliate-payment-options'),
(631, 0, 1, 'affiliate/tracking', 'affiliate-tracking-code'),
(632, 0, 1, 'affiliate/transaction', 'affiliate-transactions'),
(633, 0, 1, 'affiliate/logout', 'affiliate-logout'),
(634, 0, 1, 'affiliate/forgotten', 'affiliate-forgot-password'),
(635, 0, 1, 'affiliate/register', 'create-affiliate-account'),
(636, 0, 1, 'affiliate/login', 'affiliate-login'),
(637, 0, 1, 'account/return/add', 'add-return'),
(823, 0, 1, 'common/home', ''),
(845, 0, 2, 'common/home', 'en'),
(848, 0, 1, 'information_id=6', 'delivery'),
(849, 0, 2, 'information_id=6', 'en_delivery'),
(850, 0, 1, 'information_id=4', 'about_us'),
(851, 0, 2, 'information_id=4', 'en_about_us'),
(854, 0, 1, 'information_id=5', 'terms'),
(855, 0, 2, 'information_id=5', 'en_terms'),
(876, 0, 1, 'category_id=35', 'test1'),
(877, 0, 2, 'category_id=35', 'en_test1'),
(878, 0, 1, 'category_id=36', 'test2'),
(879, 0, 2, 'category_id=36', 'en_test2'),
(894, 0, 1, 'category_id=58', 'test25'),
(895, 0, 2, 'category_id=58', 'en_test25'),
(896, 0, 1, 'category_id=52', 'test20'),
(897, 0, 2, 'category_id=52', 'en_test20'),
(898, 0, 1, 'category_id=42', 'test9'),
(899, 0, 2, 'category_id=42', 'en_test9'),
(900, 0, 1, 'category_id=43', 'test11'),
(901, 0, 2, 'category_id=43', 'en_test11'),
(902, 0, 1, 'category_id=44', 'test12'),
(903, 0, 2, 'category_id=44', 'en_test12'),
(904, 0, 1, 'category_id=47', 'test15'),
(905, 0, 2, 'category_id=47', 'en_test15'),
(906, 0, 1, 'category_id=48', 'test16'),
(907, 0, 2, 'category_id=48', 'en_test16'),
(908, 0, 1, 'category_id=49', 'test17'),
(909, 0, 2, 'category_id=49', 'en_test17'),
(910, 0, 1, 'category_id=50', 'test18'),
(911, 0, 2, 'category_id=50', 'en_test18'),
(912, 0, 1, 'category_id=51', 'test19'),
(913, 0, 2, 'category_id=51', 'en_test19'),
(914, 0, 1, 'category_id=53', 'test21'),
(915, 0, 2, 'category_id=53', 'en_test21'),
(916, 0, 1, 'category_id=54', 'test22'),
(917, 0, 2, 'category_id=54', 'en_test22'),
(918, 0, 1, 'category_id=55', 'test23'),
(919, 0, 2, 'category_id=55', 'en_test23'),
(920, 0, 1, 'category_id=56', 'test24'),
(921, 0, 2, 'category_id=56', 'en_test24'),
(922, 0, 1, 'category_id=38', 'test4'),
(923, 0, 2, 'category_id=38', 'en_test4'),
(924, 0, 1, 'category_id=37', 'test5'),
(925, 0, 2, 'category_id=37', 'en_test5'),
(926, 0, 1, 'category_id=39', 'test6'),
(927, 0, 2, 'category_id=39', 'en_test6'),
(928, 0, 1, 'category_id=40', 'test7'),
(929, 0, 2, 'category_id=40', 'en_test7'),
(930, 0, 1, 'category_id=41', 'test8'),
(931, 0, 2, 'category_id=41', 'en_test8'),
(984, 0, 2, 'account/account', 'en-my-account'),
(985, 0, 2, 'checkout/cart', 'en-cart'),
(986, 0, 2, 'checkout/checkout', 'en-checkout'),
(987, 0, 2, 'account/login', 'en-login'),
(988, 0, 2, 'account/logout', 'en-logout'),
(989, 0, 2, 'account/order', 'en-order-history'),
(990, 0, 2, 'account/newsletter', 'en-newsletter'),
(991, 0, 2, 'product/special', 'en-specials'),
(992, 0, 2, 'affiliate/account', 'en-affiliates'),
(993, 0, 2, 'checkout/voucher', 'en-gift-vouchers'),
(994, 0, 2, 'product/manufacturer', 'en-brands'),
(995, 0, 2, 'information/contact', 'en-contact-us'),
(996, 0, 2, 'account/return/insert', 'en-request-return'),
(997, 0, 2, 'information/sitemap', 'en-sitemap'),
(998, 0, 2, 'account/forgotten', 'en-forgot-password'),
(999, 0, 2, 'account/download', 'en-downloads'),
(1001, 0, 2, 'account/return', 'en-returns'),
(1002, 0, 2, 'account/transaction', 'en-transactions'),
(1003, 0, 2, 'account/register', 'en-create-account'),
(1004, 0, 2, 'product/compare', 'en-compare-products'),
(1005, 0, 2, 'product/search', 'en-search'),
(1006, 0, 2, 'account/edit', 'en-edit-account'),
(1007, 0, 2, 'account/password', 'en-change-password'),
(1008, 0, 2, 'account/address', 'en-address-book'),
(1009, 0, 2, 'account/reward', 'en-reward-points'),
(1010, 0, 2, 'affiliate/edit', 'en-edit-affiliate-account'),
(1011, 0, 2, 'affiliate/password', 'en-change-affiliate-password'),
(1012, 0, 2, 'affiliate/payment', 'en-affiliate-payment-options'),
(1013, 0, 2, 'affiliate/tracking', 'en-affiliate-tracking-code'),
(1014, 0, 2, 'affiliate/transaction', 'en-affiliate-transactions'),
(1015, 0, 2, 'affiliate/logout', 'en-affiliate-logout'),
(1016, 0, 2, 'affiliate/forgotten', 'en-affiliate-forgot-password'),
(1017, 0, 2, 'affiliate/register', 'en-create-affiliate-account'),
(1018, 0, 2, 'affiliate/login', 'en-affiliate-login'),
(1019, 0, 2, 'account/voucher', 'en-vouchers'),
(1020, 0, 2, 'account/wishlist', 'en-wishlist'),
(1021, 0, 2, 'account/return/add', 'en-add-return'),
(1034, 0, 1, 'category_id=27', 'kruzhki'),
(1035, 0, 2, 'category_id=27', 'en_kruzhki'),
(1036, 0, 1, 'category_id=26', 'tarelki'),
(1037, 0, 2, 'category_id=26', 'en_tarelki'),
(1040, 0, 1, 'category_id=18', 'laptop-notebook'),
(1041, 0, 2, 'category_id=18', 'en_laptop-notebook'),
(1044, 0, 1, 'category_id=57', 'kosmetika'),
(1045, 0, 2, 'category_id=57', 'en_kosmetika'),
(1046, 0, 1, 'category_id=17', 'bytovaya_chimiya'),
(1047, 0, 2, 'category_id=17', 'en_bytovaya_chimiya'),
(1048, 0, 1, 'category_id=24', 'elektornika'),
(1049, 0, 2, 'category_id=24', 'en_elektornika'),
(1050, 0, 1, 'category_id=33', 'mebel'),
(1051, 0, 2, 'category_id=33', 'en_mebel'),
(1054, 0, 1, 'category_id=46', 'muzhskaya_odezhda'),
(1055, 0, 2, 'category_id=46', 'en_muzhskaya_odezhda'),
(1056, 0, 1, 'category_id=45', 'zhenskaya_odezhda'),
(1057, 0, 2, 'category_id=45', 'en_zhenskaya_odezhda'),
(1060, 0, 1, 'category_id=25', 'dlya_doma'),
(1061, 0, 2, 'category_id=25', 'en_dlya_doma'),
(1062, 0, 1, 'category_id=32', 'kuhnya'),
(1063, 0, 2, 'category_id=32', 'en_kuhnya'),
(1066, 0, 1, 'category_id=28', 'gostinnaya'),
(1067, 0, 2, 'category_id=28', 'en_gostinnaya'),
(1068, 0, 1, 'category_id=29', 'vannaya'),
(1069, 0, 2, 'category_id=29', 'en_vannaya'),
(1070, 0, 1, 'category_id=30', 'detskaya'),
(1071, 0, 2, 'category_id=30', 'en_detskaya'),
(1072, 0, 1, 'category_id=31', 'kladovka'),
(1073, 0, 2, 'category_id=31', 'en_kladovka'),
(1074, 0, 1, 'category_id=34', 'obuv'),
(1075, 0, 2, 'category_id=34', 'en_obuv'),
(1100, 0, 1, 'product_id=35', 'product-8'),
(1101, 0, 2, 'product_id=35', 'en_product-8'),
(1158, 0, 1, 'manufacturer_id=7', 'mamo'),
(1159, 0, 2, 'manufacturer_id=7', 'en_mamo'),
(1160, 0, 1, 'manufacturer_id=5', 'politeh'),
(1161, 0, 2, 'manufacturer_id=5', 'en_politeh'),
(1162, 0, 1, 'manufacturer_id=9', 'teplydom'),
(1163, 0, 2, 'manufacturer_id=9', 'en_teplydom'),
(1164, 0, 1, 'manufacturer_id=8', 'vse_dlya_semyi'),
(1165, 0, 2, 'manufacturer_id=8', 'en_vse_dlya_semyi'),
(1174, 0, 1, 'manufacturer_id=10', 'sdobrom'),
(1175, 0, 2, 'manufacturer_id=10', 'en_sdobrom'),
(1176, 0, 1, 'manufacturer_id=6', 'abcd'),
(1177, 0, 2, 'manufacturer_id=6', 'en_abcd'),
(1178, 0, 1, 'blog_category_id=69', 'blog-news'),
(1179, 0, 2, 'blog_category_id=69', 'blog-news-en'),
(1210, 0, 1, 'product_id=49', 'balsam'),
(1211, 0, 2, 'product_id=49', 'en_balsam'),
(1216, 0, 1, 'category_id=20', 'posuda'),
(1217, 0, 2, 'category_id=20', 'en_posuda'),
(1220, 0, 1, 'information_id=3', 'privacy'),
(1221, 0, 2, 'information_id=3', 'en_privacy'),
(1222, 0, 1, 'product_id=31', 'barstool'),
(1223, 0, 2, 'product_id=31', 'en_barstool'),
(1224, 0, 1, 'product_id=33', 'vase'),
(1225, 0, 2, 'product_id=33', 'en_vase'),
(1226, 0, 1, 'product_id=43', 'tie'),
(1227, 0, 2, 'product_id=43', 'en_tie'),
(1228, 0, 1, 'product_id=45', 'jeans'),
(1229, 0, 2, 'product_id=45', 'en_jeans'),
(1230, 0, 1, 'product_id=30', 'sofa'),
(1231, 0, 2, 'product_id=30', 'en_sofa'),
(1232, 0, 1, 'product_id=46', 'womens-cardigan'),
(1233, 0, 2, 'product_id=46', 'en_womens-cardigan'),
(1234, 0, 1, 'product_id=42', 'armchair'),
(1235, 0, 2, 'product_id=42', 'en_armchair'),
(1236, 0, 1, 'product_id=48', 'sneakers'),
(1237, 0, 2, 'product_id=48', 'en_sneakers'),
(1238, 0, 1, 'product_id=41', 'mug'),
(1239, 0, 2, 'product_id=41', 'en_mug'),
(1240, 0, 1, 'product_id=44', 'swim-shorts'),
(1241, 0, 2, 'product_id=44', 'en_swim-shorts'),
(1242, 0, 1, 'product_id=29', 'mixer'),
(1243, 0, 2, 'product_id=29', 'en_mixer'),
(1244, 0, 1, 'product_id=47', 'gift-set'),
(1245, 0, 2, 'product_id=47', 'en_gift-set'),
(1246, 0, 1, 'product_id=32', 'sandals'),
(1247, 0, 2, 'product_id=32', 'en_sandals'),
(1248, 0, 1, 'product_id=36', 'boots'),
(1249, 0, 2, 'product_id=36', 'en_boots'),
(1250, 0, 1, 'product_id=34', 'heels'),
(1251, 0, 2, 'product_id=34', 'en_heels'),
(1252, 0, 1, 'product_id=40', 'smart-spoon'),
(1253, 0, 2, 'product_id=40', 'en_smart-spoon'),
(1254, 0, 1, 'product_id=28', 'electric-kettle'),
(1255, 0, 2, 'product_id=28', 'en_electric-kettle');

  

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
									 

  
													
  

																
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																																						
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																									 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																									   
																																		 
																																																						
																																		 
																																							 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
															
																																		 
															
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
															
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																																					
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																																						
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
															
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																																																																																																																																																																																																																																																																																																																																										  
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
															
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 
																																		 

														   

  
												 
  

										 
											   
										  
							   
							  
						
								   
							
														 

  
													
  

																								
																		 
																				  
																			 
														 
														
															   
														   
													  
																
																  
															  
												  
														  
													  
													  
															
														
															
														
															
															   
															
														
															  
														  
															  
															
																  
																				
																	   
																		
																	   
																		
																		 
																		  
																			 
																			  
																		 
																		  
																		   
																			
																		 
																		  
																		
																		 
																		 
																		  
																	  
																	 
																		  
																		  
																   
														  
																	
																		
															
														   
															  
															 
																	
																   
																
															   
																  
															  
															 
																
																		
																	
																  
																
																	
																   
															   
																				
																					
																		  
																			  
																			
																				
																				
																			
																					  
																								 
															  
																  
																		
																			
																	
																		
																  
																	  
																	
																		
																		  
																			   
																				
																					 
																
																	 
												 
												
														 
																												   
																													  
																															
																														
														   
															
																		  
														  
													   
															  
														   
														  
														 
																   
																	
																   
																	
																   
																	
														
														
														
															
																		
														   
																
															   
														  
															  
														  
																										 
																										  
																											  
														 
														  
															  
																  
																	 
									  
												  
												  
												
															   
																
													   
											 
														 
														
										 
										   
										  
											 
												   
												 
												 
												   
														 
												 
													
														
													  
													  
													
												   
														 
													
												   
												  
													 
										  
														 
														  
													  
														
													  
														
																   
													 
													 
												 
												
															   
												  
													 
												  
													  
																					   
																  
													   
											 
													
													
													 
														 
														 
													 
														   
												   
												
													   
											 
																											
														  
														  
													 
													
														
														
														
													  
														
													  
												  
											  
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															  
												  
											 
											   
											 
																																																																																																																																																																																																																																																																																											   
														 
																																																										
																																																																																																																																																													 
													
												
															 
											  
														   
													
													  
													   
												  
														
																																																																																							  
													   
													 
												   
													 
																 

														   

  
														  
  

												  
										 
														   
														   
									 
									 

  
															 
  

																												  
				  
					  
				  
								
											
								 

														   

  
													
  

											
												  
							  
								 
							   
													  

  
													   
  

																	 
							 
								
							  
						   
					   
					   
					  

														   

  
													  
  

											  
													
								 
							  
											   
													  

  
														 
  

																			   
								   
					   
									  
				   
							
				   
							 
					

														   

  
											   
  

									   
											 
							  
							  
							  
						  
									 

														   

  
												   
  

										   
												 
							   
									  
								 
									
							  
													   

  
													  
  

																										 
								   

														   

  
												  
  

										  
												
											 
							  
CREATE TABLE `oc_user` (
						  
								 
									
							 
													   

  
													 
  

																													  
																					

														   

  
																	
  

															
								 
									   
												 
									 

  
									
  

																					   
		
		

														   

  
												  
  

										  
												
								  
								 
							   
										 
							 
														

  
													 
  

																									
						 

														   

  
											   
  

									   
											 
							  
							   
							   
							 
								 
						  
									 

														   

  
													 
  

											 
												   
							  
								 
							   
							 
						
								 
								
									 

														   

  
												
  

										
											  
							   
								   
							   
								 
						   
									 

														   

  
											  
  

									  
											
								   
								  
								  
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------
																																								
																																														

														   

  
													
  

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["blog\/article","blog\/category","blog\/review","blog\/setting","catalog\/attribute","catalog\/attribute_group","catalog\/category","catalog\/download","catalog\/filter","catalog\/information","catalog\/manufacturer","catalog\/option","catalog\/product","catalog\/recurring","catalog\/review","common\/column_left","common\/developer","common\/filemanager","common\/profile","common\/security","customer\/custom_field","customer\/customer","customer\/customer_approval","customer\/customer_group","design\/banner","design\/layout","design\/seo_url","design\/theme","design\/translation","event\/language","event\/statistics","event\/theme","extension\/advertise\/google","extension\/analytics\/google","extension\/captcha\/basic","extension\/captcha\/google","extension\/currency\/cbr","extension\/currency\/ecb","extension\/currency\/fixer","extension\/currency\/nbu","extension\/dashboard\/activity","extension\/dashboard\/chart","extension\/dashboard\/chart_by_country_and_region","extension\/dashboard\/customer","extension\/dashboard\/map","extension\/dashboard\/online","extension\/dashboard\/order","extension\/dashboard\/recent","extension\/dashboard\/sale","extension\/extension\/advertise","extension\/extension\/analytics","extension\/extension\/captcha","extension\/extension\/currency","extension\/extension\/dashboard","extension\/extension\/feed","extension\/extension\/fraud","extension\/extension\/menu","extension\/extension\/module","extension\/extension\/payment","extension\/extension\/promotion","extension\/extension\/report","extension\/extension\/shipping","extension\/extension\/theme","extension\/extension\/total","extension\/feed\/google_base","extension\/feed\/google_sitemap","extension\/feed\/yandex_market","extension\/feed\/yandex_turbo","extension\/fraud\/fraudlabspro","extension\/fraud\/ip","extension\/fraud\/maxmind","extension\/module\/account","extension\/module\/amazon_login","extension\/module\/amazon_pay","extension\/module\/banner","extension\/module\/bestseller","extension\/module\/blog_category","extension\/module\/blog_featured","extension\/module\/blog_latest","extension\/module\/carousel","extension\/module\/category","extension\/module\/divido_calculator","extension\/module\/featured","extension\/module\/featured_article","extension\/module\/featured_product","extension\/module\/filter","extension\/module\/google_hangouts","extension\/module\/html","extension\/module\/information","extension\/module\/klarna_checkout_module","extension\/module\/latest","extension\/module\/laybuy_layout","extension\/module\/paypal_smart_button","extension\/module\/slideshow","extension\/module\/special","extension\/module\/store","extension\/payment\/alipay","extension\/payment\/alipay_cross","extension\/payment\/amazon_login_pay","extension\/payment\/authorizenet_aim","extension\/payment\/authorizenet_sim","extension\/payment\/bank_transfer","extension\/payment\/bluepay_hosted","extension\/payment\/bluepay_redirect","extension\/payment\/cardconnect","extension\/payment\/cardinity","extension\/payment\/cheque","extension\/payment\/cod","extension\/payment\/divido","extension\/payment\/eway","extension\/payment\/firstdata","extension\/payment\/firstdata_remote","extension\/payment\/free_checkout","extension\/payment\/g2apay","extension\/payment\/globalpay","extension\/payment\/globalpay_remote","extension\/payment\/klarna_account","extension\/payment\/klarna_checkout","extension\/payment\/klarna_invoice","extension\/payment\/laybuy","extension\/payment\/liqpay","extension\/payment\/nochex","extension\/payment\/ocstore_w1","extension\/payment\/paymate","extension\/payment\/paypal","extension\/payment\/paypoint","extension\/payment\/perpetual_payments","extension\/payment\/pilibaba","extension\/payment\/pp_express","extension\/payment\/pp_payflow","extension\/payment\/pp_payflow_iframe","extension\/payment\/pp_pro","extension\/payment\/pp_pro_iframe","extension\/payment\/pp_standard","extension\/payment\/securetrading_pp","extension\/payment\/securetrading_ws","extension\/payment\/skrill","extension\/payment\/web_payment_software","extension\/payment\/webmoney_wmb","extension\/payment\/webmoney_wme","extension\/payment\/webmoney_wmk","extension\/payment\/webmoney_wmr","extension\/payment\/webmoney_wmu","extension\/payment\/webmoney_wmv","extension\/payment\/webmoney_wmz","extension\/payment\/wechat_pay","extension\/payment\/worldpay","extension\/report\/customer_activity","extension\/report\/customer_order","extension\/report\/customer_reward","extension\/report\/customer_search","extension\/report\/customer_transaction","extension\/report\/marketing","extension\/report\/product_purchased","extension\/report\/product_viewed","extension\/report\/sale_coupon","extension\/report\/sale_order","extension\/report\/sale_return","extension\/report\/sale_shipping","extension\/report\/sale_tax","extension\/shipping\/auspost","extension\/shipping\/ec_ship","extension\/shipping\/fedex","extension\/shipping\/flat","extension\/shipping\/free","extension\/shipping\/item","extension\/shipping\/parcelforce_48","extension\/shipping\/pickup","extension\/shipping\/royal_mail","extension\/shipping\/ups","extension\/shipping\/usps","extension\/shipping\/weight","extension\/theme\/default","extension\/total\/coupon","extension\/total\/credit","extension\/total\/handling","extension\/total\/klarna_fee","extension\/total\/low_order_fee","extension\/total\/reward","extension\/total\/shipping","extension\/total\/sub_total","extension\/total\/tax","extension\/total\/total","extension\/total\/voucher","localisation\/country","localisation\/currency","localisation\/geo_zone","localisation\/language","localisation\/length_class","localisation\/location","localisation\/order_status","localisation\/return_action","localisation\/return_reason","localisation\/return_status","localisation\/stock_status","localisation\/tax_class","localisation\/tax_rate","localisation\/weight_class","localisation\/zone","mail\/affiliate","mail\/customer","mail\/forgotten","mail\/return","mail\/reward","mail\/transaction","marketing\/contact","marketing\/coupon","marketing\/marketing","marketplace\/api","marketplace\/event","marketplace\/extension","marketplace\/install","marketplace\/installer","marketplace\/marketplace","marketplace\/modification","marketplace\/opencartforum","report\/online","report\/report","report\/statistics","sale\/order","sale\/recurring","sale\/return","sale\/voucher","sale\/voucher_theme","search\/search","setting\/setting","setting\/store","startup\/error","startup\/event","startup\/login","startup\/permission","startup\/router","startup\/sass","startup\/startup","tool\/backup","tool\/log","tool\/upload","user\/api","user\/user","user\/user_permission"],"modify":["blog\/article","blog\/category","blog\/review","blog\/setting","catalog\/attribute","catalog\/attribute_group","catalog\/category","catalog\/download","catalog\/filter","catalog\/information","catalog\/manufacturer","catalog\/option","catalog\/product","catalog\/recurring","catalog\/review","common\/column_left","common\/developer","common\/filemanager","common\/profile","common\/security","customer\/custom_field","customer\/customer","customer\/customer_approval","customer\/customer_group","design\/banner","design\/layout","design\/seo_url","design\/theme","design\/translation","event\/language","event\/statistics","event\/theme","extension\/advertise\/google","extension\/analytics\/google","extension\/captcha\/basic","extension\/captcha\/google","extension\/currency\/cbr","extension\/currency\/ecb","extension\/currency\/fixer","extension\/currency\/nbu","extension\/dashboard\/activity","extension\/dashboard\/chart","extension\/dashboard\/chart_by_country_and_region","extension\/dashboard\/customer","extension\/dashboard\/map","extension\/dashboard\/online","extension\/dashboard\/order","extension\/dashboard\/recent","extension\/dashboard\/sale","extension\/extension\/advertise","extension\/extension\/analytics","extension\/extension\/captcha","extension\/extension\/currency","extension\/extension\/dashboard","extension\/extension\/feed","extension\/extension\/fraud","extension\/extension\/menu","extension\/extension\/module","extension\/extension\/payment","extension\/extension\/promotion","extension\/extension\/report","extension\/extension\/shipping","extension\/extension\/theme","extension\/extension\/total","extension\/feed\/google_base","extension\/feed\/google_sitemap","extension\/feed\/yandex_market","extension\/feed\/yandex_turbo","extension\/fraud\/fraudlabspro","extension\/fraud\/ip","extension\/fraud\/maxmind","extension\/module\/account","extension\/module\/amazon_login","extension\/module\/amazon_pay","extension\/module\/banner","extension\/module\/bestseller","extension\/module\/blog_category","extension\/module\/blog_featured","extension\/module\/blog_latest","extension\/module\/carousel","extension\/module\/category","extension\/module\/divido_calculator","extension\/module\/featured","extension\/module\/featured_article","extension\/module\/featured_product","extension\/module\/filter","extension\/module\/google_hangouts","extension\/module\/html","extension\/module\/information","extension\/module\/klarna_checkout_module","extension\/module\/latest","extension\/module\/laybuy_layout","extension\/module\/paypal_smart_button","extension\/module\/slideshow","extension\/module\/special","extension\/module\/store","extension\/payment\/alipay","extension\/payment\/authorizenet_aim","extension\/payment\/authorizenet_sim","extension\/payment\/bank_transfer","extension\/payment\/bluepay_hosted","extension\/payment\/bluepay_redirect","extension\/payment\/cardconnect","extension\/payment\/cardinity","extension\/payment\/cheque","extension\/payment\/cod","extension\/payment\/divido","extension\/payment\/eway","extension\/payment\/firstdata","extension\/payment\/firstdata_remote","extension\/payment\/free_checkout","extension\/payment\/g2apay","extension\/payment\/globalpay","extension\/payment\/globalpay_remote","extension\/payment\/klarna_account","extension\/payment\/klarna_checkout","extension\/payment\/klarna_invoice","extension\/payment\/laybuy","extension\/payment\/liqpay","extension\/payment\/nochex","extension\/payment\/ocstore_w1","extension\/payment\/paymate","extension\/payment\/paypal","extension\/payment\/paypoint","extension\/payment\/payza","extension\/payment\/perpetual_payments","extension\/payment\/pilibaba","extension\/payment\/pp_braintree","extension\/payment\/pp_express","extension\/payment\/pp_payflow","extension\/payment\/pp_payflow_iframe","extension\/payment\/pp_pro","extension\/payment\/pp_pro_iframe","extension\/payment\/pp_standard","extension\/payment\/securetrading_pp","extension\/payment\/securetrading_ws","extension\/payment\/skrill","extension\/payment\/squareup","extension\/payment\/twocheckout","extension\/payment\/web_payment_software","extension\/payment\/webmoney_wmb","extension\/payment\/webmoney_wme","extension\/payment\/webmoney_wmk","extension\/payment\/webmoney_wmr","extension\/payment\/webmoney_wmu","extension\/payment\/webmoney_wmv","extension\/payment\/webmoney_wmz","extension\/payment\/wechat_pay","extension\/payment\/worldpay","extension\/report\/customer_activity","extension\/report\/customer_order","extension\/report\/customer_reward","extension\/report\/customer_search","extension\/report\/customer_transaction","extension\/report\/marketing","extension\/report\/product_purchased","extension\/report\/product_viewed","extension\/report\/sale_coupon","extension\/report\/sale_order","extension\/report\/sale_return","extension\/report\/sale_shipping","extension\/report\/sale_tax","extension\/shipping\/auspost","extension\/shipping\/ec_ship","extension\/shipping\/fedex","extension\/shipping\/flat","extension\/shipping\/free","extension\/shipping\/item","extension\/shipping\/parcelforce_48","extension\/shipping\/pickup","extension\/shipping\/royal_mail","extension\/shipping\/ups","extension\/shipping\/usps","extension\/shipping\/weight","extension\/theme\/default","extension\/total\/coupon","extension\/total\/credit","extension\/total\/handling","extension\/total\/klarna_fee","extension\/total\/low_order_fee","extension\/total\/reward","extension\/total\/shipping","extension\/total\/sub_total","extension\/total\/tax","extension\/total\/total","extension\/total\/voucher","localisation\/country","localisation\/currency","localisation\/geo_zone","localisation\/language","localisation\/length_class","localisation\/location","localisation\/order_status","localisation\/return_action","localisation\/return_reason","localisation\/return_status","localisation\/stock_status","localisation\/tax_class","localisation\/tax_rate","localisation\/weight_class","localisation\/zone","mail\/affiliate","mail\/customer","mail\/forgotten","mail\/return","mail\/reward","mail\/transaction","marketing\/contact","marketing\/coupon","marketing\/marketing","marketplace\/api","marketplace\/event","marketplace\/extension","marketplace\/install","marketplace\/installer","marketplace\/marketplace","marketplace\/modification","marketplace\/opencartforum","report\/online","report\/report","report\/statistics","sale\/order","sale\/recurring","sale\/return","sale\/voucher","sale\/voucher_theme","search\/search","setting\/setting","setting\/store","startup\/error","startup\/event","startup\/login","startup\/permission","startup\/router","startup\/sass","startup\/startup","tool\/backup","tool\/log","tool\/upload","user\/api","user\/user","user\/user_permission"]}'),
(10, 'Demonstration', '');

-----------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-----------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-----------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-----------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-----------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Килограммы', 'кг'),
(1, 2, 'Kilogram', 'kg'),
(2, 1, 'Граммы', 'г'),
(2, 2, 'Gram', 'g'),
(5, 1, 'Фунты', 'lb'),
(5, 2, 'Pound', 'lb'),
(6, 1, 'Унции', 'oz'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(180, 11, 'Арагацотн', 'AGT', 1),
(181, 11, 'Арарат', 'ARR', 1),
(182, 11, 'Армавир', 'ARM', 1),
(183, 11, 'Гегаркуник', 'GEG', 1),
(184, 11, 'Котайк', 'KOT', 1),
(185, 11, 'Лори', 'LOR', 1),
(186, 11, 'Ширак', 'SHI', 1),
(187, 11, 'Сюник', 'SYU', 1),
(188, 11, 'Тавуш', 'TAV', 1),
(189, 11, 'Вайоц Дзор', 'VAY', 1),
(190, 11, 'Ереван', 'YER', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(337, 20, 'Брест', 'BR', 1),
(338, 20, 'Гомель', 'HO', 1),
(339, 20, 'Минск', 'HM', 1),
(340, 20, 'Гродно', 'HR', 1),
(341, 20, 'Могилев', 'MA', 1),
(342, 20, 'Минская область', 'MI', 1),
(343, 20, 'Витебск', 'VI', 1),
							   
							   
									
										 
														
											  
										  
									
															  
											
															  
															  
(1716, 109, 'Алматинская область', 'AL', 1),
(1717, 109, 'Алматы', 'ALA', 1),
(1718, 109, 'Акмолинская область', 'AM', 1),
(1719, 109, 'Актюбинская область', 'AQ', 1),
(1720, 109, 'Астана', 'AST', 1),
(1721, 109, 'Атырауская область', 'AT', 1),
(1722, 109, 'Западно-Казахстанская область', 'BA', 1),
(1723, 109, 'Байконур', 'BY', 1),
(1724, 109, 'Мангистауская область', 'MA', 1),
(1725, 109, 'Южно-Казахстанская область', 'ON', 1),
(1726, 109, 'Павлодарская область', 'PA', 1),
(1727, 109, 'Карагандинская область', 'QA', 1),
(1728, 109, 'Костанайская область', 'QO', 1),
(1729, 109, 'Кызылординская область', 'QY', 1),
(1730, 109, 'Восточно-Казахстанская область', 'SH', 1),
(1731, 109, 'Северо-Казахстанская область', 'SO', 1),
(1732, 109, 'Жамбылская область', 'ZH', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
							   
								
							  
							   
								
								
										   
															
															 
												 
																   
(2721, 176, 'Республика Хакасия', 'KK', 1),
(2722, 176, 'Забайкальский край', 'ZAB', 1),
(2723, 176, 'Чукотский АО', 'CHU', 1),
(2724, 176, 'Архангельская область', 'ARK', 1),
(2725, 176, 'Астраханская область', 'AST', 1),
(2726, 176, 'Алтайский край', 'ALT', 1),
(2727, 176, 'Белгородская область', 'BEL', 1),
(2728, 176, 'Еврейская АО', 'YEV', 1),
(2729, 176, 'Амурская область', 'AMU', 1),
(2730, 176, 'Брянская область', 'BRY', 1),
(2731, 176, 'Чувашская Республика', 'CU', 1),
(2732, 176, 'Челябинская область', 'CHE', 1),
(2733, 176, 'Карачаево-Черкесия', 'KC', 1),
(2735, 176, 'Таймырский АО', 'TDN', 1),
(2736, 176, 'Республика Калмыкия', 'KL', 1),
(2738, 176, 'Республика Алтай', 'AL', 1),
(2739, 176, 'Чеченская Республика', 'CE', 1),
(2740, 176, 'Иркутская область', 'IRK', 1),
(2741, 176, 'Ивановская область', 'IVA', 1),
(2742, 176, 'Удмуртская Республика', 'UD', 1),
(2743, 176, 'Калининградская область', 'KGD', 1),
(2744, 176, 'Калужская область', 'KLU', 1),
(2745, 176, 'Краснодарский край', 'KDA', 1),
(3483, 176, 'Крым', '43', 1),
(3498, 176, 'Севастополь', '40', 1),
(2746, 176, 'Республика Татарстан', 'TA', 1),
(2747, 176, 'Кемеровская область', 'KEM', 1),
(2748, 176, 'Хабаровский край', 'KHA', 1),
(2749, 176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
(2750, 176, 'Костромская область', 'KOS', 1),
(2751, 176, 'Московская область', 'MOS', 1),
(2752, 176, 'Красноярский край', 'KYA', 1),
(2753, 176, 'Коми-Пермяцкий АО', 'KOP', 1),
(2754, 176, 'Курганская область', 'KGN', 1),
(2755, 176, 'Курская область', 'KRS', 1),
(2756, 176, 'Республика Тыва', 'TY', 1),
(2757, 176, 'Липецкая область', 'LIP', 1),
(2758, 176, 'Магаданская область', 'MAG', 1),
(2759, 176, 'Республика Дагестан', 'DA', 1),
(2760, 176, 'Республика Адыгея', 'AD', 1),
(2761, 176, 'Москва', 'MOW', 1),
(2762, 176, 'Мурманская область', 'MUR', 1),
(2763, 176, 'Республика Кабардино-Балкария', 'KB', 1),
(2764, 176, 'Ненецкий АО', 'NEN', 1),
(2765, 176, 'Республика Ингушетия', 'IN', 1),
(2766, 176, 'Нижегородская область', 'NIZ', 1),
(2767, 176, 'Новгородская область', 'NGR', 1),
(2768, 176, 'Новосибирская область', 'NVS', 1),
(2769, 176, 'Омская область', 'OMS', 1),
(2770, 176, 'Орловская область', 'ORL', 1),
(2771, 176, 'Оренбургская область', 'ORE', 1),
(2772, 176, 'Корякский АО', 'KOR', 1),
(2773, 176, 'Пензенская область', 'PNZ', 1),
(2774, 176, 'Пермский край', 'PER', 1),
(2775, 176, 'Камчатский край', 'KAM', 1),
(2776, 176, 'Республика Карелия', 'KR', 1),
(2777, 176, 'Псковская область', 'PSK', 1),
(2778, 176, 'Ростовская область', 'ROS', 1),
(2779, 176, 'Рязанская область', 'RYA', 1),
(2780, 176, 'Ямало-Ненецкий АО', 'YAN', 1),
(2781, 176, 'Самарская область', 'SAM', 1),
(2782, 176, 'Республика Мордовия', 'MO', 1),
(2783, 176, 'Саратовская область', 'SAR', 1),
(2784, 176, 'Смоленская область', 'SMO', 1),
(2785, 176, 'Санкт-Петербург', 'SPE', 1),
(2786, 176, 'Ставропольский край', 'STA', 1),
(2787, 176, 'Республика Коми', 'KO', 1),
(2788, 176, 'Тамбовская область', 'TAM', 1),
(2789, 176, 'Томская область', 'TOM', 1),
(2790, 176, 'Тульская область', 'TUL', 1),
(2791, 176, 'Ленинградская область', 'LEN', 1),
(2792, 176, 'Тверская область', 'TVE', 1),
(2793, 176, 'Тюменская область', 'TYU', 1),
(2794, 176, 'Республика Башкортостан', 'BA', 1),
(2795, 176, 'Ульяновская область', 'ULY', 1),
(2796, 176, 'Республика Бурятия', 'BU', 1),
(2798, 176, 'Республика Северная Осетия', 'SE', 1),
(2799, 176, 'Владимирская область', 'VLA', 1),
(2800, 176, 'Приморский край', 'PRI', 1),
(2801, 176, 'Волгоградская область', 'VGG', 1),
(2802, 176, 'Вологодская область', 'VLG', 1),
(2803, 176, 'Воронежская область', 'VOR', 1),
(2804, 176, 'Кировская область', 'KIR', 1),
(2805, 176, 'Республика  Саха / Якутия', 'SA', 1),
(2806, 176, 'Ярославская область', 'YAR', 1),
(2807, 176, 'Свердловская область', 'SVE', 1),
(2808, 176, 'Республика Марий Эл', 'ME', 1),
									   
										  
									  
									 
															
																
															  
													  
(3480, 220, 'Черкасская область', '71', 1),
(3481, 220, 'Черниговская область', '74', 1),
(3482, 220, 'Черновицкая область', '77', 1),			
															
(3484, 220, 'Днепропетровская область', '12', 1),
(3485, 220, 'Донецкая область', '14', 1),
(3486, 220, 'Ивано-Франковская область', '26', 1),
(3487, 220, 'Херсонская область', '65', 1),
(3488, 220, 'Хмельницкая область', '68', 1),
(3489, 220, 'Кировоградская область', '35', 1),
(3490, 220, 'Киев', '30', 1),
(3491, 220, 'Киевская область', '32', 1),
(3492, 220, 'Луганская область', '09', 1),
(3493, 220, 'Львовская область', '46', 1),
(3494, 220, 'Николаевская область', '48', 1),
(3495, 220, 'Одесская область', '51', 1),
(3496, 220, 'Полтавская область', '53', 1),
(3497, 220, 'Ровненская область', '56', 1),
														  
(3499, 220, 'Сумская область', '59', 1),
(3500, 220, 'Тернопольская область', '61', 1),
(3501, 220, 'Винницкая область', '05', 1),
(3502, 220, 'Волынская область', '07', 1),
(3503, 220, 'Закарпатская область', '21', 1),
(3504, 220, 'Запорожская область', '23', 1),
(3505, 220, 'Житомирская область', '18', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(4224, 220, 'Харьковская область', '63', 1),
(4233, 109, 'Абайская область', 'AB', 1),
(4234, 109, 'Жетысуская область', 'ZE', 1),
(4235, 109, 'Туркестанская область', 'TU', 1),
(4236, 109, 'Улытауская область', 'UL', 1),
(4237, 109, 'Шымкент', 'SHY', 1),
(4238, 176, 'Сахалинская область', 'SAK', 1);


-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(110, 176, 0, 3, '2022-03-15 10:11:20', '0000-00-00 00:00:00');

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_blog_category`
--

DROP TABLE IF EXISTS `oc_blog_category`;
CREATE TABLE `oc_blog_category` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`blog_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `oc_blog_category`
--

INSERT INTO `oc_blog_category` (`blog_category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `noindex`, `date_added`, `date_modified`) VALUES
(69, 'catalog/demo/demo-balsam-01.jpg', 0, 1, 0, 0, 1, 1, '2014-04-08 03:56:26', '2025-04-18 09:26:51'),
(70, 'catalog/demo/demo-je-03.jpg', 0, 1, 0, 0, 1, 1, '2014-04-08 03:58:55', '2025-04-18 09:27:02'),
(71, 'catalog/demo/blog01.png', 69, 1, 1, 0, 1, 1, '2015-06-18 09:13:57', '2025-04-18 09:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `oc_blog_category_description`
--

DROP TABLE IF EXISTS `oc_blog_category_description`;
CREATE TABLE `oc_blog_category_description` (
  `blog_category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_blog_category_description`
--

INSERT INTO `oc_blog_category_description` (`blog_category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `meta_title`, `meta_h1`) VALUES
(69, 1, 'Новости', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(69, 2, 'News', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(70, 1, 'Обзоры', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(70, 2, 'Reviews', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(71, 1, 'Анонсы', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(71, 2, 'Анонсы', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_blog_category_to_layout`
--

DROP TABLE IF EXISTS `oc_blog_category_to_layout`;
CREATE TABLE `oc_blog_category_to_layout` (
  `blog_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_blog_category_to_layout`
--

INSERT INTO `oc_blog_category_to_layout` (`blog_category_id`, `store_id`, `layout_id`) VALUES
(69, 0, 0),
(71, 0, 0),
(70, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_blog_category_to_store`
--

DROP TABLE IF EXISTS `oc_blog_category_to_store`;
CREATE TABLE `oc_blog_category_to_store` (
  `blog_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_blog_category_to_store`
--

INSERT INTO `oc_blog_category_to_store` (`blog_category_id`, `store_id`) VALUES
(69, 0),
(70, 0),
(71, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_blog_category_path`
--

DROP TABLE IF EXISTS `oc_blog_category_path`;
CREATE TABLE `oc_blog_category_path` (
  `blog_category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_blog_category_path`
--

INSERT INTO `oc_blog_category_path` (`blog_category_id`, `path_id`, `level`) VALUES
(69, 69, 0),
(71, 71, 1),
(71, 69, 0),
(70, 70, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_to_blog_category`
--

DROP TABLE IF EXISTS `oc_article_to_blog_category`;
CREATE TABLE `oc_article_to_blog_category` (
  `article_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `main_blog_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`,`blog_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_article_to_blog_category`
--

INSERT INTO `oc_article_to_blog_category` (`article_id`, `blog_category_id`, `main_blog_category`) VALUES
(124, 0, 0),
(123, 70, 1),
(120, 0, 0),
(125, 69, 1),
(120, 69, 0),
(120, 71, 1),
(124, 71, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_article`
--

DROP TABLE IF EXISTS `oc_article`;
CREATE TABLE `oc_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `date_available` date NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `article_review` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `noindex` tinyint(1) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `gstatus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `oc_article`
--

INSERT INTO `oc_article` (`article_id`, `image`, `date_available`, `sort_order`, `article_review`, `status`, `noindex`, `date_added`, `date_modified`, `viewed`, `gstatus`) VALUES
(120, 'catalog/demo/blog01.png', '0000-00-00', 1, 1, 1, 1, '2014-04-08 04:26:00', '2025-04-18 09:25:41', 73, 0),
(123, 'catalog/demo/demo-kar-03.jpg', '0000-00-00', 1, 1, 1, 1, '2014-03-31 06:55:15', '2025-04-18 05:51:00', 218, 1),
(124, 'catalog/demo/demo-ch-01.jpg', '0000-00-00', 1, 0, 1, 1, '2015-06-29 09:05:38', '2025-04-18 09:26:02', 35, 0),
(125, 'catalog/demo/demo-div-03.jpg', '0000-00-00', 1, 0, 1, 1, '2015-06-29 09:09:03', '2025-04-18 09:26:15', 49, 0);

--
-- Table structure for table `oc_article_description`
--

DROP TABLE IF EXISTS `oc_article_description`;
CREATE TABLE `oc_article_description` (
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`article_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_article_description`
--

INSERT INTO `oc_article_description` (`article_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `meta_title`, `meta_h1`, `tag`) VALUES
(120, 1, 'CMS для интернет магазинов ocStore 3', '&lt;p&gt;Рады представить Вашему вниманию LiveStore 3 основанную на ocStore v3.x. Скачать ее можно на нашем сайте &lt;a href=&quot;https://liveopencart.ru/get&quot; target=&quot;_blank&quot;&gt;liveopencart.ru/get&lt;/a&gt;&lt;/p&gt;\r\n', 'CMS для интернет магазинов LiveStore 3 это бесплатный функциональный движок для создания качественных продающих магазинов.', 'cms, opencart, livestore, ocstore', 'CMS для интернет магазинов LiveStore 3 - Скачать', 'CMS для интернет магазинов LiveStore 3', ''),
(120, 2, 'CMS for online stores ocStore v3.x', '&lt;p&gt;&lt;span class=&quot;long_text&quot; id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Are pleased to announce&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ocStore v3.x&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;based on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;OpenCart v2.x&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'CMS for online stores LiveStore v3.x is a free functional engine to create high-quality shops selling.', 'cms, opencart, livestore, ocstore', 'CMS for online stores LiveStore v3.x - Download', 'CMS for online stores LiveStore v3.x', ''),
(123, 1, 'Обзор на кардиган', '&lt;p&gt;Этот женский кардиган - отличный пример того, как базовая вещь может быть не только практичной, но и стильной. Он выполнен из плотной трикотажной ткани, которая дарит комфорт и тепло в прохладные дни. Классическое сочетание тёмно-синего цвета с бежевой отделкой делает модель универсальной - её легко комбинировать с базовыми вещами гардероба: от джинсов и леггинсов до строгих брюк и платьев-рубашек.&lt;/p&gt;\r\n&lt;p&gt;Особое внимание привлекает геометрический ромбовидный узор - он придаёт кардигану благородный, чуть винтажный характер. Широкая планка на пуговицах, манжеты и низ изделия выполнены из плотной резинки, что позволяет кардигану хорошо держать форму и красиво сидеть на фигуре. Удобные накладные карманы делают модель не только красивой, но и функциональной - в них легко спрятать мелочи вроде телефона или ключей.&lt;/p&gt;\r\n&lt;p&gt;Кардиган застёгивается на крупные бежевые пуговицы и отлично смотрится как в застёгнутом, так и в распахнутом виде. Благодаря прямому силуэту он не сковывает движений и подойдёт для любой фигуры. Это идеальный вариант на каждый день - будь то рабочий офис, прогулка по городу или уютный вечер дома. Такая модель добавит образу уюта, женственности и немного скандинавского шарма.&lt;/p&gt;&lt;p&gt;&lt;/p&gt;\r\n', 'Обзор на кардиган', 'Обзор на кардиган', 'Обзор на кардиган', 'Обзор на кардиган', ''),
(123, 2, 'First Overview', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'First Photo Overview', 'First Photo Overview', 'First Photo Overview', 'First Photo Overview', ''),
(124, 1, 'Как оформить заказ и ничего не забыть — простая инструкция', '&lt;p&gt;Окей, ты нашёл то самое - ту самую кофту, вазу, телефон или набор носков мечты. Кладёшь в корзину... и дальше начинается: &quot;А где тут оформить заказ?&quot;, &quot;А если не дозвонятся?&quot;, &quot;А вдруг не так поймут?&quot;. Спокойно - мы сейчас всё разложим по полочкам.&lt;/p&gt;\r\n&lt;h3&gt;Шаг 1: добавляем в корзину&lt;/h3&gt;\r\n&lt;p&gt;Нашёл нужный товар - смело жми &quot;В корзину&quot;. Не переживай, это ещё не покупка, просто отложил, как на полочку. Хочешь посмотреть позже - пожалуйста. Хочешь убрать - тоже можно. Всё под контролем.&lt;/p&gt;\r\n&lt;h3&gt;Шаг 2: переходим к оформлению&lt;/h3&gt;\r\n&lt;p&gt;Когда корзина полна (или даже если в ней один товар), жми &quot;Оформить заказ&quot;. Там тебе предложат указать имя, телефон, адрес доставки и выбрать способ оплаты. Главное - укажи всё без ошибок, особенно телефон. Мы не будем тебе звонить без повода, но вдруг что-то уточнить - надо.&lt;/p&gt;\r\n&lt;h3&gt;Шаг 3: оплата и ожидание&lt;/h3&gt;\r\n&lt;p&gt;Выбираешь оплату: картой, при получении, переводом - как удобно. После оформления мы отправим тебе письмо или сообщение с подтверждением. А дальше - просто жди курьера или приходи в пункт самовывоза (если выбрал его). Мы обязательно дадим знать, когда всё будет готово.&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;p&gt;Если вдруг что-то пошло не так — пиши или звони. Мы не роботы (ну, почти) и всегда поможем разобраться. Главное - не бойся оформлять заказ. Мы тут, чтобы тебе всё упростить :)&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '', '', '', '', ''),
(124, 2, 'Важная статья', '&lt;p&gt;Это очень важная статья которую нужно прочитать всем важным людям про важные события важных людей :-)&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(125, 1, 'Открытие нашего магазина: всё, что нужно - в одном месте!', '&lt;p&gt;Рады сообщить об открытии нашего универсального интернет-магазина! Теперь вам не нужно тратить время на поиски товаров на разных сайтах - мы собрали всё необходимое в одном удобном пространстве. Одежда и обувь, товары для дома, электроника, подарки, косметика и многое другое - доступно в пару кликов.&lt;/p&gt;\r\n&lt;p&gt;Мы делаем ставку на честные цены, быструю доставку и дружелюбный сервис. Удобная навигация, подробные описания и регулярные акции сделают шопинг не только простым, но и приятным. Присоединяйтесь - добро пожаловать в магазин, где каждый найдёт что-то для себя!&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '', '', '', '', ''),
(125, 2, 'Открытие нашего магазина: всё, что нужно - в одном месте!', '&lt;p&gt;Это первая новость всем новостям новость :-)&lt;br&gt;&lt;/p&gt;', '', '', '', '', '');


-- --------------------------------------------------------

--
-- Table structure for table `oc_article_image`
--

DROP TABLE IF EXISTS `oc_article_image`;
CREATE TABLE `oc_article_image` (
  `article_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3981 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_related`
--

DROP TABLE IF EXISTS `oc_article_related`;
CREATE TABLE `oc_article_related` (
  `article_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Dumping data for table `oc_article_related`
--

INSERT INTO `oc_article_related` (`article_id`, `related_id`) VALUES
(120, 123),
(120, 124),
(123, 120),
(123, 124),
(124, 120),
(124, 123);

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_related_mn`
--

DROP TABLE IF EXISTS `oc_article_related_mn`;
CREATE TABLE `oc_article_related_mn` (
  `article_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_article_related_mn`
--

INSERT INTO `oc_article_related_mn` (`article_id`, `manufacturer_id`) VALUES
(120, 8),
(120, 9),
(123, 8),
(124, 7);

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_related_product`
--

DROP TABLE IF EXISTS `oc_article_related_product`;
CREATE TABLE `oc_article_related_product` (
  `article_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Dumping data for table `oc_article_related_product`
--

INSERT INTO `oc_article_related_product` (`article_id`, `product_id`) VALUES
(30, 123),
(31, 123),
(43, 123),
(45, 123),
(120, 28),
(120, 30),
(120, 41),
(123, 46),
(124, 28),
(124, 30),
(124, 41),
(124, 47);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related_article`
--

DROP TABLE IF EXISTS `oc_product_related_article`;
CREATE TABLE `oc_product_related_article` (
  `article_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_related_article`
--

INSERT INTO `oc_product_related_article` (`article_id`, `product_id`) VALUES
(120, 30),
(120, 40),
(120, 42),
(123, 40),
(123, 42),
(124, 40),
(125, 30);

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_related_wb`
--

DROP TABLE IF EXISTS `oc_article_related_wb`;
CREATE TABLE `oc_article_related_wb` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_article_related_wb`
--

INSERT INTO `oc_article_related_wb` (`article_id`, `category_id`) VALUES
(120, 26),
(123, 20),
(124, 18),
(125, 18),
(125, 27);

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_to_download`
--

DROP TABLE IF EXISTS `oc_article_to_download`;
CREATE TABLE `oc_article_to_download` (
  `article_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_to_layout`
--

DROP TABLE IF EXISTS `oc_article_to_layout`;
CREATE TABLE `oc_article_to_layout` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_article_to_layout`
--

INSERT INTO `oc_article_to_layout` (`article_id`, `store_id`, `layout_id`) VALUES
(120, 0, 0),
(123, 0, 0),
(124, 0, 0),
(125, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_article_to_store`
--

DROP TABLE IF EXISTS `oc_article_to_store`;
CREATE TABLE `oc_article_to_store` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_article_to_store`
--

INSERT INTO `oc_article_to_store` (`article_id`, `store_id`) VALUES
(120, 0),
(123, 0),
(124, 0),
(125, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_review_article`
--

DROP TABLE IF EXISTS `oc_review_article`;
CREATE TABLE `oc_review_article` (
  `review_article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_article_id`),
  KEY `article_id` (`article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_review_article`
--

INSERT INTO `oc_review_article` (`review_article_id`, `article_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(11, 123, 0, 'Лена Шестакова', 'Спасибо за отличный обзор, обязательно в ближайшее время приобрету себе такой!', 5, 1, '2025-04-08 05:53:25', '2025-04-18 05:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related_wb`
--

DROP TABLE IF EXISTS `oc_product_related_wb`;
CREATE TABLE `oc_product_related_wb` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_related_wb`
--

INSERT INTO `oc_product_related_wb` (`product_id`, `category_id`) VALUES
(33, 20),
(41, 26),
(41, 27),
(43, 18),
(44, 18),
(45, 18);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related_mn`
--

DROP TABLE IF EXISTS `oc_product_related_mn`;
CREATE TABLE `oc_product_related_mn` (
  `product_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oc_product_related_mn`
--

INSERT INTO `oc_product_related_mn` (`product_id`, `manufacturer_id`) VALUES
(42, 8),
(41, 8),
(30, 9),
(47, 7);

-- --------------------------------------------------------
