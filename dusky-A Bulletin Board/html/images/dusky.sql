-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 26, 2012 at 07:36 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dusky`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE IF NOT EXISTS `bookmarks` (
  `bid` int(20) NOT NULL,
  `id` int(20) NOT NULL,
  `feedid` int(20) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookmarks`
--


-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(10) NOT NULL,
  `post_id` int(20) NOT NULL,
  `content` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `user_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `content`, `date`, `user_id`, `user_name`) VALUES
(1, 1, 'gdsjfgkdfskdshg', '2012-03-26', '1', 'winnie224'),
(2, 7, 'qwertyiuvjdkls', '2012-03-26', '2', 'abc'),
(3, 1, 'comment2 ', '2012-03-27', '2', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE IF NOT EXISTS `community` (
  `comm_id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `details` varchar(50000) NOT NULL,
  `users` int(10) NOT NULL DEFAULT '0',
  `logo` varchar(20) NOT NULL DEFAULT 'images/undefined.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`comm_id`, `name`, `details`, `users`, `logo`) VALUES
(1, 'Go Green', 'A social community for all those nature lovers...take a step ahead and join us to save Mother Earth', 2, 'images/undefined.jpg'),
(2, 'Teknogeeks', 'a bundle of all the gadget lovers..intresting and innovative users are welcome.', 4, 'images/undefined.jpg'),
(3, '', 'details', 3, 'images/undefined.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comm_mem`
--

CREATE TABLE IF NOT EXISTS `comm_mem` (
  `comm_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comm_mem`
--

INSERT INTO `comm_mem` (`comm_id`, `user_id`) VALUES
(1, 1),
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country_database`
--

CREATE TABLE IF NOT EXISTS `country_database` (
  `country_id` int(5) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  `UN_ISO_numeric` varchar(4) NOT NULL,
  `ITU_calling` varchar(6) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=254 ;

--
-- Dumping data for table `country_database`
--

INSERT INTO `country_database` (`country_id`, `country_name`, `UN_ISO_numeric`, `ITU_calling`) VALUES
(1, 'Afghanistan', '004', '93'),
(2, 'Ãland Islands', '248', ''),
(3, 'Albania', '008', '355'),
(4, 'Alderney', '', ''),
(5, 'Algeria (el Djazaã¯r)', '012', '213'),
(6, 'American Samoa', '016', '1-684'),
(7, 'Andorra', '020', '376'),
(8, 'Angola', '024', '244'),
(9, 'Anguilla', '660', '1-264'),
(10, 'Antarctica', '010', ''),
(11, 'Antigua And Barbuda', '028', '1-268'),
(12, 'Argentina', '032', '54'),
(13, 'Armenia', '051', '7'),
(14, 'Aruba', '533', '297'),
(15, 'Ascension Island', '', '247'),
(16, 'Australia', '036', '61'),
(17, 'Austria', '040', '43'),
(18, 'Azerbaijan', '031', '994'),
(19, 'Bahamas', '044', '1-242'),
(20, 'Bahrain', '048', '973'),
(21, 'Bangladesh', '050', '880'),
(22, 'Barbados', '052', '1-246'),
(23, 'Belarus', '112', '375'),
(24, 'Belgium', '056', '32'),
(25, 'Belize', '084', '501'),
(26, 'Benin', '204', '229'),
(27, 'Bermuda', '060', '1-441'),
(28, 'Bhutan', '064', '975'),
(29, 'Bolivia', '068', '591'),
(30, 'Bosnia And Herzegovina', '070', '387'),
(31, 'Botswana', '072', '267'),
(32, 'Bouvet Island', '074', ''),
(33, 'Brazil', '076', '55'),
(34, 'British Indian Ocean Territory', '086', ''),
(35, 'Brunei Darussalam', '096', '673'),
(36, 'Bulgaria', '100', '359'),
(37, 'Burkina Faso', '854', '226'),
(38, 'Burundi', '108', '257'),
(39, 'Cambodia', '116', '855'),
(40, 'Cameroon', '120', '237'),
(41, 'Canada', '124', '1'),
(42, 'Cape Verde', '132', '238'),
(43, 'Cayman Islands', '136', '1-345'),
(44, 'Central African Republic', '140', '236'),
(45, 'Chad (tchad)', '148', '235'),
(46, 'Channel Islands', '830', ''),
(47, 'Chile', '152', '56'),
(48, 'China', '156', '86'),
(49, 'Christmas Island', '162', ''),
(50, 'Cocos (keeling) Islands', '166', ''),
(51, 'Colombia', '170', '57'),
(52, 'Comoros', '174', '269'),
(53, 'Congo, Republic Of', '178', '242'),
(54, 'Congo, The Democratic Republic Of The (formerly Zaire)', '180', '243'),
(55, 'Cook Islands', '184', '682'),
(56, 'Costa Rica', '188', '506'),
(57, 'Cã”te D''ivoire (ivory Coast)', '384', '225'),
(58, 'Croatia (hrvatska)', '191', '385'),
(59, 'Cuba', '192', '53'),
(60, 'Cyprus', '196', '357'),
(61, 'Czech Republic', '203', '420'),
(62, 'Denmark', '208', '45'),
(63, 'Djibouti', '262', '253'),
(64, 'Dominica', '212', '1-767'),
(65, 'Dominican Republic', '214', '1-809'),
(66, 'Ecuador', '218', '593'),
(67, 'Egypt', '818', '20'),
(68, 'El Salvador', '222', '503'),
(69, 'Equatorial Guinea', '226', '240'),
(70, 'Eritrea', '232', '291'),
(71, 'Estonia', '233', '372'),
(72, 'Ethiopia', '231', '251'),
(73, 'European Union', '', ''),
(74, 'Faeroe Islands', '234', '298'),
(75, 'Falkland Islands (malvinas)', '238', '500'),
(76, 'Fiji', '242', '679'),
(77, 'Finland', '246', '358'),
(78, 'France', '250', '33'),
(79, 'French Guiana', '254', '594'),
(80, 'French Polynesia', '258', '689'),
(81, 'French Southern Territories', '260', ''),
(82, 'Gabon', '266', '241'),
(83, 'Gambia, The', '270', '220'),
(84, 'Georgia', '268', ''),
(85, 'Germany (deutschland)', '276', '49'),
(86, 'Ghana', '288', '233'),
(87, 'Gibraltar', '292', '350'),
(88, 'Great Britain', '826', '44'),
(89, 'Greece', '300', '30'),
(90, 'Greenland', '304', '299'),
(91, 'Grenada', '308', '1-473'),
(92, 'Guadeloupe', '312', '590'),
(93, 'Guam', '316', '1-671'),
(94, 'Guatemala', '320', '502'),
(95, 'Guernsey', '', ''),
(96, 'Guinea', '324', '224'),
(97, 'Guinea-bissau', '624', '245'),
(98, 'Guyana', '328', '592'),
(99, 'Haiti', '332', '509'),
(100, 'Heard Island And Mcdonald Islands', '334', ''),
(101, 'Honduras', '340', '504'),
(102, 'Hong Kong (special Administrative Region Of China)', '344', '852'),
(103, 'Hungary', '348', '36'),
(104, 'Iceland', '352', '354'),
(105, 'India', '356', '91'),
(106, 'Indonesia', '360', '62'),
(107, 'Iran (islamic Republic Of Iran)', '364', '98'),
(108, 'Iraq', '368', '964'),
(109, 'Ireland', '372', '353'),
(110, 'Isle Of Man', '833', ''),
(111, 'Israel', '376', '972'),
(112, 'Italy', '380', '39'),
(113, 'Jamaica', '388', '1-876'),
(114, 'Japan', '392', '81'),
(115, 'Jersey', '', ''),
(116, 'Jordan (hashemite Kingdom Of Jordan)', '400', '962'),
(117, 'Kazakhstan', '398', '7'),
(118, 'Kenya', '404', '254'),
(119, 'Kiribati', '296', '686'),
(120, 'Korea (democratic Peoples Republic Of [north] Korea)', '408', '850'),
(121, 'Korea (republic Of [south] Korea)', '410', '82'),
(122, 'Kuwait', '414', '965'),
(123, 'Kyrgyzstan', '417', '996'),
(124, 'Lao People''s Democratic Republic', '418', '856'),
(125, 'Latvia', '428', '371'),
(126, 'Lebanon', '422', '961'),
(127, 'Lesotho', '426', '266'),
(128, 'Liberia', '430', '231'),
(129, 'Libya (libyan Arab Jamahirya)', '434', '218'),
(130, 'Liechtenstein (fã¼rstentum Liechtenstein)', '438', '423'),
(131, 'Lithuania', '440', '370'),
(132, 'Luxembourg', '442', '352'),
(133, 'Macao (special Administrative Region Of China)', '446', '853'),
(134, 'Macedonia (former Yugoslav Republic Of Macedonia)', '807', '389'),
(135, 'Madagascar', '450', '261'),
(136, 'Malawi', '454', '265'),
(137, 'Malaysia', '458', '60'),
(138, 'Maldives', '462', '960'),
(139, 'Mali', '466', '223'),
(140, 'Malta', '470', '356'),
(141, 'Marshall Islands', '584', '692'),
(142, 'Martinique', '474', '596'),
(143, 'Mauritania', '478', '222'),
(144, 'Mauritius', '480', '230'),
(145, 'Mayotte', '175', '269'),
(146, 'Mexico', '484', '52'),
(147, 'Micronesia (federated States Of Micronesia)', '583', '691'),
(148, 'Moldova', '498', '373'),
(149, 'Monaco', '492', '377'),
(150, 'Mongolia', '496', '976'),
(151, 'Montenegro', '499', '381'),
(152, 'Montserrat', '500', '1-664'),
(153, 'Morocco', '504', '212'),
(154, 'Mozambique (moã§ambique)', '508', '258'),
(155, 'Myanmar (formerly Burma)', '104', '95'),
(156, 'Namibia', '516', '264'),
(157, 'Nauru', '520', '674'),
(158, 'Nepal', '524', '977'),
(159, 'Netherlands', '528', '31'),
(160, 'Netherlands Antilles', '530', '599'),
(161, 'New Caledonia', '540', '687'),
(162, 'New Zealand', '554', '64'),
(163, 'Nicaragua', '558', '505'),
(164, 'Niger', '562', '227'),
(165, 'Nigeria', '566', '234'),
(166, 'Niue', '570', '683'),
(167, 'Norfolk Island', '574', ''),
(168, 'Northern Mariana Islands', '580', '1-670'),
(169, 'Norway', '578', '47'),
(170, 'Oman', '512', '968'),
(171, 'Pakistan', '586', '92'),
(172, 'Palau', '585', '680'),
(173, 'Palestinian Territories', '275', '970'),
(174, 'Panama', '591', '507'),
(175, 'Papua New Guinea', '598', '675'),
(176, 'Paraguay', '600', '595'),
(177, 'Peru', '604', '51'),
(178, 'Philippines', '608', '63'),
(179, 'Pitcairn', '612', ''),
(180, 'Poland', '616', '48'),
(181, 'Portugal', '620', '351'),
(182, 'Puerto Rico', '630', '1'),
(183, 'Qatar', '634', '974'),
(184, 'Rã‰union', '638', '262'),
(185, 'Romania', '642', '40'),
(186, 'Russian Federation', '643', '7'),
(187, 'Rwanda', '646', '250'),
(188, 'Saint Helena', '654', '290'),
(189, 'Saint Kitts And Nevis', '659', '1-869'),
(190, 'Saint Lucia', '662', '1-758'),
(191, 'Saint Pierre And Miquelon', '666', '508'),
(192, 'Saint Vincent And The Grenadines', '670', '1-784'),
(193, 'Samoa (formerly Western Samoa)', '882', '685'),
(194, 'San Marino (republic Of)', '674', '378'),
(195, 'Sao Tome And Principe', '678', '239'),
(196, 'Saudi Arabia (kingdom Of Saudi Arabia)', '682', '966'),
(197, 'Senegal', '686', '221'),
(198, 'Serbia (republic Of Serbia)', '688', '381'),
(199, 'Seychelles', '690', '248'),
(200, 'Sierra Leone', '694', '232'),
(201, 'Singapore', '702', '65'),
(202, 'Slovakia (slovak Republic)', '703', '421'),
(203, 'Slovenia', '705', '386'),
(204, 'Solomon Islands', '90', '677'),
(205, 'Somalia', '706', '252'),
(206, 'South Africa (zuid Afrika)', '710', '27'),
(207, 'South Georgia And The South Sandwich Islands', '239', ''),
(208, 'Soviet Union (internet Code Still Used)', '', ''),
(209, 'Spain (espaã±a)', '724', '34'),
(210, 'Sri Lanka (formerly Ceylon)', '144', '94'),
(211, 'Sudan', '736', '249'),
(212, 'Suriname', '740', '597'),
(213, 'Svalbard And Jan Mayen', '744', ''),
(214, 'Swaziland', '748', '268'),
(215, 'Sweden', '752', '46'),
(216, 'Switzerland (confederation Of Helvetia)', '756', '41'),
(217, 'Syrian Arab Republic', '760', '963'),
(218, 'Taiwan ("chinese Taipei" For Ioc)', '158', '886'),
(219, 'Tajikistan', '762', '992'),
(220, 'Tanganyika', '', ''),
(221, 'Tanzania', '834', '255'),
(222, 'Thailand', '764', '66'),
(223, 'Timor-leste (formerly East Timor)', '626', '670'),
(224, 'Togo', '768', '228'),
(225, 'Tokelau', '772', '690'),
(226, 'Tonga', '776', '676'),
(227, 'Trinidad And Tobago', '780', '1-868'),
(228, 'Tunisia', '788', '216'),
(229, 'Turkey', '792', '90'),
(230, 'Turkmenistan', '795', '993'),
(231, 'Turks And Caicos Islands', '796', '1-649'),
(232, 'Tuvalu', '798', '688'),
(233, 'Uganda', '800', '256'),
(234, 'Ukraine', '804', '380'),
(235, 'United Arab Emirates', '784', '971'),
(236, 'United Kingdom (great Britain)', '826', '44'),
(237, 'United States', '840', '1'),
(238, 'United States Minor Outlying Islands', '581', ''),
(239, 'Uruguay', '858', '598'),
(240, 'Uzbekistan', '860', '998'),
(241, 'Vanuatu', '548', '678'),
(242, 'Vatican City (holy See)', '336', '379'),
(243, 'Venezuela', '862', '58'),
(244, 'Viet Nam', '704', '84'),
(245, 'Virgin Islands, British', '92', '1-284'),
(246, 'Virgin Islands, U.s.', '850', '1-340'),
(247, 'Yugoslavia (internet Code Still Used)', '', ''),
(248, 'Wallis And Futuna', '876', '681'),
(249, 'Western Sahara (formerly Spanish Sahara)', '732', ''),
(250, 'Yemen (yemen Arab Republic)', '887', '967'),
(251, 'Zambia (formerly Northern Rhodesia)', '894', '260'),
(252, 'Zanzibar', '', ''),
(253, 'Zimbabwe', '716', '263');

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE IF NOT EXISTS `feeds` (
  `feedid` int(20) NOT NULL,
  `title` varchar(2000) NOT NULL,
  `details` varchar(50000) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `images` varchar(2000) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `posted_by` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`feedid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`feedid`, `title`, `details`, `date`, `time`, `images`, `Category`, `posted_by`) VALUES
(1, 'Pakistan may junk Kashmir issue temporarily', 'SRINAGAR: The Pakistani establishment, in a bid to carry forward its peace plan on Kashmir in the wake of internal crisis in that country, has invited leaders of both the factions of All-Party Hurriyat Conference to Islamabad for talks to explain its "changed position" on Kashmir. A source close to the Hurriyat said there is a move to shelve the Kashmir issue "for the time being" in the wake of internal political crisis in Pakistan.      Pakistan''s high commissioner in New Delhi, Shahid Malik, accompanied by a few other diplomatic staff, drove to hardline Hurriyat leader Syed Ali Shah Geelani''s winter address in Delhi on Saturday and handed him an invitation letter from foreign minister Hina Rabbani Khar. Malik has already invited the chairman of the moderate wing of the Hurriyat, Mirwaiz Umar Farooq, along with Shabir Shah and Nayeem Khan, to Pakistan, for talks on its change perception on Kashmir.      Geelani''s spokesman Ayaz Akbar said the Pakistani diplomats visited the Hurriyat leader in Delhi and Geelani told Malik that he will speak to his colleagues and let the Pakistan government know about his decision. Incidentally, Geelani has never visited any foreign country accept Saudi Arabia where he went for Haj.      Foreign ministry sources in New Delhi said Geelani will be issued a passport if he applies for it in view of the invitation by the Pakistani government. Mirwaiz Umar Farooq, who arrived here on Sunday, said he would leave for New Delhi again in a week for another round of talks with Pakistani diplomats at the Pakistani embassy.      Earlier on Saturday, second level Hurriyat leaders including Shabir Shah, Nayeem Khan, Molvi Agha Hassan and Shahid-ul-Islam held a round of talks with high commissioner Malik. This was their second meeting in less than a week, Nayeem Khan told TOI. "We had a healthy discussion on the Kashmir issue and our proposed Pakistan visit,'''' Khan added.      Shabir Shah, while expressing satisfaction over the outcome of the meeting, said, "The Pakistani leaders reiterated their moral, political and logistical support to the Kashmir cause.'''' He said that Pakistani diplomats and politicians said they are eagerly awaiting them in Islamabad for further talks.', '2012-02-27', '00:00:03', '', 'International', 0),
(2, 'Virender Sehwag, Sachin Tendulkar could be ''rested'' for Asia Cup', 'NEW DELHI: As India''s tour Down Under nears a disastrous end - they are virtually out of the ODI tri-series after losing to Australia on Sunday - the national selectors are in a quandary over whether to drop out-of-form opening batsman Virender Sehwag from the squad for the Asia Cup in March.      Apart from a poor run in Tests and having scored just 35 runs in his last four ODI outings, Sehwag has also been at the centre of an unsavoury ego clash with skipper MS Dhoni. The row was needless, feel sources in the Indian cricket board.      The board also wants Sachin Tendulkar to be rested, so that he can take his mind off the pressure of scoring his 100th international ton, BCCI sources said.      Though they have not singled out any specific player, the selectors, who meet in Mumbai on Wednesday, will also keep the "attitude of players" in mind while picking the team.      There is a feeling among a section of selectors that given the manner of his dismissals, the Delhi dasher needs a break to reinvent himself. Others feel Sehwag, going purely by reputation, deserves a longer rope and shouldn''t be singled out for what is a collective failure by MS Dhoni''s team.      In all likelihood, the selectors may choose to ''rest'' him. "He is too big a player to be dropped. However, there could be a consensus on resting Sehwag," a BCCI source told TOI, adding: "The sympathies of the selectors are with Sehwag and he could have been a replacement as ODI skipper in place of M S Dhoni had he been among runs."      There is also pressure on Suresh Raina to keep his place. With the top order floundering, Ajinkya Rahane may get a look-in for the tournament which gets underway in Bangladesh from the second week of March. Another player who may make a comeback in the middle-order is Tamil Nadu''s wicketkeeper-batsman Dinesh Karthik. Bengal pacer Ashok Dinda, who sizzled on the domestic circuit this year, can also hope for a place.', '2012-02-27', '03:30:07', '', 'Sports', 0),
(3, 'youngest cm of up', 'Akhilesh yadav take the responcibility of the chief minister of uttar pradesh ', '2012-03-12', '16:08:00', '', 'National', 0),
(5, 'after a decade ,all tickets to cost more', 'express 2nd class fare increase by 2p per km.', '2012-03-15', '11:55:05', '', 'National', 0),
(6, 'World''s first fetal lung surgery saves infant', 'alaitz,16 maonth -old now,was operated in 2010', '2012-03-15', '14:15:05', '', 'International', 0),
(7, 'HC relief to MCx-SX in row with Sebi', 'Gives Regulator a month to reconsider Bourse''s Plea to offer equity trading ', '2012-03-15', '14:15:05', '', 'Business', 0),
(8, 'The most charitable mums in Hollywood', 'Actresses Sandra Buloock and Angelina Jolie have been honoured by a leading magzine after topping the list  of most charitable mothers in Hollywood industries', '2012-03-13', '16:08:00', '', 'Entertainment', 0),
(9, 'Hockey team books berth to London ', 'India routed France 8-1 in the final of the olympic qualifying tournament', '2012-02-26', '20:08:00', '', 'sports', 0),
(10, 'Arsenal''s comeback stuns spurs', 'Manchester United''s Ryan Giggs saves United against Norwich', '2012-02-26', '00:05:00', '', 'sports', 0),
(11, 'India has a proof Iran behind the blast', '', '2012-02-26', '14:15:05', '', 'National', 0),
(12, 'Ramdev meets, congratulates Akhilesh Yadav', 'Lucknow: Yoga guru Baba Ramdev on Saturday met Samajwadi Party supremo Mulayam Singh Yadav and Chief Minister Akhilesh Yadav and hoped Uttar Pradesh would become a corruption-free state under their stewardship. "Ramdev congratulated and blessed the Chief Minister during the meeting," SP spokesman Rajendra Chaudhary said. Ramdev said he was hopeful the Akhilesh government would work honestly and in public interest to take the state on the path to progress and development. Talking to reporters, the yoga guru hoped Uttar Pradesh would become a corruption-free state under his leadership. Ramdev said he would launch a nation-wide agitation on bringing black', '2012-03-17', '21:59:02', '', 'National', 0),
(13, '''Budget, unless rectified, will doom economy''', 'New Delhi: Terming the Union Budget as "ridiculous", Janata Party President Subramanian Swamy on Saturday said that the fiscal proposals unless rectified will "doom the economy". "The 2012-13 Budget figures and numbers are all cockeyed. For example, fiscal deficit of 4.79 lakh crore rupees in 2012-13 targeted to be 5.1 per cent of GDP means a GDP growth of 20.6 per cent in one year. This is ridiculous even in current prices," he said in a statement here. "Most of the budget numbers like fiscal deficit figures, are ridiculous, or concocted or plain inconsistent... This budget unless rectified will doom', '2012-03-17', '21:20:00', '', 'National', 0),
(14, '26 police officials sacked for corruption', 'Patna: Bihar has dismissed 26 police officials for corruption, officials said on Saturday. Bihar police chief Abhyanand said the sacking took place in the last two and a half years. "They have been dismissed after charges of corruption were upheld against them following departmental inquiry," Abhyanand told IANS. He said corruption will not be tolerated. "Action against corrupt police officials will continue in future also." He said that over four dozen cases had been lodged against police officers for corruption in the last few years', '2012-03-17', '22:22:02', '', 'National', 0),
(15, 'Sachin''s 100 centuries: an uncomplicated truth', 'Rise, cheer, shed a tear, or just clap in awe. The milestone – which for some was awaited with bated breath, for others seen as merely a number, for some a zenith – has finally arrived. He searched it the world over, for over a year, not knowing that the landmark would come near to home. And today, March 16, 2012, he finally found it, in Bangladesh. Sachin Tendulkar is a 100-century man. A hundred international centuries sounds insane, almost nonsensical, but it is no longer a myth or illusion. It is an uncomplicated truth, one that makes the record book feel a lot heavier. It would be foolish to think that the landmark weighed Tendulkar down so as to affect his game. When 99 centuries weren''t easy, how could the 100th be any less difficult?', '2012-03-17', '13:01:00', '', 'sports', 0),
(16, 'Osama planned to kill Obama, attack US: report0', 'Washington: In his final days, al Qaeda chief Osama bin Laden was planning assassination attempts against US President Barack Obama and another attack on the American soil, according to a media report. "Tapping away at his computer in the study of the suburban compound in Abbottabad...Laden wrote memos urging his followers to continue to try to attack the US, suggesting, for instance, they mount assassination attempts against President Obama', '2012-03-17', '07:08:01', '', 'International', 0),
(17, 'WikiLeaks'' Assange eyes Australian Senate', 'Sydney: The founder and leader of WikiLeaks, Julian Assange, plans to run for a seat in Australia''s Upper House of Parliament, the anti-secrecy group announced on Twitter on Saturday. The comments could not be immediately confirmed. Australian-born Assange, 40, is currently under house arrest in Britain and fighting extradition to Sweden for questioning over alleged sex crimes. ', '2012-03-17', '17:32:00', '', 'International', 0),
(18, 'Afghanistan seeks early security handover: Karzai', 'Kabul: The US and the Afghan governments should work together for an early handover of security responsibility, Afghanistan President Hamid Karzai has said. According to a Karzai office statement, the Afghan president told visiting US Defence Secretary Leon Panetta Thursday that "both sides should work together for a security handover from international forces to Afghan troops to take place by 2013 instead of 2014', '2012-03-17', '05:05:00', '', 'International', 0),
(19, 'Asian woman, kids beaten up in Britain', 'London: In what is being termed as a racial attack, a woman of Asian origin was beaten up and her three daughters ill-treated by three people who tried to steal a packet of crisps from her shop in Britain. Saly Chowdhury was left with a black eye and facial injuries after being bashed up by two men and a woman at her shop, the Hendon Valley Stores, in Sunderland', '2012-03-16', '00:00:12', '', '', 0),
(20, 'Asian woman, kids beaten up in Britain', 'London: In what is being termed as a racial attack, a woman of Asian origin was beaten up and her three daughters ill-treated by three people who tried to steal a packet of crisps from her shop in Britain. Saly Chowdhury was left with a black eye and facial injuries after being bashed up by two men and a woman at her shop, the Hendon Valley Stores, in Sunderland', '2012-03-16', '12:45:00', '', 'International', 0),
(21, 'Earthquake measuring 6.8 shakes northern Japan', 'Tokyo: A strong earthquake shook northern Japan on Wednesday evening, and a small tsunami was forecast for part of its Pacific coast. The Japan Meteorological Agency said the tremor was 6.8 magnitude. A tsunami of about a half-meter was forecast for Hokkaido island''s central and eastern Pacific coast, and for Aomori and Iwate prefectures. Iwate prefecture, or state, was heavily damaged by last year''s earthquake and tsunami.', '2012-03-14', '15:14:00', '', 'International', 0),
(22, 'World Bank approves $ 4.3 bn aid to India', 'Washington: The World Bank has announced $ 4.3 billion financial aid to India through a new innovative and flexible financing arrangement to help the country fight poverty. This arrangement, while facilitating a $ 4.3 billion increase in support to India, is designed to maintain International Bank for Reconstruction and Development''s (IBRD) - which is its lending arm - net exposure within the limit of $ 17.5 billion established by it. ...', '2012-03-15', '09:56:02', '', 'International', 0),
(23, 'Jailed cronies of Mubarak offer assets to get free', 'Cairo: Facing long jail terms, ousted Egyptian President Hosni Mubarak''s close aides are offering their ill-gotten assets in exchange to be set free. Ex-Housing Minister Ahmed al-Maghrabi and Egyptian tycoon Ahmed Ezz, who is also a prominent member of the former ruling party, have offered their assets, believed to be running into millions of dollars to stay out of jail, the ''Egypt Independent'' reported.', '2012-03-15', '16:08:00', '', 'International', 0),
(24, 'Swansea beat Fulham 3-0 to move eighth in EPL', 'Swansea completed their first run of three successive Premier League victories by beating Fulham 3-0', '2012-03-16', '22:22:02', '', 'sports', 0),
(25, 'Nadal, Federer to play in Indian Wells semis', 'Meanwhile, Victoria Azarenka set up a final clash with Maria Sharapova after defeating Angelique Kerber.', '2012-03-17', '01:05:00', '', 'sports', 0),
(26, 'Hamilton leads McLaren 1-2 in Aus GP qualifying', 'Mercedes'' Schumacher qualified fourth, ahead of the Red Bull pair of Webber and Vette', '2012-03-17', '23:26:00', '', 'sports', 0),
(27, 'Budget 2012-13: Employees PF rate cut = more cuts, says BDO India', 'In an interview to CNBCTV-18 Shailesh Haribhakti talks about the current environment and the possible action that the RBI will take, keeping in mind the way EPF rate was just a day before the Budget. ', '2012-03-16', '16:06:56', '', 'Business', 0),
(28, 'Did you know? Infra bonds may no longer help you save tax', 'If you were celebrating about some small tax saving gains due to the Union Budget, then you actually need to stop and see whether you will actually end up with some benefits at the end of the day.', '2012-03-16', '15:14:00', '', 'Business', 0),
(29, 'Over Rs 1 crore cash seized in Chhattisgarh', 'Raipur, Mar 17 (PTI) Police today claimed to have seized over Rs one crore cash from two businessmen in Naxal-affected Kondagaon district of Chhhattisgarh. District Superintendent of Police, Deepak Jha, told PTI over phone that police intercepted a Toyota Corolla car in Keshkal Police Station limits, and found Rs 1 crore 15 lakh inside. Driver, as well as two Raipur-based businessmen -- Prashant Goyal and Sanjay Bothra -- who were travelling by the car were being questioned, he said. According to police, they had received information about a suspicious-looking car heading to Raipur from Jagdalpur, and tried to intercept it at Farasgaon in Bastar, but the driver did not stop. According to Goyal and Bothra, the money was meant for a land purchase in Bastar, which did not work out. Police did not rule out Naxal links to the money. PTI SNG NSK   ', '2012-03-17', '14:15:05', '', 'Business', 0),
(30, 'Budget Analysis: Will incremental cess hurt ONGC, Oil India?', 'Upstream companies like ONGC, Oil India and Cairn India which are involved in exploration and production activities have a reason to worry as their toplines will be impacted with this move.', '2012-03-17', '14:29:00', '', 'Business', 0),
(31, 'Budget News: Excise duty hike unlikely to hurt cigarette cos', 'Finance Minister Pranab Mukherjee in his Budget for 2012-13 on Friday proposed a hike in basic excise duty on cigarettes of more than 65mm length by 10%. It will be charged on an ad valorem basis on 5', '2012-03-17', '15:14:00', '', 'Business', 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `uid` int(20) NOT NULL,
  `feedid` int(200) NOT NULL DEFAULT '0',
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'avail'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`uid`, `feedid`, `Date`, `Time`, `Status`) VALUES
(1, 1, '2012-02-27', '04:00:00', 'delete'),
(1, 2, '2012-02-16', '14:00:00', 'delete');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(20) NOT NULL,
  `comm_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `content` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `comm_id`, `user_id`, `user_name`, `date`, `content`) VALUES
(1, 1, 1, 'winnie224', '2012-03-26', 'bdcb'),
(2, 1, 1, 'winnie224', '2012-03-26', 'qwewryuewt'),
(3, 2, 1, 'winnie224', '2012-03-26', 'bdskcb'),
(5, 2, 3, 'abc', '2012-03-26', 'dsffffffffffffff'),
(6, 1, 1, 'winnie224', '2012-03-26', 'bvdmx'),
(7, 1, 1, 'winnie224', '2012-03-26', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `sticky_notes`
--

CREATE TABLE IF NOT EXISTS `sticky_notes` (
  `note_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `note` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sticky_notes`
--

INSERT INTO `sticky_notes` (`note_id`, `user_id`, `note`, `date`, `time`) VALUES
(2, 1, ' cx, ', '2012-03-25', '15:33:55'),
(5, 1, 'nv,fnc ', '2012-03-25', '15:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `tid` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `content` varchar(20000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`tid`, `user_id`, `content`, `date`) VALUES
(1, 1, 'dsx', '2012-03-27'),
(2, 1, 'abc', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `userdb`
--

CREATE TABLE IF NOT EXISTS `userdb` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `avatar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdb`
--

INSERT INTO `userdb` (`id`, `uname`, `fname`, `lname`, `email`, `password`, `dob`, `gender`, `contact`, `country`, `avatar`) VALUES
(1, 'winnie224', 'Vineeta', 'Anand', 'visacjjlzx', '668026', '1999-11-12', 'Ms', '11111', '105', 'images/avatars/a16.bmp'),
(2, 'aabc', 'hdkfh', 'hdflj', 'bkh', 'qwerty', '1971-10-12', 'Ms', '647568', '1', 'images/avatars/a1.bmp');
