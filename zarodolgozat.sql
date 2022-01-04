-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Jan 04. 13:28
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `zarodolgozat`
--
CREATE DATABASE IF NOT EXISTS `zarodolgozat` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `zarodolgozat`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyakorlatok`
--

CREATE TABLE `gyakorlatok` (
  `id_gyakorlatok` int(11) NOT NULL,
  `gyakorlat_nev` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `gyakorlat_kep` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `gyakorlat_leiras` text COLLATE utf8_hungarian_ci NOT NULL,
  `izom_gyakorlat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `gyakorlatok`
--

INSERT INTO `gyakorlatok` (`id_gyakorlatok`, `gyakorlat_nev`, `gyakorlat_kep`, `gyakorlat_leiras`, `izom_gyakorlat_id`) VALUES
(1, 'Fekvenyomás', '1.png', 'Kiinduló helyzet: Feküdj le a padra, és csúsztasd be a testedet úgy, hogy a szemeid nagyjából a rúd magasságában legyenek. Lábaiddal támaszkodj meg stabilan a talajon. Fogd meg a rudat vállszélességnél valamelyest nagyobb (nagyjából 10-15 cm-es) fogástávolsággal és emeld ki a rudat a mellkasod fölé.\r\nA végrehajtás: A lapockákat kissé hátraszorítva, lassan engedd le a rudat a mellkasodig. Az alsó holtponton tartsd meg egy pillanatig, majd az oly népszerű pattintós mozdulat nélkül nyomd vissza a kiinduló helyzetbe. A felső holtponton a mellizom feszülésére koncentrálj rá, ezáltal nem is tudod majd (és nem is kell) kiakasztani a könyöködet.', 1),
(2, 'Fekvenyomás ferde padon egykezes súlyzókkal', '2.png', 'Kiinduló helyzet: állítsd a fekpadot 30-45 fokos magasságra. Ha megvan a kívánt magasság, akkor üljünk le a padra, és helyezzük a térdünkre a súlyt. Feküdjünk hanyatt a padon, majd a súlyokat emeljük fel mellmagasságba, párhuzamos karokkal, úgy hogy a tenyerünk kifelé nézzen. Engedjük le mindkét súlyt a mellkasunk külső, felső részéhez, tartsuk meg a mozdulatot egy pillanatra, majd a mellizmok erejével nyomjuk fel ismét a súlyt a kiinduló helyzetig. A mozgás során a könyök és a váll maradjon egy vonalban, az alkar pedig legyen végig függőleges.', 1),
(3, 'Tárogatás gépen', '3.png', 'Kiinduló helyzet: hátra nyúlsz, megragadod mindkét kezeddel a gép fogantyúit, a könyökeidet behajlítod 10 - 15fokos szögbe, és ez így is kell, hogy maradjon a gyakorlat során.\r\nA végrehajtás: összenyomod előre és befelé, félkörívben a gép karjait, amíg össze nem érnek, és itt megtartod egy pillanatig, ezáltal a mellizom teljesen összehúzódik\r\nUtána lassan félkörívben visszaengeded, a kiinduló helyzetbe, amíg a mellizmok nyújtott állapotba nem kerülnek', 1),
(4, 'Chest-press gépes nyomás', '4.png', 'Kiinduló helyzet: Ülj be a gépbe, használj a vállszélességnél valamivel szélesebb fogást, és tartsd feszesen a hátadat.\r\nA végrehajtás: A fejed és a csípődet tartsd a gép támlájához szorítva, koncentrálj a mellizom megfeszítésére, emeld ki a mellkasodat, a vállakat ne engedd előre. Így nyomd ki a kart, állítsd meg a könyék kiakasztása előtti ponton, majd engedd vissza kontrolláltan.', 1),
(5, 'Mellhez húzás csigán, szűk fogással ', '5.png', 'Kiinduló helyzet: Elsőként is szereld fel a csigás gépre a gyakorlathoz szükséges V-alakú fogantyút. Ülj le ezután a padra, a támasz alá helyezve a térded. Az ülőkét olyan magasra állítsd, hogy a talpak stabilan a talajon legyenek és teljesen kinyújtott karral a fogantyú tartása közben a súlyok már elemelkedjenek a tartóról. \r\nVégrehajtás: Kissé homorított háttal a hátizmok erejére koncentrálva húzd le a fogantyút a mellkasodhoz. A könyökeidet hátrafelé, befelé mozgasd, úgy, hogy a lapockák kellőképpen össze tudjanak húzódni. Az alsó ponton tartsd meg egy rövid pillanatra a súlyt a lapockák maximális összehúzódására koncentrálva. Végül engedd vissza lassan a fogantyút, a kiindulópontig, hogy a hátizmaid szépen kinyúljanak.', 2),
(6, 'Evezés T-rúddal ', '6.png', 'Kiinduló helyzet: amennyiben olyan szerencsés helyzetben vagyunk, hogy a terem rendelkezik T-rudas evezéshez szükséges szerkezettel, akkor nincs más dolgunk, mint ráállni kis terpeszben a lábtartó részre, mellkasunkat megtámasztani a támlán és megfogni a rudat a fogantyúknál. T-rudas gép híján mi magunk is összeeszkábálhatunk egyet: egy rúd, némi tárcsa és egy V-fogantyú segítségével. Ebben az esetben is hasonló a kiindulás: kis terpeszállás, és a térdeidet enyhén behajlítva dőlj előre (nagyjából 45 fokig). \r\n\r\nVégrehajtás: a lapockák összehúzásával indítva a mozdulatot, húzd a fogantyút a mellkasod aljáig, miközben enyhén kidomborítod a hátad és kiemeled a mellkasod. A könyökök végig a test mellett, hátrafelé haladnak. A felső holtponton tartsd meg pár másodpercig a mozdulatot, a lapockák maximális összehúzódása érdekében. Lassan ereszd vissza a súlyt, a hátizmok teljes kinyúlásáig. ', 2),
(7, 'Húzódzkodás ', '7.png', 'Kiinduló helyzet: Keressünk egy húzódzkodásra alkalmas keretet a teremben. Kapaszkodjunk meg a rúdban széles fogással (a fogástávolság nagyjából 30 cm-el legyen szélesebb a válladnál, mind a két oldalon), és a lábainkat összekulcsolva függeszkedjünk.\r\nVégrehajtás: Húzzuk fel magunkat az állunk magasságáig, úgy hogy közben a könyökünket hátrahúzva a lapockákat próbáljuk maximálisan összepréselni. A felső ponton tartsuk meg magunkat egy pillanatra, koncentráljunk a teljes összehúzódásra, majd lassan - a gravitációval megküzdve - eresszük le magunkat a kiinduló helyzetbe. A testtartásunk legyen végig enyhén homorítva.\r\nA helyes légzéstechnika: Amikor felhúzzuk magunkat, kifújjuk a levegőt, amikor leereszkedünk, akkor pedig mély lélegzetet veszünk.', 2),
(8, 'Evezés ülve, csigán ', '8.png', 'Kiinduló helyzet: Tedd a talpadat az evezőpad lábtámaszára, úgy hogy a lábad a térdednél maradjon enyhén behajlítva. Hajolj előre a fogantyúért. Kiinduláskor tehát a törzs egyenes, karunkkal kinyújtva tartjuk a súlyt.\r\n\r\nVégrehajtás: A lapockák összehúzásával indítva a mozdulatot, húzd a fogantyút a hasadhoz, miközben enyhén kidomborítod a hátad és kiemeled a mellkasod. A könyökök végig a test mellett, enyhén kifelé haladnak. A végponton tartsd meg pár másodpercig a mozdulatot, a lapockák maximális összehúzódása érdekében.\r\nVégül, lassan engedd vissza a fogantyút addig, amíg a karod kinyúlik. Csak a felső vállöv területe jöhet kissé előre a súly visszaengedését követően, de a törzsünk a függőleges vonalnál ne dőljön előrébb.', 2),
(9, 'Mellről nyomás állva', '9.png', 'Kiinduló helyzet\r\nVállszélességű fogást vegyél fel a kétkezes súlyzón úgy, hogy a tenyered kifelé mutat, és a rúd keresztben fekszik vállad elülső részén.\r\n\r\nVégrehajtás\r\nNyomd egyenesen fel a súlyzót az arcod előtt, egészen addig, míg a karod kiegyenesedik, és a súlyzó közvetlenül a fejed fölött van. Lassan engedd vissza a kiinduló helyzetbe a súlyzót, és ismételd meg a mozgást az előírt ismétlésszámmal.', 3),
(10, 'Oldalemelés állva', '10.png', 'Kiinduló helyzet\r\nÁllj kiegyenesedve, tarts hajlított könyökkel egy-egy egykezes súlyzót mindkét kezedben.\r\n\r\nVégrehajtás\r\nA súlyzókat egyszerre emeld ki oldalra a tested mellől addig, amíg vállmagasságnál egy kicsit fentebb nem kerül a súly. Engedd vissza lassan, és ismételd meg a gyakorlatot.', 3),
(11, 'Előreemelés', '11.png', 'Kiinduló helyzet\r\nÁllj egyenesen, mindkét kezedben egy-egy egykezes súlyzót vagy egy egyenes rudat tartva kartávolságnyira, keresztben a combközépen.\r\n\r\nVégrehajtás\r\nEmeld a kézisúlyzókat szemmagasságig akár egyenként, akár együtt, könyöködet enyhén behajlítva. Lassan ereszd vissza és ismételj. Ugyanezt végezheted rúddal is.', 3),
(12, 'Állig húzás', '12.png', 'Kiinduló helyzet\r\nÁllj egyenesen, szűk fogást véve (a mutatóujjak kb. 15 cm-re legyenek egymástól a rúdon) a kétkezes súlyzó közepén, tenyerekkel a test felé. A mozgás elején a súlyzónak keresztbe kell feküdnie felső combodon, karod pedig legyen egyenes.\r\n\r\nVégrehajtás\r\nLassan húzd a súlyzót felfelé tested közelében egy vonal mentén, könyöködet felfelé emelve és mindig a kezed vonala fölött tartva. Amint a rúd nyakmagasságba ér, tarts szünetet, és ereszd le a súlyzót lassan ugyanezen vonalon, egészen addig, míg a combodhoz ér. Ismételd meg a gyakorlatot az előírt ismétlésszámban.', 3),
(13, 'Csigás letolás', '13.png', 'Kiinduló helyzet\r\nKiinduláskor úgy fogd meg a készülék rúdját, hogy kezeid 5-20 cm-re legyenek egymástól.\r\n\r\nVégrehajtás\r\nNyomd le a rudat egészen addig, amíg a karjaid ki nem egyenesednek. Engedd vissza a súlyt, és ismételd meg a mozdulatot. A legtöbben e gyakorlat során a könyöküket szorosan az oldalukhoz szorítják, de néhányan viszont oldalt kinyomják és \"belehajolnak\" a mozdulatba. Fontos azonban, hogy a könyök mozdulatlan legyen.', 5),
(14, 'Tricepsznyújtás fekve', '14.png', 'Kiinduló helyzet\r\nVedd fel ugyanazt a kiinduló helyzetet, mint a fekvenyomásnál, azonban ennél közeli fogást alkalmazz (15 cm a mutatóujjak között) a kétkezes súlyzórúd közepén.\r\n\r\nVégrehajtás\r\nFelkarodat mozdulatlanul tartva, hajlítsd be könyöködet, és mozgasd a súlyzót félkörívben egészen addig, amíg a homlokodhoz nem ér, vagy a fejed felett túl nem megy a padon. Emeld vissza a súlyzót ugyanezen félkörív mentén a kiinduló helyzetbe, és ismételd meg a gyakorlatot az előírt számban.', 5),
(15, 'Tolódzkodás', '15.png', 'Kiinduló helyzet\r\nAmikor a tricepszedet edzed a korláton, a lábaid legyenek a test alatt, álladat szegd le a melledre, könyökeidet tartsd magad mellett, és a test, amennyire lehet, legyen egyenes.\r\n\r\nVégrehajtás\r\nEngedd le magad olyan mélyre, amennyire csak bírod, a kinyomás végén pedig teljesen nyújtsd ki a karodat, és feszíts rá a tricepszedre a felső holtponton.', 5),
(16, 'Kábeles tricepsznyújtás kötéllel', '16.png', 'Kiinduló helyzet\r\nVegyél fel a hátgépnek háttal döntött törzsű, jól kiegyensúlyozott helyzetet, és fogd meg a hátizom gépre erősített tricepsz kötelet.\r\n\r\nVégrehajtás\r\nFelsőkarjaid állandó mozdulatlan helyzetére nagyon ügyelve nyújtsd ki az alkarodat. Lassan, rángatás nélkül kezdd el a mozdulatot. Ez a gyakorlat kiválóan edzi a tricepsz külső fejét.', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `izomcsoport`
--

CREATE TABLE `izomcsoport` (
  `izom_id` int(11) NOT NULL,
  `izom_nev` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `izom_kep` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `izom_leiras` varchar(300) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `izomcsoport`
--

INSERT INTO `izomcsoport` (`izom_id`, `izom_nev`, `izom_kep`, `izom_leiras`) VALUES
(1, 'Mell', '1.1.png', 'Nagy mellizom: a mellkasodat tányérszerűen vagy legyezőszerűen borító izom mindkét oldalon a felkarcsont, a kulcscsont és a szegycsont között terül el. A szegycsonti rész a szegycsontról ered, a nagy mellizom 80%-át adja. Feladata, hogy a test középvonalához közelítse a kart és berotálja a felkarcso'),
(2, 'Hát', '2.1.png', 'A széles hátizom fejlesztésének két jó módszere van. Először ki kell szélesíteni a lapockát. Erre a széles fogású húdzkodások a legalkalmasabbak, akár a nyak mögé akár elé. Ezután ki kell dolgozni a terület vastagságát, általában a döntött törzsű evezés vagy több változatának alkalmazásával. A legtö'),
(3, 'Váll', '3.1.png', 'Nincs olyan vállizom gyakorlat, amely mindhárom részt egyszerre megmozgatná, noha a váll egyes részei bizonyos mértékig segítik egymást. A deltaizom izolációs gyakorlatait gyakran használják. Ezek a váltogatott elülső emelés az első fejre, az oldalemelés az oldalsó fejre és a döntött törzsű oldaleme'),
(5, 'Bicepsz', '4.1.png', 'asd'),
(6, 'Tricepsz', '5.1.png', 'asd');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `gyakorlatok`
--
ALTER TABLE `gyakorlatok`
  ADD PRIMARY KEY (`id_gyakorlatok`);

--
-- A tábla indexei `izomcsoport`
--
ALTER TABLE `izomcsoport`
  ADD PRIMARY KEY (`izom_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `gyakorlatok`
--
ALTER TABLE `gyakorlatok`
  MODIFY `id_gyakorlatok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT a táblához `izomcsoport`
--
ALTER TABLE `izomcsoport`
  MODIFY `izom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
