
CREATE TABLE `fbconnect_users` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `userid` int(14) NOT NULL,
  `connectid` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `groups` (
  `groupid` int(14) NOT NULL AUTO_INCREMENT,
  `lead_userid` int(14) NOT NULL,
  `total_amt` int(10) NOT NULL,
  `num_payers` int(2) NOT NULL DEFAULT '0',
  `paypal_email` varchar(150) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `payments` (
  `paymentid` int(14) NOT NULL AUTO_INCREMENT,
  `userid` int(14) NOT NULL,
  `groupid` int(14) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `paid_date` datetime NOT NULL,
  `pay_amt` int(10) NOT NULL,
  PRIMARY KEY (`paymentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `userid` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `avatar` varchar(150) NOT NULL,
  `fbid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
