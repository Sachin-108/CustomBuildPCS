-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 07:20 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(11, 13, 32, 1),
(13, 13, 11, 1),
(15, 9, 10, 1),
(16, 9, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(2, 'PRE BUILD COMPUTERS', 'desktop-pc'),
(4, 'CUSTOM BUILD COMPUTERS', '');

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` int(6) UNSIGNED NOT NULL,
  `cpu` varchar(30) NOT NULL,
  `gpu` varchar(30) NOT NULL,
  `storage` varchar(30) NOT NULL,
  `ram` varchar(30) NOT NULL,
  `motherboard` varchar(30) NOT NULL,
  `psu` varchar(30) NOT NULL,
  `cabinet` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`id`, `cpu`, `gpu`, `storage`, `ram`, `motherboard`, `psu`, `cabinet`) VALUES
(1, 'a', 'b', 'c', 'd', 'e', 'f', 'g'),
(2, '', '', '', '', '', '', ''),
(3, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p>15-inch laptop ideal for gamers. Featuring the latest Intel&reg; processors for superior gaming performance, and life-like NVIDIA&reg; GeForce&reg; graphics and an advanced thermal cooling design.</p>\r\n', 'dell-inspiron-15-7000-15-6', 899, 'dell-inspiron-15-7000-15-6.jpg', '2018-07-09', 2),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>Surface Pro 4 powers through everything you need to do, while being lighter than ever before</p>\r\n\r\n<p>The 12.3 PixelSense screen has extremely high contrast and low glare so you can work through the day without straining your eyes</p>\r\n\r\n<p>keyboard is not included and needed to be purchased separately</p>\r\n\r\n<p>Features an Intel Core i5 6th Gen (Skylake) Core,Wireless: 802.11ac Wi-Fi wireless networking; IEEE 802.11a/b/g/n compatible Bluetooth 4.0 wireless technology</p>\r\n\r\n<p>Ships in Consumer packaging.</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 799, 'microsoft-surface-pro-4-typecover-128-gb.jpg', '2018-05-10', 3),
(3, 1, 'DELL Inspiron 15 5000 15.6', '<p>Dell&#39;s 15.6-inch, midrange notebook is a bland, chunky block. It has long been the case that the Inspiron lineup lacks any sort of aesthetic muse, and the Inspiron 15 5000 follows this trend. It&#39;s a plastic, silver slab bearing Dell&#39;s logo in a mirror sheen.</p>\r\n\r\n<p>Lifting the lid reveals the 15.6-inch, 1080p screen surrounded by an almost offensively thick bezel and a plastic deck with a faux brushed-metal look. There&#39;s a fingerprint reader on the power button, and the keyboard is a black collection of island-style keys.</p>\r\n', 'dell-inspiron-15-5000-15-6', 599, 'dell-inspiron-15-5000-15-6.jpg', '2018-05-12', 1),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Made for portability with a slim, lightweight chassis design&nbsp;<br />\r\n<br />\r\n- Powerful processing helps you create and produce on the go&nbsp;<br />\r\n<br />\r\n- Full HD screen ensures crisp visuals for movies, web pages, photos and more&nbsp;<br />\r\n<br />\r\n- Enjoy warm, sparkling sound courtesy of two Harman speakers and Dolby Audio&nbsp;<br />\r\n<br />\r\n- Fast data transfer and high-quality video connection with USB-C and HDMI ports&nbsp;<br />\r\n<br />\r\nThe Lenovo&nbsp;<strong>IdeaPad 320s-14IKB 14&quot; Laptop</strong>&nbsp;is part of our Achieve range, which has the latest tech to help you develop your ideas and work at your best. It&#39;s great for editing complex documents, business use, editing photos, and anything else you do throughout the day.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 399, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '2018-05-10', 3),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>9.7 inch Retina Display, 2048 x 1536 Resolution, Wide Color and True Tone Display</p>\r\n\r\n<p>Apple iOS 9, A9X chip with 64bit architecture, M9 coprocessor</p>\r\n\r\n<p>12 MP iSight Camera, True Tone Flash, Panorama (up to 63MP), Four-Speaker Audio</p>\r\n\r\n<p>Up to 10 Hours of Battery Life</p>\r\n\r\n<p>iPad Pro Supports Apple Smart Keyboard and Apple Pencil</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 339, 'apple-9-7-ipad-32-gb-gold.jpg', '2023-01-03', 1),
(6, 1, 'DELL Inspiron 15 5000 15', '<p>15-inch laptop delivering an exceptional viewing experience, a head-turning finish and an array of options designed to elevate your entertainment, wherever you go.</p>\r\n', 'dell-inspiron-15-5000-15', 449.99, 'dell-inspiron-15-5000-15.jpg', '0000-00-00', 0),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>4K video recording at 30 fps</p>\r\n\r\n<p>12-megapixel camera</p>\r\n\r\n<p>Fingerprint resistant coating</p>\r\n\r\n<p>Antireflective coating</p>\r\n\r\n<p>Face Time video calling</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 619, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', '0000-00-00', 0),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Versatile Windows 10 device with keyboard and pen included, 2-in-1 functionality: use as both laptop and tablet.Update Windows periodically to ensure that your applications have the latest security settings.</p>\r\n\r\n<p>All day battery life, rated up to 11 hours of video playback; 128GB Solid State storage. Polymer Battery.With up to 11 hours between charges, you can be sure that Transformer Mini T102HA will be right there whenever you need it. You can charge T102HA via its micro USB port, so you can use a mobile charger or any power bank with a micro USB connector.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 549.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '0000-00-00', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>- Top performance for playing eSports and more&nbsp;<br />\r\n<br />\r\n- NVIDIA GeForce GTX graphics deliver smooth visuals&nbsp;<br />\r\n<br />\r\n- GeForce Experience delivers updates straight to your PC&nbsp;<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Core Lite&nbsp;</strong>is part of our Gaming range, bringing you the most impressive PCs available today. It has spectacular graphics and fast processing performance to suit the most exacting players.</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 59999, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', '0000-00-00', 0),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', '<p>All-new gaming desktop featuring powerful AMD Ryzen&trade; processors, graphics ready for VR, LED lighting and a meticulous design for optimal cooling.</p>\r\n\r\n<ul>\r\n	<li>Experience the power of Intel Core i7 Quad Core with Base Frequency of 2.0 GHz and Turbo Boost upto 3.0 GHz. Dual Storage of 256GB SSD + 1TB HDD. 256GB SSD Offers 10 times faster performance and quick boot time. Genuine Windows 11 Professional and MS Office Suite Installed for lifetime.</li>\r\n	<li>Ports : 6 USB Ports, VGA, LAN Port, Mic, Speakers, and Display Port Output. Supports dual monitors as well. Enjoy the wireless internet with the dual band (2.4 GHz/5 GHz) Wifi &amp; Bluetooth Dongle Included with your PC.</li>\r\n</ul>\r\n', 'dell-inspiron-5675-gaming-pc-recon-blue', 59999, 'dell-inspiron-5675-gaming-pc-recon-blue.jpg', '2023-01-11', 3),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>What&#39;s inside matters.</p>\r\n\r\n<p>Without proper cooling, top tierperformance never reaches its fullpotential.</p>\r\n\r\n<p>Nine lighting zones accentuate theaggressive lines and smooth blackfinish of this unique galvanized steelcase.</p>\r\n\r\n<h3>CHIST Extreme Gaming Pc Intel Core i7 | 8GB Ram 256 GB SSD 1TB Hard Disk GT 730 Graphic Card 20 inch HD Monitor Gaming Keyboard Mouse WiFi</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Intel Core i7-860 4-Core 8- Threats - 8MB caches 2.8 GHz (3.46 GHz Turbo) Processor (OME)</li>\r\n	<li>H55 Motherboard Ultra Durable | 20 Full HD LED Monitor with VGA &amp; HDMI</li>\r\n	<li>Aarvex 8GB DDR3 1333 MHz Ram| Frontech 800W Power Supply</li>\r\n	<li>1TB 7200 RPM - 256GB SSD HARD DISK GT 730 2GB Graphic Card Gaming Keyboard Mouse wifi|</li>\r\n	<li>WINDOWS 10 (Trail) / Powerful Gaming Desktop all Games Run at 720p min: 50-60FPS</li>\r\n</ul>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 48998, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', '2023-01-11', 1),
(12, 2, 'ACER Aspire GX-781 Gaming PC', '<p>- GTX 1050 graphics card lets you play huge games in great resolutions&nbsp;<br />\r\n<br />\r\n- Latest generation Core&trade; i5 processor can handle demanding media software&nbsp;<br />\r\n<br />\r\n- Superfast SSD storage lets you load programs in no time&nbsp;<br />\r\n<br />\r\nThe Acer&nbsp;<strong>Aspire&nbsp;GX-781 Gaming PC&nbsp;</strong>is part of our Gaming range, which offers the most powerful PCs available today. It has outstanding graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'acer-aspire-gx-781-gaming-pc', 74999, 'acer-aspire-gx-781-gaming-pc.jpg', '2018-05-12', 3),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>Features the latest quad core Intel i5 processor and discrete graphics. With this power, you&rsquo;re ready to take on any activity from making digital art to conquering new worlds in VR.</p>\r\n\r\n<p>Choose the performance and storage you need. Boot up in seconds with to 128 GB SSD.</p>\r\n\r\n<p>Ditch the dull grey box, this desktop comes infused with style. A new angular bezel and bold green and black design give your workspace just the right amount of attitude.</p>\r\n\r\n<p>Up to 3 times faster performance - GeForce GTX 10-series graphics cards are powered by Pascal to deliver twice the performance of previous-generation graphics cards.</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 69999, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '2018-05-12', 1),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>- Multi-task with ease thanks to Intel&reg; i5 processor&nbsp;<br />\r\n<br />\r\n- Prepare for battle with NVIDIA GeForce GTX graphics card&nbsp;<br />\r\n<br />\r\n- VR ready for the next-generation of immersive gaming and entertainment<br />\r\n<br />\r\n- Tool-less upgrade helps you personalise your system to your own demands&nbsp;<br />\r\n<br />\r\nPart of our Gaming range, which features the most powerful PCs available today, the Lenovo&nbsp;<strong>Legion Y520 Gaming PC</strong>&nbsp;has superior graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'lenovo-legion-y520-gaming-pc', 89999, 'lenovo-legion-y520-gaming-pc.jpg', '2023-01-05', 1),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', '<p>- NVIDIA GeForce GTX graphics for stunning gaming visuals<br />\r\n<br />\r\n- Made for eSports with a speedy 7th generation Intel&reg; Core&trade; i5 processor<br />\r\n<br />\r\n- GeForce technology lets you directly update drivers, record your gaming and more<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Minerva XT-R Gaming PC</strong>&nbsp;is part of our Gaming range, which offers the most powerful PCs available. Its high-performance graphics and processing are made to meet the needs of serious gamers.</p>\r\n', 'pc-specialist-vortex-minerva-xt-r-gaming-pc', 99999, 'pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', '2018-07-09', 1),
(16, 2, 'PC SPECIALIST Vortex Core II Gaming PC', '<p>Processor: Intel&reg; CoreTM i3-6100 Processor- Dual-core- 3.7 GHz- 3 MB cache</p>\r\n\r\n<p>Memory (RAM): 8 GB DDR4 HyperX, Storage: 1 TB HDD, 7200 rpm</p>\r\n\r\n<p>Graphics card: NVIDIA GeForce GTX 950 (2 GB GDDR5), Motherboard: ASUS H110M-R</p>\r\n\r\n<p>USB: USB 3.0 x 3- USB 2.0 x 5, Video interface: HDMI x 1- DisplayPort x 1- DVI x 2, Audio interface: 3.5 mm jack, Optical disc drive: DVD/RW, Expansion card slot PCIe: (x1) x 2</p>\r\n\r\n<p>Sound: 5.1 Surround Sound support PSU Corsair: VS350, 350W, Colour: Black- Green highlights, Box contents: PC Specialist Vortex Core- AC power cable</p>\r\n', 'pc-specialist-vortex-core-ii-gaming-pc', 64999, 'pc-specialist-vortex-core-ii-gaming-pc.jpg', '2018-05-10', 2),
(19, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black', '<p>The next generation of our best-reviewed Fire tablet, with up to 12 hours of battery life, a vibrant 8&quot; HD display, a 1.3 GHz quad-core processor, 1.5 GB of RAM, and Dolby Audio. More durable than the latest iPad.</p>\r\n\r\n<p>16 or 32 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black', 99.99, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black.jpg', '2018-05-10', 1),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', '<p>9.7-inch Retina display, wide color and true tone</p>\r\n\r\n<p>A9 third-generation chip with 64-bit architecture</p>\r\n\r\n<p>M9 motion coprocessor</p>\r\n\r\n<p>1.2MP FaceTime HD camera</p>\r\n\r\n<p>8MP iSight camera</p>\r\n\r\n<p>Touch ID</p>\r\n\r\n<p>Apple Pay</p>\r\n', 'apple-9-7-ipad-32-gb-space-grey', 339, 'apple-9-7-ipad-32-gb-space-grey.jpg', '2018-05-12', 1),
(27, 1, 'Dell XPS 15 9560', '<p>The world&rsquo;s smallest 15.6-inch performance laptop packs powerhouse performance and a stunning InfinityEdge display &mdash; all in our most powerful XPS laptop. Featuring the latest Intel&reg; processors.</p>\r\n\r\n<h2>Operating system</h2>\r\n\r\n<p><strong>Available with Windows 10 Home&nbsp;</strong>- Get the best combination of Windows features you know and new improvements you&#39;ll love.</p>\r\n\r\n<h2>Innovation that inspires.</h2>\r\n\r\n<p>When you&rsquo;re at the forefront of ingenuity, you get noticed. That&rsquo;s why it&rsquo;s no surprise the XPS 15 was honored. The winning streak continues.</p>\r\n\r\n<h2>Meet the smallest 15.6-inch laptop on the planet.</h2>\r\n\r\n<p><strong>The world&rsquo;s only 15.6-inch InfinityEdge display*:</strong>&nbsp;The virtually borderless display maximizes screen space by accommodating a 15.6-inch display inside a laptop closer to the size of a 14-inch, thanks to a bezel measuring just 5.7mm.<br />\r\n&nbsp;<br />\r\n<strong>Operating System: Windows 10 Pro.</strong><br />\r\n<br />\r\n<strong>One-of-a-kind design:</strong>&nbsp;Measuring in at a slim 11-17mm and starting at just 4 pounds (1.8 kg) with a solid state drive, the XPS 15 is one of the world&rsquo;s lightest 15-inch performance-class laptop.</p>\r\n\r\n<h2>A stunning view, wherever you go.</h2>\r\n\r\n<p><strong>Dazzling detail:</strong>&nbsp;With the UltraSharp 4K Ultra HD display (3840 x 2160), you can see each detail of every pixel without needing to zoom in. And with 6 million more pixels than Full HD and 3 million more than the MacBook Pro, you can edit images with pinpoint accuracy without worrying about blurriness or jagged lines.<br />\r\n<br />\r\n<strong>Industry-leading color:</strong>&nbsp;The XPS 15 is the only laptop with 100% Adobe RGB color, covering a wider color gamut and producing shades of color outside conventional panels so you can see more of what you see in real life. And with over 1 billion colors, images appear smoother and color gradients are amazingly lifelike with more depth and dimension. Included is Dell PremierColor software, which automatically remaps content not already in Adobe RGB format for onscreen colors that appear amazingly accurate and true to life.<br />\r\n<br />\r\n<strong>Easy collaboration:</strong>&nbsp;See your screen from nearly every angle with an IGZO IPS panel, providing a wide viewing angle of up to 170&deg;.&nbsp;<br />\r\n<br />\r\n<strong>Brighten your day:</strong>&nbsp;With 350 nit brightness, it&rsquo;s brighter than a typical laptop.<br />\r\n<br />\r\n<strong>Touch-friendly:</strong>&nbsp;Tap, swipe and pinch your way around the screen. The optional touch display lets you interact naturally with your technology.</p>\r\n', 'dell-xps-15-9560', 1599, 'dell-xps-15-9560.jpg', '2018-07-09', 9),
(31, 4, 'X1-V1', '<p>&nbsp;</p>\r\n\r\n<p><strong>Specifications -</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Processor </strong></p>\r\n\r\n<p><strong>AMD Ryzen 5 5600 (6 Cores / 12 Threads)</strong></p>\r\n\r\n<p><strong>4.40GHz Boost Clock</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Memory</strong></p>\r\n\r\n<p><strong>16GB DDR4 3600MHz</strong></p>\r\n\r\n<p><strong>Team Group Vulcan Z</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage</strong></p>\r\n\r\n<p><strong>512GB SATA SSD Storage</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card</strong></p>\r\n\r\n<p><strong>Nvidia GeForce GTX 1650 4GB GDDR6</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply Unit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>550W 80+ Bronze Certified PSU</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>&nbsp;A320M Chipset</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooling </strong></p>\r\n\r\n<p><strong>AMD Wraith Stealth Air Cooler + Corsair ML140 Fan</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>X1 Aluminum Chassis</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p><strong>3-Pin India specific Power Cable</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n', 'x1-v1', 60000, 'x1-v1.png', '2023-01-05', 1),
(32, 4, 'X1-V2', '<p><strong>Processor </strong></p>\r\n\r\n<p><strong>AMD Ryzen 5 5600 (6 Cores / 12 Threads)</strong></p>\r\n\r\n<p><strong>4.40GHz Boost Clock</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Memory</strong></p>\r\n\r\n<p><strong>16GB DDR4 3600MHz</strong></p>\r\n\r\n<p><strong>Team Group Vulcan Z</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage</strong></p>\r\n\r\n<p><strong>1TB (512GB x2 Units) SATA SSD Storage</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card</strong></p>\r\n\r\n<p><strong>Nvidia Gigabyte RTX 3060 12GB Windforce OC</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply Unit</strong></p>\r\n\r\n<p><strong>550W 80+ Bronze Certified PSU</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>MSI A320M-A Pro</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooling </strong></p>\r\n\r\n<p><strong>AMD Wraith Stealth Air Cooler + Corsair ML140 Fan</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>X1 Aluminum Chassis</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p><strong>3-Pin India-specific Power Cable</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n\r\n<p><strong>X1 Carry Case</strong></p>\r\n', 'x1-v2', 87000, 'x1-v2.png', '2023-01-11', 2),
(33, 4, 'X1-V3', '<p><strong>Processor </strong></p>\r\n\r\n<p><strong>AMD Ryzen 7 5700X (8 Cores / 16 Threads)</strong></p>\r\n\r\n<p><strong>4.40GHz Boost Clock</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Memory</strong></p>\r\n\r\n<p><strong>32GB DDR4 3600MHz</strong></p>\r\n\r\n<p><strong>Team Group Vulcan Z</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage</strong></p>\r\n\r\n<p><strong>1TB Gen4 NVMe SSD Storage</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card</strong></p>\r\n\r\n<p><strong>Nvidia GeForce RTX 3060Ti 8GB GDDR6 MSI Windforce OC</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply Unit</strong></p>\r\n\r\n<p><strong>550W 80+ Bronze Certified PSU</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>B550 ITX Chipset Motherboard </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooling </strong></p>\r\n\r\n<p><strong>AMD Wraith Stealth Air Cooler + Corsair ML140 Fan</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>X1 Aluminum Chassis</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p><strong>3-Pin India-specific Power Cable</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n\r\n<p><strong>X1 Carry Case</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'x1-v3', 121000, 'x1-v3.png', '0000-00-00', 0),
(34, 4, 'Phantom II v1', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>AMD Ryzen 5 5600 </strong></p>\r\n\r\n<p><strong>(6 Core /12 Threads, 4.4GHz Turbo)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>AMD Radeon RX 6600 8GB GDDR6 </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>16GB DDR4 3600MHz (8x2)</strong></p>\r\n\r\n<p><strong>Team Group Vulcan Z&nbsp; </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>500GB SATA SSD</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>MSI A320M A Pro Motherboard</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>N/A</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>550W 80+ Bronze Rated with Active PFC</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>Aerocool Scar Chassis</strong></p>\r\n\r\n<p><strong>Cooling </strong></p>\r\n\r\n<p><strong>Deepcool AG400 CPU Air Cooler + ARGB Fan Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p><strong>3-Pin India-specific Power Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>210 x 519 x 445 mm (W x H x D)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'phantom-ii-v1', 80000, 'phantom-ii-v1.png', '2023-01-03', 2),
(35, 4, 'Phantom II v2', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>AMD Ryzen 7 5700X</strong></p>\r\n\r\n<p><strong>(8 Core /16 Threads, 4.6GHz Turbo)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>AMD Radeon RX 6600 8GB GDDR6</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>32GB DDR4 3600MHz (16x2)</strong></p>\r\n\r\n<p><strong>Team Group DELTA R RGB Ram Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>1 TB NVMe SSD PCIe Gen-4 M.2</strong></p>\r\n\r\n<p><strong>KINGSTON NV2</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>MSI B550M Pro VDH WiFi </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>Intel AC WiFi + Bluetooth</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>550W 80+ Bronze Rated with Active PFC</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>Aerocool Scar Chassis</strong></p>\r\n\r\n<p><strong>Cooling </strong></p>\r\n\r\n<p><strong>Deepcool AG400 CPU Air Cooler + ARGB Fan Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p><strong>3-Pin India-specific Power Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>210 x 519 x 445 mm (W x H x D)</strong></p>\r\n', 'phantom-ii-v2', 106000, 'phantom-ii-v2.png', '0000-00-00', 0),
(36, 4, 'Phantom II v3', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>AMD Ryzen 7 5700X</strong></p>\r\n\r\n<p><strong>(8 Core /16 Threads, 4.6GHz Turbo)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>Nvidia GeForce RTX 3060 Ti (iGame Vulcan with Flippable OLED Statistics Screen) </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>32GB DDR4 3600MHz</strong></p>\r\n\r\n<p><strong>Team Group T-Force Delta R RGB Ram Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>1 TB NVMe SSD PCIe Gen-4 M.2</strong></p>\r\n\r\n<p><strong>KINGSTON NV2</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>MSI B550M Pro VDH WiFi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>Intel AC WiFi + Bluetooth </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>750W 80+ Gold Rated</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>Aerocool Scar Chassis</strong></p>\r\n\r\n<p><strong>Cables</strong></p>\r\n\r\n<p><strong>Custom sleeved Cables</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3-Pin India-specific Power Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p><strong>GPU stand</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>210 x 519 x 445 mm (W x H x D)</strong></p>\r\n', 'phantom-ii-v3', 131000, 'phantom-ii-v3.png', '0000-00-00', 0),
(37, 4, 'Nightwolf v1 (ryzen)', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>AMD Ryzen 5 5600 (OC)</strong></p>\r\n\r\n<p><strong>(6 Core /12 Threads, 4.4GHz Turbo)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>NVIDIA GeForce RTX 3060 Ti 8GB GDDR6</strong></p>\r\n\r\n<p><strong>iGAME VULCAN OC EDITION</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>16GB DDR4 3600MHz (8x2)</strong></p>\r\n\r\n<p><strong>T.Force Delta R ARGB Ram Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>1TB NVMe SSD</strong></p>\r\n\r\n<p><strong>PCIe Gen-4 M.2 KINGSTON NV2</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>MSI B550M Pro VDH WiFi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>Intel AC WiFi + Bluetooth 4.0</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>550W 80+ Bronze Rated Antech NE 550M V2</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>Montech Air 100 Lite Chassis</strong></p>\r\n\r\n<p><strong>Cooling </strong></p>\r\n\r\n<p><strong>DeepCool AK400 CPU Air Cooler + ARGB Fan Kit</strong></p>\r\n\r\n<p><strong>Misc. </strong></p>\r\n\r\n<p><strong>Sleeved Cables </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p><strong>3-Pin India-specific Power Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>31.6 Liters (Volume)</strong></p>\r\n\r\n<p><strong>205mm x 391mm x 395mm (Width, Height, Depth)</strong></p>\r\n', 'nightwolf-v1-ryzen', 114500, 'nightwolf-v1-ryzen.png', '2023-01-03', 1),
(38, 4, 'Nightwolf v2 (Ryzen)', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>AMD Ryzen 7 5700X </strong></p>\r\n\r\n<p><strong>(8 Core /16 Threads, 4.6GHz Turbo)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>NVIDIA GeForce RTX 3060 Ti 8GB GDDR6</strong></p>\r\n\r\n<p><strong>iGAME VULCAN EDITION</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>32GB DDR4 3600MHz (16x2)</strong></p>\r\n\r\n<p><strong>T.Force Delta R ARGB Ram Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>1TB NVMe SSD</strong></p>\r\n\r\n<p><strong>PCIe Gen-4 M.2 KINGSTON NV2</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>MSI B550M Pro VDH WiFi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>Intel AC WiFi + Bluetooth </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>650W 80+ Bronze PSU with Active PFC</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>Montech Air 100 Lite Chassis</strong></p>\r\n\r\n<p><strong>Cooling </strong></p>\r\n\r\n<p><strong>DeepCool AK400 CPU Air Cooler + ARGB Fan Kit</strong></p>\r\n\r\n<p><strong>Misc. </strong></p>\r\n\r\n<p><strong>Custom Sleeved Cables </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p><strong>3-Pin India-specific Power Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>31.6 Liters (Volume)</strong></p>\r\n\r\n<p><strong>205mm x 391mm x 395mm (Width, Height, Depth)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'nightwolf-v2-ryzen', 131000, 'nightwolf-v2-ryzen.png', '2023-01-11', 1),
(39, 4, 'Nightwolf v3 (ryzen)', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>AMD Ryzen 7 5800X3D</strong></p>\r\n\r\n<p><strong>(8 Core /16 Threads, 4.6GHz Turbo)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>NVIDIA GEFORCE RTX 3070 Ti 8GB GDDR6X </strong></p>\r\n\r\n<p><strong>GIGABYTE GAMING OC EDITION</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>32GB DDR4 3600MHz (16x2)</strong></p>\r\n\r\n<p><strong>T.Force Delta R ARGB Ram Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>1TB NVMe SSD</strong></p>\r\n\r\n<p><strong>PCIe Gen-4 M.2</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>MSI B550M Pro VDH WiFi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>Intel AC WiFi&nbsp; + Bluetooth 4.0</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>750W 80+ Gold&nbsp; Certified </strong></p>\r\n\r\n<p><strong>Deepcool PM750D</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>Montech Air 100 Lite Chassis</strong></p>\r\n\r\n<p><strong>Cooling</strong></p>\r\n\r\n<p><strong>Shadow 240v2 ARGB : 240mm AIO + ARGB Fan Kit</strong></p>\r\n\r\n<p><strong>Misc. </strong></p>\r\n\r\n<p><strong>Custom Sleeved Cables </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p><strong>3-Pin India-specific Power Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>31.6 Liters (Volume)</strong></p>\r\n\r\n<p><strong>205mm x 391mm x 395mm (Width, Height, Depth)</strong></p>\r\n', 'nightwolf-v3-ryzen', 169000, 'nightwolf-v3-ryzen.png', '0000-00-00', 0),
(40, 4, 'Nightwolf v3 (Intel)', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>Intel&reg; Core&trade; i5-13600K Processor</strong></p>\r\n\r\n<p><strong>24M Cache, up to 5.10 GHz</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>NVIDIA GeForce RTX&trade; 3070 Ti GAMING OC 8GB</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>32GB DDR5 5200MHz (16x2)</strong></p>\r\n\r\n<p><strong>Kingston Fury Beast Ram Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>1TB NVMe SSD</strong></p>\r\n\r\n<p><strong>PCIe Gen-4 M.2 KINGSTON NV2</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>MSI PRO B660M-A WIFI DDR5</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>Intel AC WiFi + Bluetooth </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>750W 80+ Gold PSU with Active PFC</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>Montech Air 100 Lite Chassis</strong></p>\r\n\r\n<p><strong>Cooling </strong></p>\r\n\r\n<p><strong>DeepCool AK620 CPU Air Cooler + ARGB Fan Kit</strong></p>\r\n\r\n<p><strong>Misc. </strong></p>\r\n\r\n<p><strong>Custom Sleeved Cables </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p><strong>3-Pin India-specific Power Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>31.6 Liters (Volume)</strong></p>\r\n\r\n<p><strong>205mm x 391mm x 395mm (Width, Height, Depth)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'nightwolf-v3-intel', 17200, 'nightwolf-v3-intel.png', '2023-01-03', 1),
(41, 4, 'Vulcan v1', '<p><strong>Tax included. Shipping calculated at checkout.</strong></p>\r\n\r\n<p><strong>Specifications -</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Processor </strong></p>\r\n\r\n<p><strong>AMD Ryzen 5 5600 OC (6 Cores / 12 Threads) </strong></p>\r\n\r\n<p><strong>4.50GHz Boost Clock*</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Memory</strong></p>\r\n\r\n<p><strong>16GB DDR4 3600MHz </strong></p>\r\n\r\n<p><strong>Team Group T-Force Delta R RGB Ram Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage</strong></p>\r\n\r\n<p><strong>512GB Gen4 NVMe SSD Storage</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card</strong></p>\r\n\r\n<p><strong>NVIDIA GeForce RTX 3060 Ti 8GB GDDR6</strong></p>\r\n\r\n<p><strong>iGAME VULCAN OC EDITION</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply Unit</strong></p>\r\n\r\n<p><strong>550W 80+ Bronze Certified PSU</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cables</strong></p>\r\n\r\n<p><strong>Custom sleeved Cables</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>Asrock B550M-ITX/ac</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooling </strong></p>\r\n\r\n<p><strong>Shadow 240: 240 mm AIO Liquid Cooler with 5 fans (TOTAL)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>ECLIPSE P200A DRGB Case</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p><strong>3-Pin India-specific Power Cable</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n\r\n<p><strong>Riser Cable 3.0</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Warranty</strong></p>\r\n\r\n<p><strong>1 Year XRIG Remote Technical Support</strong></p>\r\n\r\n<p><strong>3 Years Parts Warranty from the Manufacturer</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'vulcan-v1', 121000, 'vulcan-v1.png', '0000-00-00', 0),
(42, 4, 'Vulcan v2', '<p><strong>Processor </strong></p>\r\n\r\n<p><strong>AMD Ryzen 7 5700X Desktop Processor 8 CPU cores, 16 threads, </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Memory</strong></p>\r\n\r\n<p><strong>32GB DDR4 3600MHz </strong></p>\r\n\r\n<p><strong>Team Group T-Force Delta R RGB Ram Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage</strong></p>\r\n\r\n<p><strong>1TB Gen4 NVMe SSD Storage</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card</strong></p>\r\n\r\n<p><strong>NVIDIA GeForce RTX 3060 Ti 8GB GDDR6</strong></p>\r\n\r\n<p><strong>iGAME VULCAN OC EDITION</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply Unit</strong></p>\r\n\r\n<p><strong>750W 80+ Gold Certified PSU</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cables</strong></p>\r\n\r\n<p><strong>Custom sleeved Cables</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>Asrock B550M-ITX/ac</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooling </strong></p>\r\n\r\n<p><strong>Shadow 240: 240 mm AIO Liquid Cooler with 5 fans (TOTAL)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chassis</strong></p>\r\n\r\n<p><strong>ECLIPSE P200A DRGB Case</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Accessories</strong></p>\r\n\r\n<p><strong>3-Pin India-specific Power Cable</strong></p>\r\n\r\n<p><strong>HDMI Cable</strong></p>\r\n\r\n<p><strong>32GB USB 3.0 Flash Drive</strong></p>\r\n\r\n<p><strong>Riser Cable 3.0</strong></p>\r\n', 'vulcan-v2', 138000, 'vulcan-v2.jpeg', '0000-00-00', 0),
(43, 4, 'P1 Pro', '<p>Processor (CPU)</p>\r\n\r\n<p>AMD Ryzen 9 5900X</p>\r\n\r\n<p>(12 Core /24 Threads, 4.8GHz Turbo)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Graphics Card (GPU)</p>\r\n\r\n<p>NVIDIA GeForce RTX 3070Ti 8GB GDDR6X</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>System Memory (RAM)</p>\r\n\r\n<p>32GB DDR4 3200MHz (16x2)</p>\r\n\r\n<p>TeamGroup T.Force Vulcan Z</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Storage (SSD)</p>\r\n\r\n<p>2 TB NVMe PCIe Gen4 M.2</p>\r\n\r\n<p>KINGSTON NV2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Case</p>\r\n\r\n<p>Coolermaster NR200p MAX (non-painted)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cooling</p>\r\n\r\n<p>Custom Cooler Master 280mm AIO Liquid Cooler</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Motherboard</p>\r\n\r\n<p>ASUS ROG STRIX B550-I Gaming (WIFI)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Power Supply (PSU)</p>\r\n\r\n<p>Custom Cooler Master SFF 850W 80+ Gold Rated</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Wireless Networking</p>\r\n\r\n<p>WiFi 6 AX + Bluetooth 5.0</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Wired Networking</p>\r\n\r\n<p>Intel&reg; I225-V 2.5G LAN (Ethernet)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dimensions</p>\r\n\r\n<p>18 Liters (Volume)</p>\r\n\r\n<p>232mm x 647mm x 620mm (Width, Height, Depth)</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'p1-pro', 182000, 'p1-pro.png', '0000-00-00', 0),
(44, 4, 'P1', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>AMD Ryzen 9 5900X</strong></p>\r\n\r\n<p><strong>(12 Core /24 Threads, 4.8GHz Turbo)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>NVIDIA GeForce RTX 3070Ti 8GB GDDR6X</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>32GB DDR4 3200MHz (16x2)</strong></p>\r\n\r\n<p><strong>TeamGroup T.Force Vulcan Z</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>2 TB NVMe PCIe Gen4 M.2 </strong></p>\r\n\r\n<p><strong>KINGSTON NV2</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Case</strong></p>\r\n\r\n<p><strong>Coolermaster NR200p MAX (non-painted)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooling</strong></p>\r\n\r\n<p><strong>Custom Cooler Master 280mm AIO Liquid Cooler</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>ASUS ROG STRIX B550-I Gaming (WIFI)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>Custom Cooler Master SFF 850W 80+ Gold Rated</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>WiFi 6 AX + Bluetooth 5.0</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>Intel&reg; I225-V 2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>18 Liters (Volume)</strong></p>\r\n\r\n<p><strong>232mm x 647mm x 620mm (Width, Height, Depth)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Warranty &amp; Support -</strong></p>\r\n\r\n<p><strong>3 Years Parts Warranty (Directly from Component Manufacturer)</strong></p>\r\n\r\n<p><strong>1-Year Service and Support Warranty (Directly from XRIG)</strong></p>\r\n', 'p1', 145000, 'p1.png', '0000-00-00', 0),
(45, 4, 'P1 untra', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>AMD Ryzen 9 5950X</strong></p>\r\n\r\n<p><strong>(16 Core /32 Threads, 4.9GHz Turbo)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>NVIDIA GeForce RTX 3080Ti 12GB GDDR6X</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>64GB DDR4 3600MHz (32x2)</strong></p>\r\n\r\n<p><strong>TeamGroup T.Force Vulcan Z</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>2TB NVMe PCIe Gen4 M.2 </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooling</strong></p>\r\n\r\n<p><strong>Custom Cooler Master 280mm AIO Liquid Cooler</strong></p>\r\n\r\n<p><strong>Custom High-Speed Bottom Intake Fans</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>ASUS ROG STRIX B550-I Gaming (WIFI)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>Custom Cooler Master SFF 850W 80+ Gold Rated</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>WiFi 6 AX + Bluetooth 4.0</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>Intel&reg; I225-V 2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>18 Liters (Volume)</strong></p>\r\n\r\n<p><strong>232mm x 647mm x 620mm (Width, Height, Depth)</strong></p>\r\n', 'p1-untra', 245000, 'p1-untra.png', '0000-00-00', 0),
(46, 4, 'X-Pro (Ryzen)', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>AMD Ryzen 9 5900X Desktop Processor 12 Cores 24 Threads </strong></p>\r\n\r\n<p><strong>3.7 GHz up to 4.8 GHz</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>Nvidia RTX A4000 with 16GB of GDDR6 Memory (ECC) 6144 CUDA Cores</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>64GB DDR4&nbsp; 3600MHz (32x2)</strong></p>\r\n\r\n<p><strong>VULKAN Z RAM Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>2TB NVMe PCIe Gen4 M.2 (Up-to 6TB Gen4)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooling</strong></p>\r\n\r\n<p><strong>360mm AIO Liquid Cooler</strong></p>\r\n\r\n<p><strong>6 x 120mm ARGB Case Fans 1800RPM PWM (TOTAL)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>AORUS B550 ELITE AX V2 Motherboard</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>750W 80+ Gold Rated with Active PFC</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>Dual Band AX WiFi + Bluetooth</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Miscellaneous Hardware</strong></p>\r\n\r\n<p><strong>Sleeved Cables</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>93 Liters (Volume)</strong></p>\r\n\r\n<p><strong>605*327*554mm (Width, Height, Depth)</strong></p>\r\n', 'x-pro-ryzen', 175500, 'x-pro-ryzen.png', '0000-00-00', 0),
(47, 4, 'X-Pro v1 (intel)', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>Intel&reg; Core&trade; i7-12700F Processor Total Cores 12 ; Threads 20 ;</strong></p>\r\n\r\n<p><strong>Max Turbo Frequency 4.90 GHz</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>Nvidia RTX 3060 Ti 8GB GDDR6 (iGame Vulcan OC with OLED Stats. Screen)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>64GB DDR4&nbsp; 3600MHz (32x2)</strong></p>\r\n\r\n<p><strong>VULKAN Z RAM Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>2TB NVMe PCIe Gen4 M.2 (Up-to 6TB Gen4)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooling</strong></p>\r\n\r\n<p><strong>Deepcool LS720 AIO: 360mm AIO Liquid Cooler</strong></p>\r\n\r\n<p><strong>6 x 120mm ARGB Case Fans 1800RPM PWM (TOTAL)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>MSI PRO B660M-A WIFI DDR4</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>750W 80+ Gold Rated with Active PFC</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>Dual Band AX WiFi + Bluetooth</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Miscellaneous Hardware</strong></p>\r\n\r\n<p><strong>Custom Sleeved Cables</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>93 Liters (Volume)</strong></p>\r\n\r\n<p><strong>605*327*554mm (Width, Height, Depth)</strong></p>\r\n', 'x-pro-v1-intel', 181000, 'x-pro-v1-intel.png', '0000-00-00', 0),
(48, 4, 'X-Pro v2 (Ryzen)', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>AMD Ryzen&trade; 9 7900X 12-Core, 24-Thread Unlocked Desktop Processor</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>Gigabyte RTX 3080 Ti Eagle OC 12GB Graphics Card</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>64GB DDR5&nbsp; 5200MHz (32x2)</strong></p>\r\n\r\n<p><strong>KINGSTON FURY BEAST RAM KIT</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>2TB NVMe PCIe Gen4 M.2 </strong></p>\r\n\r\n<p><strong>Kingston NV2</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooling</strong></p>\r\n\r\n<p><strong>Deepcool LS720 AIO CPU Liquid Cooler: 360mm AIO Liquid Cooler</strong></p>\r\n\r\n<p><strong>6 x 120mm ARGB Case Fans 1800RPM PWM (TOTAL)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>MSI B650M Pro WiFi DDR5 Motherboard</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>750W 80+ Gold Rated with Active PFC</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>Dual Band AX WiFi + Bluetooth</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Miscellaneous Hardware</strong></p>\r\n\r\n<p><strong>Custom Sleeved Cables</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>93 Liters (Volume)</strong></p>\r\n\r\n<p><strong>605*327*554mm (Width, Height, Depth)</strong></p>\r\n', 'x-pro-v2-ryzen', 267000, 'x-pro-v2-ryzen.png', '0000-00-00', 0),
(50, 4, 'X-Pro ultra (Intel)', '<p><strong>Processor (CPU)</strong></p>\r\n\r\n<p><strong>Intel&reg; Core&trade; i9-13900K Processor (36M Cache, up to 5.80 GHz)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Graphics Card (GPU)</strong></p>\r\n\r\n<p><strong>Nvidia GeForce RTX 4090 24GB Graphics Card</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>System Memory (RAM)</strong></p>\r\n\r\n<p><strong>128GB DDR5&nbsp; 5200MHz (32x4)</strong></p>\r\n\r\n<p><strong>Kingston Fury Beast Ram Kit</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Storage (SSD)</strong></p>\r\n\r\n<p><strong>4TB NVMe PCIe Gen4 M.2 (2x2)</strong></p>\r\n\r\n<p><strong>Kingston NV2</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooling</strong></p>\r\n\r\n<p><strong>Deepcool LS720 AIO CPU Liquid Cooler: 360mm AIO Liquid Cooler</strong></p>\r\n\r\n<p><strong>6 x 120mm ARGB Case Fans 1800RPM PWM (TOTAL)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Motherboard</strong></p>\r\n\r\n<p><strong>ROG Strix Z790-F Gaming WiFi motherboard</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Power Supply (PSU)</strong></p>\r\n\r\n<p><strong>Antec HCG-1000-EXTREME: 1000W 80+ Gold Rated with Active PFC</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wireless Networking</strong></p>\r\n\r\n<p><strong>Dual Band AX WiFi + Bluetooth</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wired Networking</strong></p>\r\n\r\n<p><strong>2.5G LAN (Ethernet)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Miscellaneous Hardware</strong></p>\r\n\r\n<p><strong>Custom Sleeved Cables</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dimensions</strong></p>\r\n\r\n<p><strong>93 Liters (Volume)</strong></p>\r\n\r\n<p><strong>605*327*554mm (Width, Height, Depth)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'x-pro-ultra-intel', 429650, 'x-pro-ultra-intel.png', '0000-00-00', 0),
(51, 2, 'RAM', '<p>ram 8gb</p>\r\n', 'ram', 7500, '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'ADMINLOGIN@KLSVDIT.EDU.IN', '$2y$10$oREoFB7y7ZNWwQuAQqMIkucE6zt6Cw5flJTsuE2unRdmuRZ/fwHSG', 1, 'ramews', 'LOGGED IN', '', '', 'thanos1.jpg', 1, '', 'FKsaRu1eYCpk8z3', '2018-05-01'),
(9, 'tarique.rkl@gmail.com', '$2y$10$limOTqBoSH0qTp4WSvAg7uJZ8sMMhOGlDcK9HnM7XSkUy9qJmLLa6', 0, 'Prajwal ', 'Naik', 'Bhubaneswar Odisha', '+918270948450', 'IMG_8649.jpg', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'akshara@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Akshara', 'Naik', 'gandinagar haliyal\r\n', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(13, 'zammer@gmail.com', '$2y$10$baPj8c9zmLy72HazBuXasuLwm4sCthFaohp1TggmpXvRl6y7DpJzO', 0, 'Zammer', 'Khan', 'photoli haliyal', '4567891235', '', 1, 'R13mCyWqle92', '', '2023-01-05'),
(14, 'sachin@gmail.com', '$2y$10$OynnM4uidmpkmdGPiMGiROlWeQF6nCKaFPb/qIBpoOINwK/303SWS', 0, 'sachin', 'desai', 'plot no 134\r\nvanashree nagar ', '789357159', '', 1, 'LEKXa6mYR18j', '', '2023-01-11'),
(17, 'deepti@gmail.com', '$2y$10$JIRBky.p3GTrXNXe928EzO4oERNzr5NvmZyz.cvnoHdsy0V33Jjum', 0, 'Deepti', 'Naik', '', '', '', 1, '9bzmKkDoq3xn', '', '2023-01-11'),
(18, 'naveen@gmail.com', '$2y$10$drakwom5fRnDLMxsCE8YX.ua/nkZQnyKP8l1CvJUJb2g75uKMssn2', 0, 'naveen', 'bj', '', '', '', 0, '95hdbMk7EWzj', '', '2023-01-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
