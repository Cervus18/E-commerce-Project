-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 14 fév. 2021 à 18:03
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecom`
--

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `path` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `categorie` varchar(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `path`, `price`, `categorie`, `description`) VALUES
(1, 'HP Omen 15', 'pc1.png', 1556, 'pc', 'Brand:HP , Operating System:Windows 10 , CPU manufacturer:Intel , Computer Memory ‎Size: 16 GB , Screen Size: 15.6 Inches,‎\r\nNVIDIA GTX 1660 Ti 6GB GDDR6 (VR Ready) Dedicated Graphics\r\n‎16GB RAM, 512GB SSD Storage‎\r\n'),
(2, 'Apple Mcbook Air', 'pc2.jpg', 1298.99, 'pc', 'Brand: Apple , Operating System: Mac OS, CPU manufacturer:Apple , Computer Memory ‎Size: 8GB , Screen Size: 13 Inches,‎\r\n‎8-core CPU delivers up to 2.8x faster performance to fly through workflows quicker than ‎ever\r\n‎8GB of unified memory so everything you do is fast and fluid‎\r\n'),
(3, 'Apple Mcbook Pro', 'pc3.jpg', 2115, 'pc', 'Brand: Apple , Operating System: Mac OS , CPU manufacturer: Intel, Computer Memory ‎Size: 16GB , Screen Size: 16 Inches ,‎\r\n‎ Ninth-generation 6-Core Intel Core i7 Processor\r\nStunning 16-inch Retina Display with True Tone technology\r\nAMD Radeon Pro 5300M Graphics with GDDR6 memory\r\n'),
(4, 'Asus ROG', 'pc4.jpg', 999.99, 'pc', 'Brand: ASUS, Connectivity Technology: Bluetooth, Wired, Wi-Fi, Ethernet, HDMI, ‎\r\nNVIDIA GeForce RTX 2070 8GB GDDR6 with ROG Boost (Base: 1260MHz, Boost: 1455MHz, ‎‎115W)‎\r\nROG Intelligent Cooling thermal system with Thermal Grizzly Liquid Metal Thermal ‎Compound\r\nBundle: Get 30 days of Xbox Game Pass for PC with purchase*‎\r\n'),
(5, 'Asus Vivobook', 'pc5.jpg', 1005.99, 'pc', 'Brand: ASUS, Operating System: Windows 10 Home , CPU manufacturer: Intel, Computer ‎Memory Size:12 GB , Screen Size: 15.6 Inches,‎\r\n‎15.6 inch Full HD (1920x1080) 4-way NanoEdge bezel display with a stunning 88% screen-to-‎body ratio\r\nComprehensive connections including USB 3.2 Type-C, USB 3.2 Type-A, USB 2.0, and HDMI; ‎Gigabit Wi-Fi 5 (802.11ac) (*USB Transfer speed may vary. Learn more at ASUS website)‎\r\n'),
(6, 'Lenovo thinkpad', 'pc6.jpg', 575.99, 'pc', 'Brand: Lenovo, Operating System: Windows 10, CPU manufacturer: Intel , Computer ‎Memory Size:8 GB , Screen Size: 14,‎\r\n‎14 Inch Full HD lightweight device designed for on-the-go professionals ‎\r\n‎8GB of System Memory / 512GB Solid State Drive (SSD)‎\r\nProcessor: Intel Quad-Core i5-8265U, 1.60 GHz (up to 3.90 GHz) 6 MB Intel Smart Cache‎\r\n'),
(7, ' Dell XPS 13', 'pc7.jpg', 1157.99, 'pc', 'Brand: SHOXLAB, Operating System: Windows 10, CPU manufacturer: Intel , Computer ‎Memory Size:16 GB , Screen Size: 13.3,‎\r\nYour system boots and resumes in seconds thanks to up to 1TB of solid state drive storage. ‎Multi-task in a flash even on intense applications with up to 16GB of memory. With ‎advanced Wi-Fi 6 technology and theoretical throughput speeds of up to 2.4 Gbps, the ‎Killer AX1650 is nearly three times as fast as the previous generation of 80MHz 2x2 AC ‎products. It prioritizes streaming video, communication, and game traffic in your system ‎for fast, smooth online experiences.‎\r\n'),
(8, ' Dell XPS 15', 'pc8.jpg', 1985, 'pc', 'Brand: SHOXLAB, Operating System: Windows 10, CPU manufacturer: Intel , Computer ‎Memory Size:32 GB , Screen Size: 15.6,‎\r\n‎15.6\" 4K UHD (3840 x 2160) OLED InfinityEdge Anti-Reflective Non-Touch 100% DCI-P3 400-‎Nits display\r\n‎9th Generation Intel Core i7-9750H (12MB Cache, up to 4.5 GHz, 6 cores)‎\r\n‎32GB DDR4-2666MHz, 2x16G, 1TB M.2 PCIe NVMe SSD‎\r\n'),
(9, 'Huawei Matebook 13 ', 'pc9.jpg', 1523, 'pc', 'Brand: HUAWEI , Operating System: Windows 10 Home, CPU Manufacturer: Intel Core i7-‎‎8550U , Computer Memory Size: , Screen Size: ,‎\r\nWorld\'s First FullView Display: Immersive 13.9-inch 3K touchscreen with 91% screen-to-‎body ratio, only 0.57-inch thin and weighs only 2.93 lbs., perfect for at-home or on-the-go ‎computing.‎\r\nOne Touch Power Button: Enabling users to power on the notebook, finish identity ‎authentication through Windows Hello and access the desktop in less than 8 seconds. ‎Bluetooth - Bluetooth 4.1‎\r\n'),
(19, 'Samsung Galaxy S9', 'phone1.jpg', 656, 'phone', 'Brand: SAMSUNG , Wireless Carrier: Unlocked for All Carriers, Memory Storage ‎Capacity:64GB , Screen Size: 5.8 Inches , Item Weight: 1.12 Ounces,‎\r\nInspected and guaranteed to have minimal cosmetic damage, which is not noticeable ‎when the device is held at arm\'s length.‎'),
(20, 'Samsung  Galaxy Note 10', 'phone2.jpg', 998.99, 'phone', 'Brand : SAMSUNG, Wireless Carrier: Unknown Wireless Provider Type , Memory Storage ‎Capacity: 6GB , Screen Size: 6.7Inches , Item Weight: 16Ounces ,‎\r\nOS: Android - Chipset: Exynos 9810 - Graphics: Mali-G72 MP18 - Processor: Octa-core ‎‎(4x2.7 GHz Mongoose M3 & 4x1.7 GHz Cortex-A55)‎\r\n'),
(21, 'IPhone X', 'phone3.jpg', 677, 'phone', 'Brand: Apple , Wireless Carrier: Unlocked for All Carriers, Memory Storage Capacity:64GB , ‎Screen Size: 5.8 Inches , Item Weight: 6.4 Ounces,‎\r\nFully unlocked and compatible with any carrier of choice (e.g. AT&T, T-Mobile, Sprint, ‎Verizon, US-Cellular, Cricket, Metro, etc.).‎\r\nTested for battery health and guaranteed to have a minimum battery capacity of 80%.‎\r\n'),
(22, 'Samsung Galaxy S20', 'phone4.jpg', 899.99, 'phone', 'Brand: SAMSUNG, Wireless Carrier: Unlocked for All Carriers, Memory Storage Capacity: ‎‎128GB, Screen Size: 6.5 Inches, Item Weight: 6.56 Ounces,‎\r\n‎30X Space Zoom: Whether you want your cell phone to zoom in close from afar or magnify ‎details of something nearby, 30X Space Zoom gives you the power to get closer\r\n'),
(23, 'Samsung Galaxy Note 20 ', 'phone5.jpg', 1005.99, 'phone', 'Brand: SAMSUNG, Wireless Carrier: Unlocked for All Carriers, Memory Storage Capacity: ‎‎256GB, Screen Size: 6.2 Inches, Cellular Technology: 5G\r\nSharp 8K Video: Capture your life’s best moments in head-turning, super-smooth 8K video ‎that gives your movies that cinema-style quality\r\nAll Day Intelligent Battery: Intuitively manages your cellphone’s usage to conserve energy, ‎so you can go all day without charging (based on average battery life under typical usage ‎conditions)‎\r\n'),
(24, 'Samsung Galaxy Note 8', 'phone6.jpg', 755.99, 'phone', 'Brand: SAMSUNG, Wireless Carrier: Unlocked for All Carriers, Memory Storage Capacity: ‎‎256GB, Screen Size: 6.2 Inches, Operating system: Android‎\r\nHigher Resolution: 64 MP camera system captures and shares detailed portraits, stunning ‎landscapes and crisp close-ups\r\nSharp 8K Video: Capture your life’s best moments in head-turning, super-smooth 8K video ‎that gives your movies that cinema-style quality\r\n'),
(25, 'Huawei P30', 'phone7.jpg', 857.99, 'phone', 'Brand: HUAWEI, Wireless: Unkown Wireless Provider Type , Memory Storage Capacity: ‎‎128GB , Screen Size:6.3Inches , Item Weight: 5.6 Ounces ,‎\r\nAndroid 9.0 (Pie). Hisilicon Kirin 710 (12 nm). Octa-core (4x2.2 GHz Cortex-A73 & 4x1.7 GHz ‎Cortex-A53).‎\r\nFactory GSM Unlocked. International Version. DUAL SIM. 128 GB, 4 GB RAM\r\n'),
(26, 'IPhone 11 Max pro', 'phone8.png', 1011.99, 'phone', 'Apple iPhone 11 Pro Max supports frequency bands GSM , CDMA , HSPA , EVDO , LTE. ‎Official announcement date is September 2019. The device is working on an iOS 13 with a ‎Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder) processor. Apple iPhone 11 Pro ‎Max has 64GB 4GB RAM, 256GB 4GB RAM, 512GB 4GB RAM of built-in memory'),
(27, 'oppo Reno 4', 'phone9.jpg', 523, 'phone', 'Brand : OPPO, Wireless Carrier: T-Mobile, Verizon, MetroPCS, Sprint, AT&T , Memory ‎Storage Capacity:256GB , Screen Size:6.5 Inches , Item Weight: 5.92 Ounces , ‎\r\nSuper night view video | 65W Super Flash Charger (SuperVOOC 2.0) | 7.6mm ultra-thin ‎design | Video Super Anti-Shake 3.0 | 90Hz high-sensitivity curved screen | Dual mode 5G\r\n‎4000mAh battery, support 65W SuperVOOC fast charging. | Support NFC, Color OS 7.2 ‎based on Android 10 OS.‎'),
(28, ' Samsung Crystal 4K Smart TV', 'TV1.png', 756.99, 'tv', 'Brand: SAMSUNG, Resolution: 4K, Connectivity: Bluetooth, HDMI, Display technology: ‎QLED ‎\r\nMULTI VOICE: Smart TV with Alexa and Bixby.‎\r\nSMART TV POWERED BY TIZEN: Go beyond Smart TV with next-gen apps, super easy ‎control, and a host of enhancements that elevate the TV watching experience.‎\r\n'),
(29, 'LG 65 B8PLA OLED TV', 'TV2.jpg', 2555.99, 'tv', 'Brand: LG, Resolution: 4K, Display Technology: OLED, Screen Size: 65Inches, Display Type: ‎OLED ‎\r\nPIXEL LEVEL DIMMING: Millions of pixels emit their own light. Only OLED can turn pixels off ‎completely and independently. See stunning picture, perfect black, infinite contrast and ‎over a billion rich colors.‎\r\n‎3.1.2 Channel 440W – Immerse yourself in dimensional surround sound with 3.1.2 ‎channels, Dolby Atmos and DTS:X.‎\r\n'),
(30, 'LG UHD TV 55SM8200PLA', 'TV3.jpg', 577, 'tv', 'Brand: LG, Resolution: 720p, Connectivity Technology: No, Display Technology: LED ‎\r\nDimensions (W x H x D): TV without stand: 28.7\" x 17.2\" x 3.1\", TV with stand: 28.7\" x ‎‎18.7\" x 7.2\" ‎\r\n‎ No smart functionality\r\n'),
(31, '43 LG ULTRA HD 4K TV', 'TV4.jpg', 656.99, 'tv', 'Brand: LG, Resolution:4K, Supported Internet Services: Netflix Youtube, Screen Size: ‎‎65Inches\r\nPIXEL LEVEL DIMMING: 8.3 million pixels control the light show. Millions of pixels emit their ‎own light. Only OLED can turn pixels off completely and independently. See stunning ‎picture, perfect black, infinite contrast and over a billion rich colors.‎'),
(32, 'SONY KD49X8309 4K UHD SMART', 'TV5.jpg', 2146.99, 'tv', 'Brand: Sony, Resolution: 1080p, Connectivity technology WiFi, Supported Internet ‎Services: Netflix Youtube, Screen Size: 32Inches\r\nUSB HDD REC: USB HDD REC allows one-touch and timer recording of a digital broadcast ‎onto any USB HDD device up to 2TB in capacity\r\n'),
(33, 'TV SONY KD-85ZG9BAEP 8K HDR', 'TV6.jpg', 457.99, 'tv', 'Brand: Sony, Mounting: can be wall mounted, Resolution:4K , Connectivity: HDMI, ‎\r\nSMART ANDROID TV with GOOGLE ASSISTANT: Use your voice to control your TV and ‎smart home devices, easily search for movies and shows, get answers, and manage tasks, ‎all hands-free\r\nWORKS WITH ALEXA: Stream smart camera feeds with your voice. Through an Alexa ‎enabled device, just ask Alexa to play music, launch video apps, turn up the volume, and ‎more\r\n'),
(34, 'Samsung UN55MU6103 Smart 4k', 'TV7.jpg', 657.99, 'tv', 'Brand: SAMSUNG, Resolution: 4K, Connectivity: Bluetooth, Wi-Fi, USB, Ethernet, HDMI, ‎Supported internet services: Netflix, Hulu, Prime Video, Apple TV, Disney Plus, Vudu, ‎Youtube\r\nSMART TV POWERED BY TIZEN : Go beyond Smart TV with next-gen apps, super easy ‎control, and a host of enhancements that elevate the TV watching experience.‎\r\n'),
(35, 'smart tv samsung slim HD', 'TV8.jpg', 776, 'tv', 'Brand: SAMSUNG, Mounting Type: can be wall mounted, Resolution: 1080p, Connectivity: ‎Wireless, Bluetooth, USB, HDMI\r\nINCLUDED ACCESSORIES: SAMSUNG OneRemote (TM-2050A), No Gap Wall Mount, One ‎Connect Box, One Invisible Connection Cable 5m | For a gapless mount wall must be flat ‎and with no sockets or outlets\r\n‎100% COLOR VOLUME WITH QUANTUM DOT: Quantum dots produce over a billion shades ‎of color that stay true-to-life even in bright scenes.‎'),
(36, 'smart tv samsung UM-75 HD', 'TV9.jpg', 323.99, 'tv', 'Smart tv, brand SAMSUNG, Resolution: 1080p, Display Technology LED, Backlight: Micro ‎Dimming Ultimate,‎\r\nSmart Functionality: Yes – Motion and Voice Control with Camera Accessory ‎\r\nDimensions: TV without stand (Width x Height x Depth): 66.0\" x 37.8\'\' x 1.5\'\', TV with stand ‎‎(Width x Height x Depth): 66.0\" x 39.6\'\' x 13.4\'\'‎\r\nAccessories Included: Smart Remote Control, 4 Pairs of 3D Active Glasses (SSG-5150GB)‎');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
