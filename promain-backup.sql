-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 26, 2022 at 05:30 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `promain`
--

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id_certification` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id_certification`, `name`) VALUES
(1, 'Ecologo'),
(2, 'GreenSeal'),
(3, 'Kosher'),
(4, 'Recyclable');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(550) NOT NULL,
  `logo_url` varchar(550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id_client`, `name`, `description`, `logo_url`) VALUES
(1, 'Hard Rock Hotel', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'assets/img/clients/hardRock.png'),
(2, 'Marriot', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'assets/img/clients/marriot.png'),
(3, 'presidente', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'assets/img/clients/presidente.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id_contactForm` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id_contactForm`, `name`, `phone`, `email`, `message`, `seen`, `date`) VALUES
(1, 'Juan Omar 1', '5534080960', 'juanomcam@gmail.com', 'Hola mundo', 0, '2022-09-16 21:38:46'),
(2, 'Juan Omar 1', '5534080960', 'juanomcam@gmail.com', 'Hola mundo', 0, '2022-09-16 23:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id_image` int(11) NOT NULL,
  `url` varchar(550) NOT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id_image`, `url`, `id_product`) VALUES
(1, 'assets/img/products/ps-enviro-care-liqui.png', 1),
(2, 'assets/img/products/ps-enviro-care.png', 3),
(3, 'assets/img/products/ps-enviro-care-neutral.png', 4),
(4, 'assets/img/products/ps-enviro-care-low.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `leyend` varchar(255) NOT NULL,
  `mainDescripton` text NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `productName`, `leyend`, `mainDescripton`, `url`) VALUES
(1, 'Enviro Care® LIQUIBAC', 'DIGESTOR BIOLÓGICO', 'Suspensión de microorganismos aerobios, facultativos y anaerobios no patógenos que producen enzimas que licuan y digieren grasas y aceites de origen animal o vegetal, proteínas, carbohidratos y residuos orgánicos', 'enviro-care-liquibac'),
(3, 'Enviro Care Tough Job Cleaner', 'USO INDUSTRIAL EXCLUSIVO', 'Limpiador y desengrasante de uso rudo para suciedades difíciles mediante trapeador, mopa o máquina barredora automática. ', 'enviro-care-tough-job-cleaner'),
(4, 'Enviro Care® Neutral Disinfectant', 'USO INDUSTRIAL EXCLUSIVO', 'Desinfectante de superficies duras tipo hospital, limpiador y desodorante. Mata el COVID-19 H1N1, el VIH (SIDA), el VRE, el CA-MRSA y más.', 'enviro-care-neutral-desinfectant'),
(5, 'Enviro Care Low Foam All Purpose Cleaner', 'USO INDUSTRIAL EXCLUSIVO', 'Limpiador multiuso uso de pH neutro y baja espuma. Ideal para remover suciedad de todo tipo de superficies.', 'enviro-care-low-foam-all-purpose-cleaner');

-- --------------------------------------------------------

--
-- Table structure for table `products_bullets`
--

CREATE TABLE `products_bullets` (
  `id_bullet` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `bulletText` varchar(550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_bullets`
--

INSERT INTO `products_bullets` (`id_bullet`, `id_product`, `bulletText`) VALUES
(1, 1, 'Controla índices de explosividad'),
(2, 1, 'Remueve toda la suciedad orgánica acumulada'),
(3, 1, 'Controla el problema de mal olor'),
(4, 3, 'Desinfectante aprobado por la guía de patógenos virales emergentes de la EPA'),
(5, 3, 'Limpia, desinfecta y elimina mal olor en un solo paso'),
(6, 4, 'Remueve malos olores');

-- --------------------------------------------------------

--
-- Table structure for table `product_certification`
--

CREATE TABLE `product_certification` (
  `id_product` int(11) DEFAULT NULL,
  `id_certification` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_certification`
--

INSERT INTO `product_certification` (`id_product`, `id_certification`) VALUES
(1, 3),
(1, 1),
(3, 2),
(3, 1),
(3, 3),
(4, 3),
(4, 1),
(5, 2),
(5, 1),
(5, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id_certification`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id_contactForm`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `products_bullets`
--
ALTER TABLE `products_bullets`
  ADD PRIMARY KEY (`id_bullet`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `product_certification`
--
ALTER TABLE `product_certification`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_certification` (`id_certification`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id_certification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id_contactForm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products_bullets`
--
ALTER TABLE `products_bullets`
  MODIFY `id_bullet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`);

--
-- Constraints for table `products_bullets`
--
ALTER TABLE `products_bullets`
  ADD CONSTRAINT `products_bullets_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`);

--
-- Constraints for table `product_certification`
--
ALTER TABLE `product_certification`
  ADD CONSTRAINT `product_certification_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `product_certification_ibfk_2` FOREIGN KEY (`id_certification`) REFERENCES `certifications` (`id_certification`);
