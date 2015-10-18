-- phpMyAdmin SQL Dump
-- version 2.11.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 16. Januar 2009 um 22:46
-- Server Version: 5.0.67
-- PHP-Version: 5.2.6-2ubuntu4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Datenbank: `transfer`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `centre`
--

CREATE TABLE IF NOT EXISTS `centre` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(55) NOT NULL,
  `str_identifier` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ctr_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `centre`
--

INSERT INTO `centre` (`id`, `name`, `str_identifier`, `city`) VALUES
(1, 'Buddha-Haus', 'buddha_haus', ''),
(2, 'Zweites Haus', 'zweites_haus', ''),
(3, 'Test Haus', 'test_haus', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `centre_fk` varchar(20) NOT NULL,
  `centre_id` varchar(55) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `title`, `date`, `centre_fk`, `centre_id`) VALUES
(1, 'buddha-Haus2title', '2009-01-14', 'buddha_haus', 'Kurs BH1'),
(2, 'buddha-Haus2title', '2009-01-30', 'buddha_haus', 'Kurs BH2'),
(3, 'buddha-Haus3title', '2009-01-30', 'buddha_haus', 'Kurs BH4'),
(4, 'zwHaustitle', '2009-01-10', 'zweites_haus', 'zwHausEvent');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `offer`
--

CREATE TABLE IF NOT EXISTS `offer` (
  `id` int(11) NOT NULL,
  `event_id` varchar(55) NOT NULL,
  `start` varchar(255) NOT NULL,
  `via` varchar(255) default NULL,
  `destination` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `message` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `offer`
--

