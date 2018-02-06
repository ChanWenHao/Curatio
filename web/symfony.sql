-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 06 Février 2018 à 22:16
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `symfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `artist`
--

INSERT INTO `artist` (`id`, `name`, `surname`, `bio`) VALUES
(1, 'Lemire', 'Jeff', NULL),
(2, 'N\'Guyen', 'Dustin', NULL),
(3, 'Dautermann', 'Russell', NULL),
(4, 'Aaron', 'Jason', NULL),
(5, 'Hubert', NULL, NULL),
(6, 'Kerascoet', NULL, NULL),
(7, 'Takashi', 'Nagasaki', NULL),
(8, 'Urasawa', 'Naoki', NULL),
(9, 'Guarnido', 'Juanjo', NULL),
(10, 'Canales', 'Juan Dias', NULL),
(11, 'Petersen', 'David', NULL),
(12, 'Toriyama', 'Akira', NULL),
(13, 'Vatine', 'Olivier', NULL),
(14, 'Bernard', 'Fred', NULL),
(15, 'Asten', NULL, NULL),
(16, 'Bernard', 'Fred', NULL),
(17, 'Asten', NULL, NULL),
(18, 'Blondel', 'Julien', NULL),
(19, 'Poli', 'Didier', NULL),
(20, 'Recht', 'Robin', NULL),
(21, 'Bastide', 'Jean', NULL),
(22, 'Blondel', 'Julien', NULL),
(23, 'Poli', 'Didier', NULL),
(24, 'Recht', 'Robin', NULL),
(25, 'Bastide', 'Jean', NULL),
(26, 'Blondel', 'Julien', NULL),
(27, 'Poli', 'Didier', NULL),
(28, 'Recht', 'Robin', NULL),
(29, 'Bastide', 'Jean', NULL),
(30, 'Fernandez', 'Enrique', NULL),
(31, 'Fernandez', 'Enrique', NULL),
(32, 'Bablet', NULL, NULL),
(33, 'Bablet', NULL, NULL),
(34, 'Petersen', 'David', NULL),
(35, 'Petersen', 'David', NULL),
(36, 'Mori', 'Kaoru', NULL),
(37, 'Mori', 'Kaoru', NULL),
(38, 'Hatoum', 'Milton', NULL),
(39, 'Ba', 'Gabriel', NULL),
(40, 'Moon', 'Fabio', NULL),
(41, 'Brubacker', 'Ed', NULL),
(42, 'Phillips', 'Sean', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `category`, `description`) VALUES
(1, 'sci-fi', 'fictions reposant sur des progrès scientifiques et techniques obtenus dans un futur plus ou moins lointain il s"agit alors également d"anticipation, ou physiquement impossibles'),
(2, 'polar', 'relevant du genre policier. Le drame y est fondé sur l\'attention d\'un fait ou, plus précisément, d\'une intrigue, et sur une recherche méthodique faite de preuves, le plus souvent par une enquête policière ou encore une enquête de détective privé.'),
(3, 'fantasy', 'présentant un ou plusieurs éléments surnaturels qui relèvent souvent du mythe et qui sont souvent incarnés par l’irruption ou l’utilisation de la magie.'),
(4, 'anticipation', 'genre littéraire et cinématographique, souvent lié à la science-fiction, constitué par les œuvres dont l\'action se déroule dans le futur, proche ou lointain.'),
(5, 'superheroic', NULL),
(6, 'dystopia', NULL),
(7, 'historical', NULL),
(8, 'horror', NULL),
(9, 'biographical', NULL),
(10, 'tales', NULL),
(11, 'adventure', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `criterion`
--

CREATE TABLE `criterion` (
  `id` int(11) NOT NULL,
  `critName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `criterion`
--

