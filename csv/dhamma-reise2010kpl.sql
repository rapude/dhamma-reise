-- phpMyAdmin SQL Dump
-- version 2.11.9.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 28. Februar 2010 um 17:43
-- Server Version: 5.0.32
-- PHP-Version: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `db1078143-transfer`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `centre`
--

CREATE TABLE `centre` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(55) NOT NULL,
  `str_identifier` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ctr_name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `centre`
--

INSERT INTO `centre` VALUES(1, 'Seminarhaus Engl', 'sem_engl', 'Unterdietfurt');
INSERT INTO `centre` VALUES(2, 'Waldhaus am Laacher See', 'wald_haus', 'Nickenich');
INSERT INTO `centre` VALUES(3, 'Buddha Haus', 'buddha_haus', 'Oy-Mittelberg');
INSERT INTO `centre` VALUES(4, 'Meditationszentrum Beatenberg', 'beat_brg', 'Beatenberg');
INSERT INTO `centre` VALUES(5, 'Charlie Pils', 'charlie_pils', 'München');
INSERT INTO `centre` VALUES(6, 'Sylvia Kolk', 's_kolk', 'Hamburg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(500) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `ev_date` date NOT NULL,
  `centre_fk` varchar(20) NOT NULL,
  `centre_id` varchar(55) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=244 ;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` VALUES(204, 'Monika Winkelmann: SCHREIBEN IST WIE ATMEN\nKreativer Kurs mit Meditation und Schweigezeiten.', 'Nickenich', '2010-04-09', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(199, 'Offene Gastgruppe mit Dariusch Abiatinejad\nQIGONG, MEDITATION und WANDERN', 'Nickenich', '2010-03-17', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(151, 'November-Retreat  Einstieg 4. Woche', 'Beatenberg', '2010-11-20', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(152, '1 – 4 Wochen Selbstretreat', 'Beatenberg', '2010-11-01', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(153, '3 Tage Retreat «Liebevolle Güte»', 'Beatenberg', '2010-12-10', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(154, 'Neujahrsretreat «Vipassana und Karuna»', 'Beatenberg', '2010-12-26', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(157, 'Grüne Tara, freie Frau mit Sylvia Wetzel/Lily Besilly', 'Unterdietfurt', '2010-03-18', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(158, 'Vipassana mit Ursula Flückiger', 'Unterdietfurt', '2010-04-01', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(159, 'Zen-Sesshin mit Paul F. Shepherd', 'Unterdietfurt', '2010-04-06', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(160, 'Weisheit und Mitgefühl mit  Sabine Hayoz-Kalff', 'Unterdietfurt', '2010-04-18', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(149, 'November-Retreat  Einstieg 2. Woche', 'Beatenberg', '2010-11-06', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(132, 'Mithilfe im Zentrum', 'Beatenberg', '2010-06-17', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(238, '6-Tage-Oster-Retreat - Den Weg zur inneren Freiheit gehen!', 'Außendeichhof Pegasushof bei Hamburg', '2010-03-26', 's_kolk', 's_kolk');
INSERT INTO `event` VALUES(200, 'Paul Köppler & Agnes Häberle-Köppler\nTAG DER ACHTSAMKEIT- 2', 'Nickenich', '2010-03-20', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(197, 'Rigdzin Shikpo\nDIE ENDLOSE VISION DES MITGEFÜHLS\nNur für Teilnehmer des jeweiligen Dreijahresprogramms', 'Nickenich', '2010-02-26', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(187, '„BEFREIUNG HIER UND JETZT“', 'Haus der Stille', '2010-08-07', 'charlie_pils', 'charlie_pils');
INSERT INTO `event` VALUES(188, '„SEI EINFACH STILL ...“', 'Buddha-Haus Allgäu', '2010-09-02', 'charlie_pils', 'charlie_pils');
INSERT INTO `event` VALUES(138, '15 Day Metta and Vipassana Retreat ', 'Beatenberg', '2010-08-07', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(130, '6 Tage Mahamudra & Vipassana Meditationsretreat', 'Beatenberg', '2010-05-30', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(162, 'Vipassana mit Ursula Flückiger/Fred von Allmen', 'Unterdietfurt', '2010-05-12', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(163, 'Zen-Sesshin mit Paul F. Shepherd', 'Unterdietfurt', '2010-05-21', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(164, 'Vipassana  mit Marie Mannschatz', 'Unterdietfurt', '2010-06-02', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(165, 'Meditationskurs mit Stephan Bielfeldt', 'Unterdietfurt', '2010-06-12', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(166, 'Qigong und Vipassana mit Franz Möckl', 'Unterdietfurt', '2010-07-02', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(167, 'Meditationskurs mit Axel Revato Wasmann', 'Unterdietfurt', '2010-07-13', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(168, '10-Tage-Retreat für Frauen mit Sylvia Kolk', 'Unterdietfurt', '2010-07-25', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(169, 'Grüne Tara, freie Frau mit Sylvia Wetzel/Lily Besilly', 'Unterdietfurt', '2010-08-11', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(170, 'Meditative Ferien mit Ruth Kölling/Wolfgang Presser', 'Unterdietfurt', '2010-08-26', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(171, 'Die Kunst des Pinselwegs mit Dokko-An Kuwahara/Beate Neudert', 'Unterdietfurt', '2010-09-30', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(172, 'Meditationskurs mit Eva Bruha', 'Unterdietfurt', '2010-10-07', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(173, 'Meditationskurs mit  Marc Akincano Weber', 'Unterdietfurt', '2010-10-13', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(174, 'Vipassana und Metta mit Renate Seifarth', 'Unterdietfurt', '2010-10-25', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(175, 'Krankheit, Sterben und Tod mit Lisa Freund', 'Unterdietfurt', '2010-11-04', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(139, 'or 7 Day Metta Retreat', 'Beatenberg', '2010-08-07', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(140, 'or 8 Day Vipassana Retreat', 'Beatenberg', '2010-08-14', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(141, '3 Tage Kurs für Frauen und Männer', 'Beatenberg', '2010-09-02', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(142, '7 Tage Meditationsretreat für Frauen', 'Beatenberg', '2010-09-05', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(143, '7 Day Meditation & Dharma Study Retreat', 'Beatenberg', '2010-09-17', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(144, '7 Tage Meditationsretreat Vipassana', 'Beatenberg', '2010-10-01', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(145, 'oder Wochenendkurs Vipassana', 'Beatenberg', '2010-10-01', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(146, 'Meditationswochenende Vipassana', 'Beatenberg', '2010-10-14', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(147, 'Meditationswochenende für junge Menschen', 'Beatenberg', '2010-10-22', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(148, '1 – 4 Wochen Vipassana Retreat oder Selbstretreat', 'Beatenberg', '2010-11-01', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(137, '4 Tage Familien Meditationsretreat', 'Beatenberg', '2010-07-28', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(134, '6 Tage Studien Seminar', 'Beatenberg', '2010-07-04', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(135, '4 Tage Vipassana Meditationsretreat', 'Beatenberg', '2010-07-14', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(136, 'Vipassana Meditation & Yoga', 'Beatenberg', '2010-07-20', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(131, '3 Tage Studien und Meditation', 'Beatenberg', '2010-06-10', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(120, 'Meditationswochenende Metta', 'Beatenberg', '2010-03-26', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(118, '3 Day Insight Meditation Retreat', 'Beatenberg', '2010-02-25', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(239, 'IV. Buddha-Dhamma-Sangha-Retreat', 'Frauenlandhaus Charlottenberg', '2010-05-13', 's_kolk', 's_kolk');
INSERT INTO `event` VALUES(203, 'Tineke Osterloh\nSTILLE UND KLARHEIT FINDEN\nAchtsamkeitsmeditation und Dharma Coaching - Schweigekurs', 'Nickenich', '2010-04-09', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(202, 'Renate Seifarth\nVIPASSANA und METTA - MEDITATION', 'Nickenich', '2010-03-26', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(201, 'Buddhismus im Westen: HAUPTVERSAMMLUNG', 'Nickenich', '2010-03-21', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(198, 'Gastgruppe mit Veit und Andrea Lindau\nDAS INNERE LEUCHTEN. Fasten, Stille und Meditation', 'Nickenich', '2010-03-05', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(189, '„MIT DEM HERZEN VERSTEHEN“', 'Töpferhof Hensellek', '2010-10-31', 'charlie_pils', 'charlie_pils');
INSERT INTO `event` VALUES(161, ' Erholung, Yoga, Vipassana mit Ruth Kölling/Wolfgang Presser', 'Unterdietfurt', '2010-04-28', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(186, '„MEDITATION & YOGA: ZEIT FÜR DICH SELBST“', 'Seminarzentrum Riederalp', '2010-06-10', 'charlie_pils', 'charlie_pils');
INSERT INTO `event` VALUES(184, '„DAS LEBEN VERSTEHEN – DIE LIEBE LEBEN“', 'Meditationszentrum Buddhayana', '2010-03-27', 'charlie_pils', 'charlie_pils');
INSERT INTO `event` VALUES(185, '„EINHEIT MIT ALLEM LEBEN“', 'Meditationszentrum Buddhayana', '2010-05-29', 'charlie_pils', 'charlie_pils');
INSERT INTO `event` VALUES(183, '„MEDITATION & YOGA: ZEIT FÜR DICH SELBST“', 'Zentrum für Yoga und Meditation Füssen', '2010-03-05', 'charlie_pils', 'charlie_pils');
INSERT INTO `event` VALUES(180, 'Grüne Tara, freie Frau mit Sylvia Wetzel/Sabine Hayoz-Kalff', 'Unterdietfurt', '2010-12-26', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(179, 'Zen-Sesshin mit Paul Shepherd', 'Unterdietfurt', '2010-12-13', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(178, 'Kum Nye – Tibetisches Heilyoga mit Matthias Steurich', 'Unterdietfurt', '2010-12-01', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(176, 'Vipassana und Yoga mit Ursula Lyon', 'Unterdietfurt', '2010-11-09', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(177, 'Meditationskurs mit  Lama Öser', 'Unterdietfurt', '2010-11-17', 'sem_engl', 'sem_engl');
INSERT INTO `event` VALUES(150, 'November-Retreat  Einstieg 3. Woche', 'Beatenberg', '2010-11-13', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(122, 'oder 4 Tage Vipassana Retreat', 'Beatenberg', '2010-04-01', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(123, 'oder 5 Tage Retreat für Erfahrene', 'Beatenberg', '2010-04-05', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(124, '7 Tage Vipassana und Tonglen', 'Beatenberg', '2010-04-16', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(125, 'oder Wochenendkurs Vipassana und Tonglen', 'Beatenberg', '2010-04-16', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(126, '6 Tage Meditationsretreat Vipassana', 'Beatenberg', '2010-04-25', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(127, '10 Jahre Jubiläumsfeier', 'Beatenberg', '2010-05-08', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(128, 'Ascension: Insight Meditation Retreat', 'Beatenberg', '2010-05-12', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(129, 'Pfingsten: 3 Tage Vipassana Retreat', 'Beatenberg', '2010-05-21', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(133, '3 Tage Meditationsretreat', 'Beatenberg', '2010-06-24', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(121, 'Ostern: 9 Tage Vipassana Retreat', 'Beatenberg', '2010-04-01', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(119, 'Meditationswochenende für junge Menschen', 'Beatenberg', '2010-03-12', 'beat_brg', 'beat_brg');
INSERT INTO `event` VALUES(205, 'Michael Kewley: (Dhammachariya Pannadipa)\nVIPASSANA - Reise zur Freiheit', 'Nickenich', '2010-04-13', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(206, 'Uschi Stehmann\nNATUR, MEDITATION UND DHARMA\nDas Erleben unserer Natur - innen und außen', 'Nickenich', '2010-04-13', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(207, 'Gastgruppe  mit  Kirstie Pfau / Meera Mascia\nYOGA FÜR FORTGESCHRITTENE\nKraftvoll, präzise und fließend', 'Nickenich', '2010-04-23', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(208, 'Christopher Titmuss / Nicole Stern\nTIEFE ERFAHRUNG VON PRÄSENZ\nVipassana-Retreat. Schweigekurs', 'Nickenich', '2010-04-30', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(209, 'Jens Egert\nKLANG UND STILLE\nSingen und Erleben von Mantren aus allen Kulturen', 'Nickenich', '2010-05-08', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(210, 'Paul Köppler & Agnes Häberle-Köppler\nTAG DER ACHTSAMKEIT - 3 mit VESAKH - FEIER\nMusikalischer Rahmen mit Jens Egert', 'Nickenich', '2010-05-09', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(211, 'Dr. Linda Myoki Lehrhaupt:  \nACHTSAMKEITSMEDITATION - FÜR KÖRPER UND GEIST. Schweigekurs', 'Nickenich', '2010-05-12', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(212, 'Katrin Baar: VERSUNKEN IM MEER DER GEFÜHLE\nVorträge – Gespräche - Stille', 'Nickenich', '2010-05-21', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(213, 'Agnes Häberle-Köppler: LEBENDIGKEIT UND STILLE\nLuna-Yoga und Meditation in Bewegung für Frauen', 'Nickenich', '2010-05-21', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(214, 'Gastgruppe mit Gabrielle Euteneuer: \nTAO der Inneren Alchemie und Qigong. Teilw. Schweigekurs.', 'Nickenich', '2010-05-25', 'wald_haus', 'Kurs Nr. 23');
INSERT INTO `event` VALUES(216, 'Meditationstage: \nDas Wesen des Mitgefühls\nmit Heinz Roiger', 'Oy-Mittelberg', '2010-03-10', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(217, 'Meditationsseminar: \nZeit für einen achtsamen Herzputz\nmit Matthias Nyanacitta Scharlipp', 'Oy-Mittelberg', '2010-03-23', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(218, 'Meditationsretreat über Ostern: \nHerzensweisheit\nmit Bhante Nyanabodhi ', 'Oy-Mittelberg', '2010-04-01', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(219, 'Meditationskurs: \nGeistesgegenwart und Verwandlung\nmit Akincano M. Weber ', 'Oy-Mittelberg', '2010-04-17', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(220, 'Meditationsseminar: \nKraftquellen\nmit Dr. Wilfried Reuter ', 'Oy-Mittelberg', '2010-05-05', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(221, 'Meditationstage: \nLoslassen ist der Schlüssel zum Glück\nmit Traudel Reiß ', 'Oy-Mittelberg', '2010-05-13', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(222, 'Eltern–Kinder–Kurs: \nEine meditative Zeit mit Kindern ab 8 Jahren\nmit Bärbel Wildgruber & Brigitte Smith ', 'Oy-Mittelberg', '2010-05-21', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(223, 'Meditationskurs mit Yoga: \nWarum kommen wir zum Seminar?\nmit Ursula Lyon & Angelika Stemmer ', 'Oy-Mittelberg', '2010-05-29', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(224, 'Vipassana Meditationskurs: \nLiebe - Mitgefühl - Weisheit entwickeln\nmit Renate Seifarth ', 'Oy-Mittelberg', '2010-06-16', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(225, 'Meditationsseminar mit Yoga: \nNichts erdenken - sondern erleben und erkennen\nmit Karen Kold Wagner ', 'Oy-Mittelberg', '2010-07-03', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(226, 'Ordentliche Mitgliederversammlung:\nAnreise ab 3. Juli für alle Interessierten', 'Oy-Mittelberg', '2010-07-24', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(227, 'Meditationsseminar: \nMeditation und Achtsamkeit\nmit Norbert Wildgruber ', 'Oy-Mittelberg', '2010-08-03', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(228, 'Meditationskurs für erfahrene Meditierende: \nOffener Geist - weites Herz\nmit Ajahn Khemasiri ', 'Oy-Mittelberg', '2010-08-19', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(229, 'Meditation und Lehre des Buddha: \nSei einfach still\nmit Charlie Pils ', 'Oy-Mittelberg', '2010-09-02', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(230, 'Meditationskurs: \nDas Geschenk Leben bewusst leben\nmit Friederike Termeer ', 'Oy-Mittelberg', '2010-09-15', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(231, 'Meditationsretreat in Englisch: \nJhanas – the meditative absorptions\nmit Leigh Brasington', 'Oy-Mittelberg', '2010-10-15', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(232, 'Meditationsseminar: \nDie Heilkräfte von Herz und Geist entfalten\nmit Bhante Nyanabodhi', 'Oy-Mittelberg', '2010-10-30', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(233, 'Meditationsseminar im\nSEMINARZENTRUM RIEDERALP: \nRuhe und Einsicht durch Meditation\nmit Dr. Sylvia Kolk ', 'Immenstadt/Allgäu', '2010-10-31', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(234, 'Meditationskurs: \nDie zehn Ochsenbilder - eine Landkarte für den Geist\nmit Dr. Wilfried Reuter ', 'Oy-Mittelberg', '2010-11-13', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(235, 'Seminar mit kommunikativen Übungen: \nSterbebegleitung im Lichte der Buddha Lehre\nmit Michael Clausing / Wolfgang Smith', 'Oy-Mittelberg', '2010-11-25', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(236, 'Meditationstage: \nSanfte Transformation des Bewusstseins:\nGefühle zulassen - Gedanken ändern\nmit Charlie Pils', 'Oy-Mittelberg', '2010-12-03', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(237, 'Meditationskurs: \nEin meditativer Jahresbeginn\nmit Friederike Termeer ', 'Oy-Mittelberg', '2010-12-29', 'buddha_haus', 'buddha_haus');
INSERT INTO `event` VALUES(240, '6-Tage-Metta-Retreat - Wir verändern die Welt von unserem Herzen aus !', 'Waldhaus am Laacher See', '2010-07-08', 's_kolk', 's_kolk');
INSERT INTO `event` VALUES(241, '10-Tage-Sommer-Retreat - Auf der Suche und mittendrin ... !', 'Seminarhaus Engl in Bayern', '2010-07-25', 's_kolk', 's_kolk');
INSERT INTO `event` VALUES(242, '3-Tage-Retreat', 'Außendeichhof Pegasushof bei Hamburg', '2010-10-07', 's_kolk', 's_kolk');
INSERT INTO `event` VALUES(243, '7-Tage-Retreat - Die Wirklichkeit sehen, wie sie ist!', 'Riederalp bei Immenstadt', '2010-10-31', 's_kolk', 's_kolk');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` varchar(55) NOT NULL,
  `start` varchar(255) NOT NULL,
  `via` varchar(255) default NULL,
  `destination` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `message` text,
  `centre_fk` varchar(55) NOT NULL,
  `mode` varchar(55) NOT NULL,
  `inserted_at` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Daten für Tabelle `transfer`
--

INSERT INTO `transfer` VALUES(104, '238', 'Hamburg', '', 'Pegasushof', 'info@office-spezialistin.de', 'Margot', 'Plätze frei', 's_kolk', 'offer', '2010-02-28 10:32:02');
INSERT INTO `transfer` VALUES(103, '238', 'Bielefeld und Umgebung', '', 'Hamburg Pegausuhof', 'bhelfberend@web.de', 'Beate ', 'Liebe Mitmeditierenden!\r\nIch suche auf diesem Wege eine Mitfahrgelgenheit. Es wäre schön, wenn Du diesbezüglich Kontakt zu mir aufnehmen würdest.\r\nHerzliche Grüße von Beate', 's_kolk', 'request', '2010-02-23 09:27:36');
INSERT INTO `transfer` VALUES(102, '118', 'Zürich', '', 'Beatenberg', 'evelineruest@hotmail.com', 'Eveline Rüst', 'hallo!\r\nich suche eine mitfahrgelegenheit am donnerstag nachmittag, gerne würde ich spätestens 17 uhr im zentrum ankommen. melde dich doch bitte, wenn du mich mitnehmen kannst/möchtest.\r\n\r\nliebe grüsse\r\neveline', 'beat_brg', 'request', '2010-02-22 19:05:52');
INSERT INTO `transfer` VALUES(101, '241', 'Koblenz', '', 'Seminarhaus Engl, Bayern', 'charlottekeul@web.de', 'charlotte', 'Wir suchen eine Mitfahrgelegenheit für 2 Personen ab Koblenz zum Sommerretreat von Sylvia Kolk ', 's_kolk', 'request', '2010-02-16 20:17:32');
INSERT INTO `transfer` VALUES(100, '156', 'münchen', '', 'seminarhaus engl', 'lionheart2100@gmx.de', 'leo', 'würd mich freuen!', 'sem_engl', 'request', '2010-02-15 21:09:55');
INSERT INTO `transfer` VALUES(99, '138', 'Flughafen Zürich', '', 'Beatenberg Hohwald', 'LM@aiic.net', 'Louise', 'Ich suche eine Mitfahrgelegenheit am 07.08.10 ab ca. 11 Uhr vom Flughafen Zürich zum Meditationszentrum Beatenberg und am 22.08.2010 vom Zentrum zurück zum Flughafen. Um meinen Flug zu erreichen, müßte ich um ca. 19.30 am Flughafen sein können.', 'beat_brg', 'request', '2010-02-15 13:24:12');
INSERT INTO `transfer` VALUES(97, '221', 'München', '', 'Oy-Mittelberg', 'brigittegollmitzer@gmx.de', 'Brigitte', 'Ich würde gerne zu dem Kurs eine Mitfahrgelegenheit suchen - "notfalls" könnte ich auch einen Platz in meinem Auto anbieten.\r\n\r\nBrigitte', 'buddha_haus', 'request', '2010-02-13 11:12:13');
INSERT INTO `transfer` VALUES(98, '221', 'München', '', 'Oy-Mittelberg', 'brigittegollmitzer@gmx.de', 'Brigitte', 'Ich würde zwar lieber bei anderen mitfahren, aber "notfalls" könnte ich auch ein Auto zur Verfügung stellen (und dann natürlich auch fahren),\r\n\r\nBrigitte', 'buddha_haus', 'offer', '2010-02-13 11:13:41');
INSERT INTO `transfer` VALUES(96, '215', 'stuttgart', '--------------------------------', 'Oy Mittelberg', 'buch_duska@wqeb.de                 ', 'Martin Busz', '     Hey,würd mich über eine Hin -und Rückfahrtmöglichkeit freuen.\r\n                   \r\n       Hier noch die Telefon-Nr.0711-5496158\r\n\r\n                         Martin\r\n\r\n             ', 'buddha_haus', 'request', '2010-02-11 18:07:18');
INSERT INTO `transfer` VALUES(95, '182', 'stuttgart', '----------------------------------', 'Buddha-Haus Allgäu', 'buch_duska@web.de', 'Martin Busz', '     Hey,würd mich über eine Hin-und Rückfahrtsmöglichkeit\r\nzum Kurs von Charly freuen.\r\n\r\n    Hier ist noch die Tel.-Nr. 0711-5496158\r\n\r\n                 Tschüss\r\n\r\n                          Martin\r\n\r\n                    ', 'charlie_pils', 'request', '2010-02-11 12:44:31');
INSERT INTO `transfer` VALUES(94, '182', 'stuttgart', '----------------------------------', 'Buddha-Haus Allgäu', 'buch_duska@web.de', 'Martin Busz', '     Hey,würd mich über eine Hin-und Rückfahrtsmöglichkeit\r\nzum Kurs von Charly freuen.\r\n\r\n    Hier ist noch die Tel.-Nr. 0711-5496158\r\n\r\n                 Tschüss\r\n\r\n                          Martin\r\n\r\n                    ', 'charlie_pils', 'request', '2010-02-11 12:44:24');
INSERT INTO `transfer` VALUES(93, '182', 'Buddhahaus', '', 'München/Neuried', 'praxisschestag@gmx.de', 'Wolfgang Schestag', 'Bin für eine Rückfahrgelegenheit nach dem Kurs dankbar.\r\n089-7596584', 'charlie_pils', 'request', '2010-02-09 12:02:29');
INSERT INTO `transfer` VALUES(92, '117', 'Solothurn', 'Bern', 'Beatenberg', 'gigigandola@hotmail.com', 'Luigi', 'Hallo Du, ich fahre an dem Donnerstag aus Solothurn nach Beatenberg. Falls du Interesse hast mitzufahren, freue ich mich über Nachrichten. Wegen Abfahrtort und Zeit sowie beteiligten Fahrtkosten können wir ja dann persönlich reden. Könnte mir auch vorstellen ein wenig früher los zu fahren, um die Gelegenheit einer Wanderung in dem schönen Gebiet zu nutzen ... Liebe Grüße Luigi !!!', 'beat_brg', 'offer', '2010-02-08 10:57:35');
INSERT INTO `transfer` VALUES(91, '115', 'Oensingen', 'Bern', 'Beatenberg', 'ulrich.reinmann@bsb-partner.ch', 'Reinmann Ueli', 'Reinmann Ueli\r\nulrich.reinmann@bsb-partner.ch', 'beat_brg', 'offer', '2010-02-03 16:35:21');
INSERT INTO `transfer` VALUES(90, '238', 'Bielefeld', '', 'Außendeichhof Pegasus', 'n.sennewald@gmail.com', 'Nadja Sennewald', 'Fahre ca. 13:30 h in Bielefeld los. ', 's_kolk', 'offer', '2010-02-01 19:58:33');
INSERT INTO `transfer` VALUES(88, '217', 'Karlsruhe', '', 'Oy-Mittelberg', 'rapude@web.de', 'Ralf', 'Hallo,\r\nich würde mich freuen, wenn jemand einen Platz frei hat. Alternativ kann ich auch mit dem Auto fahren und hätte dann Plätze anzubieten.\r\n\r\nViele Grüße u. Danke, Ralf', 'buddha_haus', 'request', '2010-01-31 17:31:11');
INSERT INTO `transfer` VALUES(89, '116', 'balzers, liechtenstein', 'thalwil (oder Zürich)', 'beatenberg', 'emma.vogt@adon.li', 'emma', 'hallo! \r\nich suche eine mitfahrgelegenheit, auch für eine teilstrecke und freu mich, wenn du mich kontaktierst!\r\ngrüsse, emma', '', 'request', '2010-02-01 13:35:07');
INSERT INTO `transfer` VALUES(87, '217', 'Karlsruhe', 'Pforzheim/Stuttgart/Ulm', 'Oy-Mittelberg', 'rapude@web.de', 'Ralf', 'Servus,\r\nich habe Plätze im Auto frei und bei Interesse meldet euch gern bei mir.\r\n\r\nGrüße u. gute Zeit\r\nRalf', 'buddha_haus', 'offer', '2010-01-31 17:29:31');
INSERT INTO `transfer` VALUES(86, '220', 'Ravensburg', 'Isny', 'Oy-Mittelberg, Buddha-Haus', 'liberblank@aol.com', 'Blank Rüdiger', 'Mitfahrer/in kann auf der Strecke aufgenommen werden. Hin- und Rückfahrt.', 'buddha_haus', 'offer', '2010-01-29 14:10:27');
INSERT INTO `transfer` VALUES(85, '116', 'Freiburg', '', 'Beatenberg', 'barbara.trageser@gmx.de', 'Barbara Trageser', 'Hallo Du,\r\n\r\nich fahre an dem Donnerstag aus Freiburg nach Beatenberg. Falls du Interesse hast mitzufahren, freue ich mich über Nachrichten. \r\n\r\nWegen Abfahrtort und Zeit sowie beteiligten Fahrtkosten können wir ja dann persönlich reden. \r\nKönnte mir auch vorstellen ein wenig früher los zu fahren, um die Gelegenheit einer Wanderung in dem schönen Gebiet zu nutzen ...\r\n\r\nLiebe Grüße Barbara !!!', 'beat_brg', 'offer', '2010-01-26 11:07:00');
INSERT INTO `transfer` VALUES(84, '130', 'Freiburg ca 13 Uhr', 'Basel, Bern', 'Beatenberg', 'gabi.schellinger@web.de', 'Gabriele Schellinger', 'kann noch 2 Personen mitnehmen und am 5. wieder zurück', 'beat_brg', 'offer', '2010-01-25 18:20:41');
INSERT INTO `transfer` VALUES(83, '121', 'Vorarlberg, Liechtenstein,Sankt Margareten oder Sargans', '', 'Meditationszentrum Bestenberg', 'martin.schwall@diefaehre.at', 'Martin Schwall', 'Ich wäre sehr froh irgendwo mitfahren zu können, weil meine Frau unser Auto braucht. Am besten wäre es am Do. 1.4 hin und am Sa. 10.4. retour.\r\nVielen Dank\r\nMartin', 'beat_brg', 'request', '2010-01-21 12:15:43');
INSERT INTO `transfer` VALUES(82, '155', '95659 Arzberg, evtl Hof', 'egal', 'seminarhaus engl', 'seidel.arzberg@freenet.de', 'Karlheinz Seidel', 'Nehme am Sesshin teil', 'sem_engl', 'offer', '2010-01-20 11:25:31');
INSERT INTO `transfer` VALUES(81, '115', 'Deutschland Wiesbadener Kreuz A3', 'Basel Bern', 'Beatenberg', 'Sonja.Kloft@web.de', 'Sonja Kloft', '2 freie Plätze\r\nMan kann auch gerne unterwegs zusteigen!!', 'beat_brg', 'offer', '2010-01-14 08:28:36');
INSERT INTO `transfer` VALUES(80, '155', 'Stuttgart', '', 'Unterdietfurth', 'Mf71@online.de', 'Mischa Fröhnel', 'Hallo, ich würde mich sehr über eine Mitfahrgelegenheit zum o.g. Retreat freuen.  ', 'sem_engl', 'request', '2010-01-13 21:24:07');
INSERT INTO `transfer` VALUES(79, '121', 'St. Margarethen oder Buchs', '?', 'Meditationshaus Beatenberg', 'walter.namaste@gmail.com', 'Walter Meusburger', 'Ich wäre sehr froh um eine Mitfahrgelegenheit zum Oster-Retreat\r\nvom 01. bis 10. April in Beatenberg', 'beat_brg', 'request', '2010-01-13 16:49:41');
INSERT INTO `transfer` VALUES(78, '221', 'Weimar', '', 'Buddha-Haus', 'frenzel0120@arcor.de', 'Mechthild', 'Liebe(r) Autofahrer(in),\r\n\r\neine Mitfahrgelegenheit ist für mich eine große Hilfe.\r\n\r\n\r\nVielen Dank Mechthild\r\n', 'buddha_haus', 'request', '2010-01-13 09:14:49');
INSERT INTO `transfer` VALUES(76, '165', 'Halle (Saale)', 'Hof / Weiden / Regensburg', 'Seminarhaus Engl', 'epro@gmx.de', 'Eduard Prosch', 'Meine Anmeldung erfolgt demnächst.', 'sem_engl', 'offer', '2010-01-12 22:46:16');
INSERT INTO `transfer` VALUES(77, '165', 'Halle (Saale)', 'Hof / Weiden / Regensburg', 'Seminarhaus Engl', 'epro@gmx.de', 'Eduard Prosch', 'Meine Anmeldung erfolgt demnächst.', 'sem_engl', 'offer', '2010-01-12 22:47:00');
INSERT INTO `transfer` VALUES(75, '157', 'ca.10 Uhr', 'Erfurt', 'Unterdietfurt/ Seminarhaus Engl', 'eisvogel67@freenet.de', 'Heike', 'Hallo liebe TeilnehmerInnen des Retreats bei Sylvia und Lily im März `10. Ich bin Heike und habe schon 2 Retreats bei Sylvia mitgemacht, bisher in der Eiffel. Nun würde ich gern eins an diesem Ort hier machen und suche eine Mitfahrgelegenheit ab Erfurt in Thüringen. Hier würde ich gern zusteigen. Mit dem Zug ist man viele Stunden unterwegs, und zusammen im Auto zu fahren, ist einerseits billiger, zum anderen können wir uns kennenlernen. Ich würde mich freuen, wenn es klappt! Die Abfahrzeit 10 Uhr ist natürlich flexibel.  Also, wenn ihr noch Plätze frei habt, meldet euch bitte unter dieser e.mail-Adresse. Viele Grüße, Heike!', 'sem_engl', 'request', '2010-01-10 10:01:24');
INSERT INTO `transfer` VALUES(74, '155', 'Ingolstadt', 'Landshut', 'Unterdietfurt', 'tina.krettek@web.de', 'Krettek Martina', 'Ich werde am Donnerstag, den 11.02. gegen 16 Uhr in Ingolstadt losfahren und etwa eine Stunde später in Landshut sein.', 'sem_engl', 'offer', '2010-01-06 14:14:43');
INSERT INTO `transfer` VALUES(72, '113', 'Bern', '', 'Beatenberg', 'karibu71@hotmail.com', 'Roger Hollenstein', '3 Plätze frei, einsteigen bei Bern Bahnhof (Parking)', 'beat_brg', 'offer', '2009-12-23 20:53:54');
INSERT INTO `transfer` VALUES(73, '60', 'Andernach', '', 'Waldhaus', 'gabydebus@yahoo.de', 'Gabriele Debus', 'Ich komme am 27.12. um 16.01 von Hamburg kommend in Andernach am Bahnhof an. Und suche Mitfahrer für das Taxi von Andernach zum Waldhaus. Vielleicht gibt es ja jemanden, der um eine ähnliche Uhrzeit ankommt. Der Bus fährt erst um 18°°. Bis bald und ein schönes Fest, Gaby Debus', 'wald_haus', 'request', '2009-12-23 21:07:52');
INSERT INTO `transfer` VALUES(71, '181', 'Buchloe', 'Augsburg u evtl Bahnhof Pfaffenhofen', 'Stadel', 's.sonnenblume@web.de', 'Albert Bogner', 'Alberts Auto ist groß, da passt noch jemand rein :)\r\nBitte melden unter 082417551  oder Sabine unter 08246346\r\n\r\nLiebe Grüße\r\n', 'charlie_pils', 'offer', '2009-12-20 17:26:55');
INSERT INTO `transfer` VALUES(70, '121', 'Freiburg/Breisgau - Deutschland', 'Basel, Bern, Thun', 'Beatenberg', 'titze.andrea@freenet.de', 'Andrea', '.', 'beat_brg', 'offer', '2009-12-20 16:12:32');
INSERT INTO `transfer` VALUES(59, '112', 'Berlin', '', 'Pfaffenhofen Buddhayana', 'dani.walther@googlemail.com', 'Daniela Walther', 'Liebe Übende,\r\n\r\nich habe mich entschieden, aus Berlin zum Retreat nach Pfaffenhofen zu fahren, falls ich noch einen der begehrten Plätze erhalte - ich bin auf der Warteliste fast ganz oben.\r\nMeine Frage wäre, ob noch jemand von Berlin dorthin fährt, um gemeinsam die Reise zu unternehmen? Möglicherweise gar eine Fahrgemeinschaft zu organisieren?!\r\nIch würde am Mittwoch früh losfahren wollen und am 5.1. nach dem Mittagessen nach Berlin zurückfahren.\r\n\r\nHerzlichen Dank für Tipps, liebe Grüße\r\nDaniela ', '', 'request', '2009-11-16 12:18:23');
INSERT INTO `transfer` VALUES(60, '60', 'Münster', 'egal', 'Waldhaus', 'sdamas@web.de', 'Damas', 'suche Mitfahrmöglichkeit ab Münster/Westf., - ggf. auch ab Hamm, Recklinghausen, Dortmund - für Kursus 60, 27.12.-03.01.\r\n\r\nDanke!', '', 'request', '2009-11-18 10:55:48');
INSERT INTO `transfer` VALUES(68, '20', 'München', '', 'Unterdietfurt', 'honda.lilli@gmx.de', 'Böhm', 'Wer möchte mich mitnehmen. Bin, glaub ich, relativ pflegeleicht. Tel: 0176/25232577.', 'sem_engl', 'request', '2009-12-10 13:39:09');
INSERT INTO `transfer` VALUES(69, '181', 'Glockenbachviertel, München', '', 'Buddhistisches Zentrum Buddhayana, Stadel, Pfaffenhofen', 'antonia-munich@gmx.de', 'Andrea Bauer', 'Hallo,\r\n\r\nfalls jemand mit dem Auto anreist, wäre es möglich mich mitzunehmen?\r\nDas wäre nett, beteilige mich auch an den Benzinkosten.\r\n\r\nViele Grüße\r\nAndra', 'charlie_pils', 'request', '2009-12-15 17:55:59');
INSERT INTO `transfer` VALUES(65, '82', 'Kempten Hauptbahnhof', '', ' Uttenbühl  Buddha-Haus', 'van-deelen@versanet.de', 'Christa van Deelen', 'Hallo, suche ab Bahnhof Kempten am 30.12. Mitfahrer/innen per Taxi zum Buddha-Haus. Wenn alles mit den Zugverbindungen klappt(komme aus dem Münsterland), bin ich gegen 15.12 Uhr in Kempten. \r\nGibt es Bahn-Anreisende, die ungefähr zur gleichen Zeit dort ankommen, so dass wir eine Fahrgemeinschaft bilden könnten? Könnte auch ein wenig warten, wenn Dein/Ihr Zug etwas später ankommt. \r\nZur evtl. Kontaktaufnahme hier meine Tel.-Nr.: 02572/942200.\r\nBis zum 30.12., frohe Grüße\r\nChrista ', 'buddha_haus', 'request', '2009-12-01 12:08:25');
INSERT INTO `transfer` VALUES(66, '60', 'Bielefeld', '', 'Waldhaus', 'andreaboenisch@web.de', 'Andrea Bönisch', 'Ich würde mich freuen, falls du mich mitnehmen könntest, kann dich auch irgendwo treffen. Danke  Andrea', 'wald_haus', 'request', '2009-12-03 13:31:58');
