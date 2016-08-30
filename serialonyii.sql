-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 06 2015 г., 12:01
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.4.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `serialonyii`
--

-- --------------------------------------------------------

--
-- Структура таблицы `season`
--

CREATE TABLE IF NOT EXISTS `season` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial_id` int(11) NOT NULL,
  `datestart` year(4) NOT NULL,
  `dateend` year(4) NOT NULL,
  `season` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `season`
--

INSERT INTO `season` (`id`, `serial_id`, `datestart`, `dateend`, `season`) VALUES
(12, 37, 2007, 2007, 'Сезон 1'),
(13, 38, 2004, 2005, 'Сезон 1'),
(14, 38, 2005, 2005, 'Сезон 2'),
(15, 37, 2007, 2008, 'Сезон 2');

-- --------------------------------------------------------

--
-- Структура таблицы `serial`
--

CREATE TABLE IF NOT EXISTS `serial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datestart` date NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Дамп данных таблицы `serial`
--

INSERT INTO `serial` (`id`, `name`, `datestart`, `country`, `genre`, `description`, `img`) VALUES
(37, 'Теория Большого Взрыва', '2007-12-11', 'USA', 'Comedy', 'Шелдон и Леонард - физики по призванию, два блестящих гениальных ума, которые четко представляют себе как устроена целая вселенная, но к сожалению гений их умов и глубокие познания таинств мира совсем не облегчают им общение с людьми, а в особенностями с представительницами прекрасного пола. Но их жизни претерпевают кардинальных изменений, когда рядом с ними поселяется прелестная Пенни.\r\n\r\nС первого взгляда на красотку во время первой их встречи, Леонард сразу же заинтересовывается девушкой. Он надеется на общение с ней, вплоть до развития романтических отношений. Но его друг Шелдон прекрасно понимает, что мечтам Леонардо не сбыться никогда.\r\n\r\nУ Леонардо и Шелдона весьма неординарные друзья, которые обращают на себя внимание: Раджеж Кутрапали - в буквальном смысле немеющий в обществе прекрасных дам, и Воловец - любящий ввернуть фразы на самых разных языках.\r\n\r\nЛичное мнение: Поначалу сериал можно принять за весьма средненькую и довольно поверхностную комедию. Ведь сюжет фильма далеко не свеж - насмешка над типичными ботанами, которые очень комично пытаются контактировать с внешним миром, в данном случае внешний мир предстает перед зрителем в образе прелестной девушки, живущей по соседству с ними.\r\n\r\nСобытия сериала разворачиваются на ограниченном пространстве двух соседних квартир, лестничной площадки и очень редко в кафе или лаборатории. Весь фильм построен на отношениях четырех эксцентричных представителей ученого общества, откровенных ботанах, которым не находится места в обычном обществе и красивой сексапильной девушки Пенни, приехавшей из провинции. Каждый из четырех ученых имеет свой характер и вкупе они составляют довольно разношерстную компанию чудаков. Стоит отметить, что один из ботанов - Леонард, умышленно обезличен и на его место можно поставить любого молодого человека, который считает себя недооцененным, но при этом не сильно верит в себя.\r\n\r\nНесмотря на некоторую шаблонность характеров самих героев и избитость сюжета, можно с уверенностью сказать, что “Теория Большого Взрыва” - потрясающая комедия, которая скрасит обыденность будней и поднимет настроение. Все привыкли, что ситком - это прежде всего обилие юмора и шуток, а этот сериал кроме 100%-го соответствия классическому ситкому, ещё и под завязку набит разными афоризмами и запоминающимися цитатами. К тому же персонажи сериала получились настолько обаятельными и смешными, что сложно не поддаться их положительному влиянию, а как известно, это признак того, что на экранах этот сериал задержится надолго.\r\n\r\nБотаники в самый неподходящий для этого момент самозабвенно цитируют сложные научные тезисы, а события своей жизни рассматривают через призму научных трактатов. Это сложно передать словами, но если вы хоть немного знакомы с наукой - удержаться от смеха вы просто не сможете. Так что к просмотру сериал рекомендован всем, кто любит от души посмеяться и весело провести время.', '/img/20131221-181737img50550.jpg'),
(38, 'Друзья', '2004-05-05', 'США', 'Comedy', 'Главные герои сериала - это шестеро друзей. Трое прелестных девушек: Рейчел, Фиби, Моника и трое симпатичных парней: Чендлер, Росс, Джоуи. Все они давние друзья, живущие в Нью-Йорке по-соседству друг с другом, вместе убивающие время, делящие между собой все радости и горести жизни, дурачащиеся, ссорящиеся, мирящиеся, при этом никогда не унывающие и время от времени сильно влюбляющиеся.\r\n\r\nВ первом сезоне мы познакомимся поближе с каждым из главных героев. Итак, знакомимся! В Центральной кофейне, неизменном месте встречи этих ребят, встречаются Моника и Росс Геллеры, Чендлер Бинг, Джо Триббиани и Фиби Буффе. Росс не так давно развелся - его жена Кэрол оказалась леcбиянкой и бросила его ради своей подруги Сьюзан. Теперь он живет один, Фиби и Моника снимают одну квартиру на двоих, но Фиби вскоре собирается переехать жить к бабушке, а квартира Джо и Чендлера находится напротив квартиры Моники. А вот и ещё одна героиня - она как раз сбежала со своей свадьбы и прямехонько направилась в Кофейню - Рэйчел Грин. Махнув рукой на прошлое, она решает переселиться к Монике и начинает работать официанткой в Кофейне.\r\n\r\nОказывается, что бывшая жена Росса ждет ребенка, который родится как раз к концу первого сезона и получит имя Бэн.\r\n\r\nВ Россе вспыхивают былые чувства к Рэйчел, ведь он влюблен в неё ещё со времен учебы в колледже. Но застенчивый Росс никак не может ей в этом признаться…', '/img/20131221-182025img79230.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `series`
--

CREATE TABLE IF NOT EXISTS `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season_id` int(11) NOT NULL,
  `series` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `series`
--

INSERT INTO `series` (`id`, `season_id`, `series`, `description`) VALUES
(7, 13, 'Серия 1', 'Все они давние друзья, живущие в Нью-Йорке по-соседству друг с другом, вместе убивающие время, делящие между собой все радости и горести жизни, дурачащиеся, ссорящиеся, мирящиеся, при этом никогда не унывающие и время от времени сильно влюбляющиеся. В первом сезоне мы познакомимся поближе с каждым из главных героев. Итак, знакомимся! В Центральной кофейне, неизменном месте встречи этих ребят, встречаются Моника и Росс Геллеры, Чендлер Бинг, Джо Триббиани и Фиби Буффе. Росс не так давно развелся - его жена Кэрол оказалась леcбиянкой и бросила его ради своей подруги Сьюзан.'),
(8, 13, 'Серия 2', 'Все они давние друзья, живущие в Нью-Йорке по-соседству друг с другом, вместе убивающие время, делящие между собой все радости и горести жизни, дурачащиеся, ссорящиеся, мирящиеся, при этом никогда не унывающие и время от времени сильно влюбляющиеся. В первом сезоне мы познакомимся поближе с каждым из главных героев. Итак, знакомимся! В Центральной кофейне, неизменном месте встречи этих ребят, встречаются Моника и Росс Геллеры, Чендлер Бинг, Джо Триббиани и Фиби Буффе. Росс не так давно развелся - его жена Кэрол оказалась леcбиянкой и бросила его ради своей подруги Сьюзан.'),
(9, 14, 'Серия 1', 'Все они давние друзья, живущие в Нью-Йорке по-соседству друг с другом, вместе убивающие время, делящие между собой все радости и горести жизни, дурачащиеся, ссорящиеся, мирящиеся, при этом никогда не унывающие и время от времени сильно влюбляющиеся. В первом сезоне мы познакомимся поближе с каждым из главных героев. Итак, знакомимся! В Центральной кофейне, неизменном месте встречи этих ребят, встречаются Моника и Росс Геллеры, Чендлер Бинг, Джо Триббиани и Фиби Буффе. Росс не так давно развелся - его жена Кэрол оказалась леcбиянкой и бросила его ради своей подруги Сьюзан. Теперь он живет один, Фиби и Моника снимают одну квартиру на двоих, но Фиби вскоре собирается переехать жить к бабушке, а квартира Джо и Чендлера находится напротив квартиры Моники. А вот и ещё одна героиня - она как раз сбежала со своей свадьбы и прямехонько направилась в Кофейню - Рэйчел Гр'),
(10, 12, 'Серия 1', 'Шелдон и Леонард - физики по призванию, два блестящих гениальных ума, которые четко представляют себе как устроена целая вселенная, но к сожалению гений их умов и глубокие познания таинств мира совсем не облегчают им общение с людьми, а в особенностями с представительницами прекрасного пола. Но их жизни претерпевают кардинальных изменений, когда рядом с ними поселяется прелестная Пенни. С первого взгляда на красотку во время первой их встречи, Леонард сразу же заинтересовывается девушкой.');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` int(11) NOT NULL,
  `ban` tinyint(4) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `created`, `ban`, `role`, `email`) VALUES
(1, 'demo', '$2a$10$JTJf6/XqC94rrOtzuF397OHa4mbmZrVTBOQCmYD9U.obZRUut4BoC', 0, 0, 1, 'demo@demo.com'),
(2, 'admin', '$2a$10$JTJf6/XqC94rrOtzuF397OHa4mbmZrVTBOQCmYD9U.obZRUut4BoC', 0, 0, 2, 'admin@gmail.com'),
(3, '321', '$2y$10$8mNF4fXfi4DvU4h.EBAm0.fRSKkp1dViATSRAky5wGQ.t.Mnm49Wu', 0, 0, 1, 'sad@asdas.com'),
(6, 'nik', '$2y$10$47FwVw1bN12CTwrlMuIV1uaDpS47lKW4FTtRRScpEt6ES2RpPNJdy', 1431098294, 0, 1, '123@sdas.com'),
(8, 'test', '$2y$10$92JWXupHcs4M.w4Dr6sJdO3c65j.jbe97NcMhsX0.ZbkL/vRwnyLK', 1431190335, 0, 1, 'sad@testforupdate.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