INSERT INTO `criterion` (`id`, `critName`, `description`) VALUES
(1, 'scenario', NULL),
(2, 'art', NULL),
(3, 'characters', NULL),
(4, 'storyboard', NULL),
(5, 'dialogue', NULL),
(6, 'writting', NULL),
(7, 'pencils', NULL),
(8, 'inking', NULL),
(9, 'colors', NULL),
(10, 'design', NULL),
(11, 'lettering', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `element`
--

CREATE TABLE `element` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publicationDate` date NOT NULL,
  `ISBN` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `synopsis` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `element`
--

INSERT INTO `element` (`id`, `title`, `publicationDate`, `ISBN`, `synopsis`, `image_id`, `type_id`, `publisher_id`) VALUES
(14, 'Thor goddess of thunder', '2017-12-23', '9780606383448', 'The secrets of Original Sin have laid low one of Marvel\'s greatest heroes. The God of Thunder is unworthy, and Mjolnir lies on the moon, unable to be lifted!', 1, 2, 6),
(15, 'Billy Bat T.1', '2017-12-23', '9780606383448', 'En 1949 aux États-Unis, Kevin Yamagata, né en Californie en 1920 de parents japonais immigrés, est un dessinateur de comics dont la série phare, Billy Bat, remporte un grand succès.\r\n\r\nLorsqu\'un policier lui indique par hasard que son héros, une chauve-souris détective, ressemble fortement à celui d\'un manga japonais, Kevin interrompt la publication de sa série et se rend au Japon demander la permission au créateur original d\'utiliser ce personnage pour sa bande dessinée.\r\n\r\nDans le Japon occupé d\'après-guerre, Yamagata se retrouve alors au cœur d\'une affaire de meurtres et de complots…', 2, 3, 12),
(16, 'Blacksad : Arctic-Nation', '2017-12-23', '9780606383448', 'Oldsmill, le maître de la ville, est un tigre blanc. Karup, le chef de la police, un ours blanc. Huk, l\'âme damnée de Karup, un renard blanc. Avec les autres animaux à pelage immaculé, ils forment la société WASP (W pour White, AS pour Anglo-Saxon, P pour Protestant). Tous les autres habitants, de la pie noire au renard ...', 3, 2, 4),
(17, 'Beauté : désirs exaucés', '2017-12-23', '9780606383448', 'Lorsque Morue délivre sans le faire exprès une fée du sortilège qui la retenait prisonnière, elle ne se doute pas du cadeau empoisonné que va lui faire cette dernière. Très laide, Morue sera désormais perçue comme très belle, ce qui au village n\'arrange pas vraiment ses affaires. D\'objet de répulsion, elle devient objet d\'adoration, au point de subir les assiduités de tous les mâles de la région et la haine renforcée de leurs moitiés. Sauvée de justesse par le jeune seigneur local, elle ne tarde pas à languir après une destinée plus brillante... Pas forcément très futée mais belle comme nulle autre femme au monde, elle va se trouver sans s\'en rendre compte au coeur d\'un imbroglio familial tout ce qu\'il y a de royal.', 4, 1, 2),
(18, 'Descender : Lune mécanique', '2017-12-23', '9780606383448', 'Sur la planète Hepton, le climat est loin d\'être idyllique depuis que les Moissonneurs ont attaqué le CGU. La neige a entièrement recouvert l\'astre et plus aucune trace de vie n\'y réside. C\'est en tout cas la version officielle car un chasseur de primes est sur place et trouve une petite colonie d\'humains et surtout, chose improbable : des cultures agricoles. L\'homme débusque donc les robots responsables d\'un tel exploit et les tue. De retour au Liquido-Sat Dillon, l\'une des bases des chasseurs de primes, l\'homme en question récupère sa récompense et souhaite enchaîner avec une nouvelle mission. Son contact n\'a pas grand chose à lui proposer, hormis peut être de mettre la main sur un petit robot qui n\'est autre que Tim-21. En le voyant, le liquidateur écarquille les yeux. Il s\'agit de celui qu\'il considérait comme son petit frère. Le destin est parfois étonnant car Andy est aussi celui que cherche Tim-21...', 5, 2, 8),
(20, 'Nungesser', '2018-02-03', NULL, 'C e 28 juillet 1923, Charles Eugène Nungesser épouse à Paris Consuelo Hatmaker, héritière fortunée de la bonne société new-yorkaise. Cette brunette vive et passionnée pose fièrement au bras de son époux, raide dans son costume de lieutenant constellé de médailles, beau malgré ses cicatrices. Toute l’assistance regarde fixement l’objectif du photographe immortalisant la scène. Toute, sauf Nungesser, demi-sourire aux lèvres, contemplant ostensiblement le ciel. À quoi rêve-t-il ? À ses exploits passés, ses prouesses futures, ses amours envolés ?', 7, 1, 5),
(21, 'Elric : le trône de rubis', '2018-02-03', NULL, 'Empereur de l’antique île aux Dragons de Melniboné, Elric, albinos et malade, règne sur un peuple plurimillénaire à la puissance héritée des dieux. Mais sa santé fragile l’oblige à user de drogues et de magie pour survivre. Son cousin Yyrkoon, qui méprise ces faiblesses, tente de remettre en cause sa légitimité à posséder le trône de rubis. Apprenant qu’une attaque de pirates sanguinaires se prépare, Elric saisit l’occasion pour tenter de restaurer son autorité. Il va révéler ainsi une personnalité complexe, mais aussi son allégeance aux sombres desseins d’Arioch, le plus puissant des Seigneurs du Chaos…', 8, 1, 1),
(22, 'Les contes de l\'ère du Cobra', '2018-02-05', NULL, '« Permettez que je caresse vos âmes avec mon histoire, tissée des fils de cent autres histoires… ». C’est ainsi que commence, pour notre plus grand plaisir, le récit d’un habile conteur masqué. Son histoire, c’est d’abord celle de la belle Sian, une fleur née dans le fumier, et d’Irvi, un étrange jeune homme qui a la capacité de traverser la ville sans jamais poser les pieds au sol. Sian doit être emmenée dans la maison des princesses, foirail de jeunes vierges mises en vente par leurs parents. Irvi compte bien entendu s’y opposer ! Mais le destin en a décidé autrement… Et c’est alors que commence une épopée pleine de rebondissements tous plus drôles, émouvants et palpitants les uns que les autres !', 11, 1, 13),
(23, 'Adrastée T.1', '2018-02-05', NULL, 'Après avoir passé 1000 ans sur son trône de pierre à méditer sur sa condition d’immortel, un homme, ancien roi d’hyperborée, part vers le Mont Olympe. Après avoir vu disparaître les siens et son peuple, au fil d’une vie qui n’a que trop duré, il s’est enfin décidé à trouver les Dieux pour les questionner quant à son étrange nature. Pourquoi lui ? Comment mourir ? Peut-il encore retrouver celle qu’il a aimée ?\r\nSur sa route, il croisera hommes, femmes, dieux, déesses, qui, selon leurs humeurs, leurs envies, leurs natures, leurs intérêts, influeront chacun à leur manière sur la destinée du voyageur, de cet homme qui n’est plus que l’ombre de lui-même, de sa légende.', 12, 1, 3),
(24, 'Légende de la garde T.1', '2018-02-05', NULL, 'Depuis la nuit des temps, la Garde protège les souris des mille dangers qui menacent leur existence. Trois de ses membres les plus solides, Kenzie, Saxon et Lieam, découvrent lors d’une mission de routine un noir complot ourdi dans la ville de Barkstone. Trop tard ! Lieam est fait prisonnier, les deux autres sont laissés pour mort aux portes de la ville et une armée traîtresse marche déjà vers Lockhaven, la légendaire forteresse de la Garde.', 13, 2, 5),
(25, 'Bride Stories T.4', '2018-02-05', NULL, 'L\'histoire se déroule au xixe siècle dans un petit village d\'Asie centrale au sud-est de la Mer d\'Aral, sur la route de la soie.\r\n\r\nSur fonds de Grand Jeu, le lecteur suit en parallèle les tribulations de Henry Smith, ethnologue travaillant sur les traditions de l\'Asie centrale, et accessoirement agent de renseignement pour le gouvernement britannique, et d\'Amir et Karluk, un jeune couple autochtone.\r\n\r\nLe manga débute avec le mariage d\'Amir, 20 ans, avec Karluk 12 ans, son cadet et membre d\'un clan voisin. Autre village, autres mœurs… La jeune fille, issue d’un clan nomade et chasseuse accomplie, découvre une existence différente, entre l’aïeule acariâtre, une ribambelle d’enfants et bien sûr, Smith, qui tente de se faire aussi discret que possible.', 14, 3, 9),
(26, 'Deux frères', '2018-02-05', NULL, 'Manaus, à la fin des années 1950. Dans la plus amazonienne des villes brésiliennes, le temps s\'écoule au rythme du fleuve. Isolés des tumultes du monde, émigrés originaires d\'Europe et du Moyen-Orient vivent ici en vase clos, dans le souvenir et les simulacres de leurs pays d\'avant.\r\n\r\nLibanais d\'origine, Halim et Zana ont toutes les apparences de la famille Tant-Mieux : une jolie maison coloniale, trois enfants en pleine santé et l\'amour en partage. Mais à l\'ado­lescence, Yaqub et Omar, leurs fils ­jumeaux, s\'affrontent et n\'auront de cesse dès lors de se détruire...', 15, 2, 14),
(27, 'Fatale T.1', '2018-02-05', NULL, 'De nos jours, aux États-Unis. Lors des obsèques de son parrain, Nicolas Lash rencontre une mystérieuse jeune femme qui se fait appeler Jo. Intrigué par ses propos, surtout subjugué par sa beauté, il se laisse séduire. Or bien des hommes sont déjà tombés dans ses filets... Il ignore encore que celle qui le fascine tant traverse les années sans vieillir, cherchant à échapper à un monstrueux démon immortel.', 16, 2, 8);

-- --------------------------------------------------------

--
-- Structure de la table `element_artist`
--

CREATE TABLE `element_artist` (
  `id` int(11) NOT NULL,
  `element_id` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `element_artist`
--

INSERT INTO `element_artist` (`id`, `element_id`, `artist_id`, `role_id`) VALUES
(1, 18, 1, 1),
(2, 18, 2, 2),
(3, 14, 4, 1),
(4, 14, 3, 2),
(5, 16, 10, 1),
(6, 16, 9, 2),
(7, 15, 7, 1),
(8, 15, 8, 2),
(9, 17, 5, 1),
(10, 17, 6, 2),
(13, 20, 16, 1),
(14, 20, 17, 2),
(15, 21, 18, 1),
(16, 21, 19, 2),
(17, 21, 20, 2),
(18, 21, 21, 3),
(19, 22, 30, 1),
(20, 22, 31, 2),
(21, 23, 32, 1),
(22, 23, 33, 2),
(23, 24, 34, 1),
(24, 24, 35, 2),
(25, 25, 36, 1),
(26, 25, 37, 2),
(27, 26, 38, 1),
(28, 26, 39, 2),
(29, 26, 40, 2),
(30, 27, 41, 1),
(31, 27, 42, 2);

-- --------------------------------------------------------

--
-- Structure de la table `element_category`
--

CREATE TABLE `element_category` (
  `element_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `element_category`
--

INSERT INTO `element_category` (`element_id`, `category_id`) VALUES
(14, 3),
(15, 2),
(16, 2),
(17, 1),
(18, 1),
(20, 7),
(20, 9),
(21, 3),
(22, 10),
(22, 11),
(23, 3),
(23, 11),
(24, 10),
(24, 11),
(25, 7),
(25, 11),
(26, 7),
(26, 9),
(27, 2),
(27, 8);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `image`
--

INSERT INTO `image` (`id`, `url`, `alt`) VALUES
(1, 'https://orig00.deviantart.net/a8e2/f/2014/344/6/f/thor__goddess_of_thunder__by_xionice-d89f685.jpg', 'goddess'),
(2, 'https://www.benzinemag.net/wp-content/uploads/2017/09/billy-bat.jpg', 'billy bat cover'),
(3, 'https://media.senscritique.com/media/000006980117/1200/Arctic_Nation_Blacksad_tome_2.jpg', 'goddess'),
(4, 'https://i.imgur.com/Qw4W2tP.jpg', 'beauté kerascoet'),
(5, 'http://www.urban-comics.com/wallpapers/descender/descender5.jpg', 'goddess'),
(6, 'http://cdn-s-www.estrepublicain.fr/images/C81C8F94-22D8-4182-8B39-9404A2BECBF7/LER_22/title-1442261990.jpg', NULL),
(7, 'http://cdn-s-www.estrepublicain.fr/images/C81C8F94-22D8-4182-8B39-9404A2BECBF7/LER_22/title-1442261990.jpg', NULL),
(8, 'https://www.pierrepapierciseaux.fr/wp-content/uploads/2013/05/elric-1021x483.jpg', NULL),
(9, 'https://www.pierrepapierciseaux.fr/wp-content/uploads/2013/05/elric-1021x483.jpg', NULL),
(10, 'https://www.pierrepapierciseaux.fr/wp-content/uploads/2013/05/elric-1021x483.jpg', NULL),
(11, 'http://labibliothequedeglow.fr/wpress/wp-content/uploads/2012/07/Contes-de-l%C3%A8re-du-Cobra-02-inside-1024x569.jpg', NULL),
(12, 'https://4.bp.blogspot.com/-2x0_UIuuKd0/V5ZHTbWOyFI/AAAAAAAABX0/td7HOyZK9ZUKAWwcGtyV8ntSClwBpIbKwCLcB/s1600/couv%2Bdouble.jpg', NULL),
(13, 'http://www.footbridge-online.net/images/stories/illusweb1.jpg', NULL),
(14, 'http://kobaitchi.com/wp-content/uploads/2016/10/bride-stories-4.jpg', NULL),
(15, 'https://culturebox.francetvinfo.fr/sites/default/files/assets/images/2015/03/deux-freres.jpg', NULL),
(16, 'https://comiconverse.com/wp-content/uploads/2015/08/Fatale-1.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `publisherName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `history` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `publisher`
--

INSERT INTO `publisher` (`id`, `publisherName`, `history`) VALUES
(1, 'Delcourt', NULL),
(2, 'Dupuis', NULL),
(3, 'Ankama', NULL),
(4, 'Dargaud', NULL),
(5, 'Casterman', NULL),
(6, 'Marvel', NULL),
(7, 'D.C', NULL),
(8, 'Image', NULL),
(9, 'Ki-oon', NULL),
(10, 'Kurokawa', NULL),
(11, 'Kana', NULL),
(12, 'Pika', NULL),
(13, 'Glenat', NULL),
(14, 'Urban', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `review`
--

INSERT INTO `review` (`id`, `user_id`, `element_id`, `review`, `score`, `date`) VALUES
(64, 3, 25, 'Acclaimed creator Kaoru Mori (Emma, Shirley) brings the nineteenth-century Silk Road to lavish life, chronicling the story of Amir Halgal, a young woman from a nomadic tribe betrothed to a twelve-year-old boy eight years her junior. Coping with cultural differences, blossoming feelings for her new husband, and expectations from both her adoptive and birth families, Amir strives to find her role as she settles into a new life and a new home in a society quick to define that role for her.', 3, '2018-02-06'),
(66, 3, 27, 'edited : brubacker and phillips best work to date', 4, '2018-02-06'),
(68, 3, 14, 'I have to admit, I haven\'t read a whole lot of Thor comics. I also didn\'t think I was going to care for this one since I\'m not really a supporter of the whole "title handoff" that Marvel has been doing with Captain America and Thor (more recently Wolverine). BUT, I have to say I\'ve been pleasantly surprised', 3, '2018-02-06'),
(69, 1, 14, 'Do I have issues with "Thor" being a title instead of name? Yes. (Like, if someone nicks my magic colostomy bag, they\'re not going to run around calling themselves "Sean" just because they have something that once belonged to me...and, frankly, if someone\'s weird enough to steal a colostomy bag, magic or not, I think we can come up with far better nicknames for them.)', 2, '2018-02-06'),
(70, 2, 14, 'Well I accidentally lowkey hated this. I mean, it\'s Thor goddess of Thunder?!? I thought this would be BRILLIANT. But it ended up disappointing me hopelessly.', 2, '2018-02-06'),
(71, 3, 24, 'A book about warrior mice comes off as the sort of comedy comic I\'d pick up in the 90\'s, flip through, and put back dismissively. There\'s been a certain disdain for talking animal comics among serious comic writers for about as long as the comic industry has existed in America.', 4, '2018-02-06'),
(72, 3, 17, 'Suivez les aventures de Morue, jeune poissonnière vraiment très laide qui après la rencontre avec une fée hérite d\'une beauté légendaire! Mais ce coup du sort pourrait bien augurer la perte de notre chère héroïne, les fées n\'étant pas toutes bonnes... De très beaux graphismes soutenus par un scénario très bien ficelé!', 4, '2018-02-06'),
(73, 3, 26, 'xxxxxx', 3, '2018-02-06'),
(74, 4, 14, 'moyen +', 3, '2018-02-06');

-- --------------------------------------------------------

--
-- Structure de la table `review_criterion`
--

CREATE TABLE `review_criterion` (
  `id` int(11) NOT NULL,
  `review_id` int(11) DEFAULT NULL,
  `flavouring` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bias` tinyint(1) DEFAULT NULL,
  `criterion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `review_criterion`
--

INSERT INTO `review_criterion` (`id`, `review_id`, `flavouring`, `bias`, `criterion_id`) VALUES
(61, 64, 'so many details', 1, 7),
(62, 64, 'syrup', 1, 3),
(66, 66, '1802', 1, 8),
(67, 66, '1802', 1, 3),
(70, 68, 'superb work by Russel Dautermann', 1, 2),
(71, 68, 'clever', 1, 4),
(72, 68, 'inconsistent', 0, 1),
(73, 69, 'truly a masterpiece', 1, 2),
(74, 69, 'punchline driven..', 0, 5),
(75, 70, 'OOOOO', 1, 2),
(76, 70, 'YYYYY', 1, 8),
(77, 70, 'mmh', 0, 3),
(78, 71, 'art', 1, 2),
(79, 71, 'art aswell', 1, 9),
(80, 72, 'very good', 1, 2),
(81, 72, 'very good', 1, 6),
(82, 72, 'very good', 1, 4),
(83, 73, NULL, 1, 8),
(84, 73, NULL, 0, 9),
(85, 74, 'c', 1, 2),
(86, 74, 'c', 1, 8);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id`, `role`, `description`) VALUES
(1, 'writer', NULL),
(2, 'illustrator', NULL),
(3, 'colorist', NULL),
(4, 'inker', NULL),
(5, 'assistant', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`id`, `type`, `description`) VALUES
(1, 'Franco-Belge', NULL),
(2, 'Comics', NULL),
(3, 'Manga', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `password`, `salt`, `username`, `email`, `is_active`) VALUES
(1, 'tralala', '', 'heero', 'h_yuy@yahoo.fr', 1),
(2, 'gunda', '', 'duo', 'd_maxwell@gmail.com', 1),
(3, 'duwo', '', 'trowa', 't_barton@hotmail.fr', 1),
(4, 'canville', NULL, 'Amandine', 'a@aol.fr', 1),
(5, 'password', NULL, 'testUser', 'blinks99@hotmail.com', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_category`
--

CREATE TABLE `user_category` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_element`
--

CREATE TABLE `user_element` (
  `user_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `criterion`
--
ALTER TABLE `criterion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7C822271BC4DAF8A` (`critName`);

--
-- Index pour la table `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_41405E393DA5256D` (`image_id`),
  ADD KEY `IDX_41405E39C54C8C93` (`type_id`),
  ADD KEY `IDX_41405E3940C86FCE` (`publisher_id`);

--
-- Index pour la table `element_artist`
--
ALTER TABLE `element_artist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_884E9F131F1F2A24` (`element_id`),
  ADD KEY `IDX_884E9F13B7970CF8` (`artist_id`),
  ADD KEY `IDX_884E9F13D60322AC` (`role_id`);

--
-- Index pour la table `element_category`
--
ALTER TABLE `element_category`
  ADD PRIMARY KEY (`element_id`,`category_id`),
  ADD KEY `IDX_6ABD676C1F1F2A24` (`element_id`),
  ADD KEY `IDX_6ABD676C12469DE2` (`category_id`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9CE8D546A4328789` (`publisherName`);

--
-- Index pour la table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_794381C61F1F2A24` (`element_id`),
  ADD KEY `IDX_794381C6A76ED395` (`user_id`);

--
-- Index pour la table `review_criterion`
--
ALTER TABLE `review_criterion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EB73B9703E2E969B` (`review_id`),
  ADD KEY `IDX_EB73B97097766307` (`criterion_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_57698A6A57698A6A` (`role`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_category`
--
ALTER TABLE `user_category`
  ADD PRIMARY KEY (`user_id`,`category_id`),
  ADD KEY `IDX_E6C1FDC1A76ED395` (`user_id`),
  ADD KEY `IDX_E6C1FDC112469DE2` (`category_id`);

--
-- Index pour la table `user_element`
--
ALTER TABLE `user_element`
  ADD PRIMARY KEY (`user_id`,`element_id`),
  ADD KEY `IDX_194D4033A76ED395` (`user_id`),
  ADD KEY `IDX_194D40331F1F2A24` (`element_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `criterion`
--
ALTER TABLE `criterion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `element`
--
ALTER TABLE `element`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `element_artist`
--
ALTER TABLE `element_artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT pour la table `review_criterion`
--
ALTER TABLE `review_criterion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `element`
--
ALTER TABLE `element`
  ADD CONSTRAINT `FK_41405E393DA5256D` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `FK_41405E3940C86FCE` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`),
  ADD CONSTRAINT `FK_41405E39C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`);

--
-- Contraintes pour la table `element_artist`
--
ALTER TABLE `element_artist`
  ADD CONSTRAINT `FK_884E9F131F1F2A24` FOREIGN KEY (`element_id`) REFERENCES `element` (`id`),
  ADD CONSTRAINT `FK_884E9F13B7970CF8` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`),
  ADD CONSTRAINT `FK_884E9F13D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Contraintes pour la table `element_category`
--
ALTER TABLE `element_category`
  ADD CONSTRAINT `FK_6ABD676C12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6ABD676C1F1F2A24` FOREIGN KEY (`element_id`) REFERENCES `element` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_794381C61F1F2A24` FOREIGN KEY (`element_id`) REFERENCES `element` (`id`),
  ADD CONSTRAINT `FK_794381C6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `review_criterion`
--
ALTER TABLE `review_criterion`
  ADD CONSTRAINT `FK_EB73B9703E2E969B` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`),
  ADD CONSTRAINT `FK_EB73B97097766307` FOREIGN KEY (`criterion_id`) REFERENCES `criterion` (`id`);

--
-- Contraintes pour la table `user_category`
--
ALTER TABLE `user_category`
  ADD CONSTRAINT `FK_E6C1FDC112469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E6C1FDC1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_element`
--
ALTER TABLE `user_element`
  ADD CONSTRAINT `FK_194D40331F1F2A24` FOREIGN KEY (`element_id`) REFERENCES `element` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_194D4033A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
