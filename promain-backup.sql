-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 07, 2023 at 07:08 PM
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
(4, 'assets/img/products/ps-enviro-care-low.png', 5),
(5, 'assets/img/products/ps-dfe-sabre.png', 6),
(6, 'assets/img/products/ps-dfe-bloc.png', 7),
(7, 'assets/img/products/ps-enviro-care-washroom-cleaner.png', 8);

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id_industry` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_url` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id_industry`, `name`, `name_url`, `description`) VALUES
(1, 'De la transformación', 'de-la-transformacion', NULL),
(2, 'Alimenticia', 'alimenticia', NULL),
(3, 'Petroquímica', 'petroquimica', NULL),
(4, 'Institucional', 'institucional', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `industries_products`
--

CREATE TABLE `industries_products` (
  `id_industryProduct` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_industry` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `industries_products`
--

INSERT INTO `industries_products` (`id_industryProduct`, `name`, `id_industry`) VALUES
(1, 'Desengrasantes', 1),
(2, 'Desincrustantes', 1),
(3, 'Limpiadores dialécticos', 1),
(4, 'Emulsiones', 1),
(5, 'Disolventes', 1),
(6, 'Tratamiento de aguas residuales', 1),
(7, 'Tratamiento de torres de enfriamiento\r\n', 1),
(8, 'Tratamiento de chillers', 1),
(9, 'Limpiadores para equipos de proceso\r\n(Tanques, marmitas, llenadoras, tuberías y transportadores, hornos, freidoras, cámaras de ahumado, mezcladores, amasadoras, cuartos de refrigeración, congeladores)', 2),
(10, 'Desincrustantes para equipo y tuberías', 2),
(11, 'Desinfectantes', 2),
(12, 'Tratamiento de aguas residuales', 2),
(13, 'Tratamiento de torres de enfriamiento', 2),
(14, 'Tratamiento de chillers', 2),
(15, 'Desengrasantes ecológicos\r\n', 2),
(16, 'Desengrasantes', 3),
(17, 'Biorremediación del agua', 3),
(18, 'Tratamiento de aguas residuales', 3),
(19, 'Buques tanques', 3),
(20, 'Limpieza de barcos', 3),
(21, 'Desengrasantes', 4),
(22, 'Desincrustantes', 4),
(23, 'Desinfectantes', 4),
(24, 'Tratamiento de pisos', 4),
(25, 'Control de mal olor', 4),
(26, 'Tratamiento de aguas residuales: trampas de grasa, cárcamos, PTRA, drenajes', 4),
(27, 'Aromatización de espacios grandes\r\n', 4),
(28, 'Sistema de goteo', 4),
(29, 'Tratamiento para alfombras y tapetes', 4);

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
(5, 'Enviro Care Low Foam All Purpose Cleaner', '', 'Limpiador multiuso uso de pH neutro y baja espuma. Ideal para remover suciedad de todo tipo de superficies.', 'enviro-care-low-foam-all-purpose-cleaner'),
(6, 'DfE Sabre', '', 'Limpiador biocatalítico para trabajos pesados que disuelve grasas y aceites.', 'dfe-sabre'),
(7, 'DfE B.L.O.C.', ' ', 'Líquido biológico rápido y efectivo neutralizador de malos olores.', 'dfe-bloc'),
(8, 'Enviro Care Washroom Cleaner', '', 'Limpiador de baños, canceles, lavabos, loseta, mármol. No necesita enjuague.', 'enviro-care-washroom-cleaner');

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
(6, 4, 'Remueve malos olores'),
(7, 6, 'Desengrasante enzimático de potencia industrial'),
(8, 6, 'Disuelve las grasas y aceites'),
(9, 6, 'Cumple con la norma ASTM D4488 en cuanto a resistencia de resbalones'),
(10, 7, 'Degrada y elimina la causa del mal olor'),
(11, 7, 'A través de actividad vio-enzemática digiere suciedad orgánica'),
(12, 7, 'Biodegradable'),
(13, 8, 'No tóxico'),
(14, 8, 'Biodegradable');

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
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 2),
(8, 1),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subindustries`
--

CREATE TABLE `subindustries` (
  `id_subindustry` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_industry` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subindustries`
--

INSERT INTO `subindustries` (`id_subindustry`, `name`, `image`, `id_industry`) VALUES
(1, 'Metalmecánica', 'assets/img/industries/hotel.png', 1),
(2, 'Automotriz', 'assets/img/industries/hotel.png', 1),
(3, 'Plástico - soplado', 'assets/img/industries/hotel.png', 1),
(4, 'Inyección', 'assets/img/industries/hotel.png', 1),
(5, 'Maquiladoras', 'assets/img/industries/hotel.png', 1),
(6, 'Cárnica', 'assets/img/industries/hotel.png', 2),
(7, 'Láctea', 'assets/img/industries/hotel.png', 2),
(8, 'Bebidas', 'assets/img/industries/hotel.png', 2),
(9, 'Panificación', 'assets/img/industries/hotel.png', 2),
(10, 'Frutas y verduras', 'assets/img/industries/hotel.png', 2),
(11, 'Cervecera', 'assets/img/industries/hotel.png', 2),
(12, 'Alimentos para mascotas', 'assets/img/industries/hotel.png', 2),
(13, 'Refinerías', 'assets/img/industries/hotel.png', 3),
(14, 'Pozos en tierra', 'assets/img/industries/hotel.png', 3),
(15, 'Plataformas offshore ', 'assets/img/industries/hotel.png', 3),
(16, 'Tanques de almacenamiento', 'assets/img/industries/hotel.png', 3),
(17, 'Separadores', 'assets/img/industries/hotel.png', 3),
(18, 'Hoteles', 'assets/img/industries/hotel.png', 4),
(19, 'Restaurantes', 'assets/img/industries/hotel.png', 4),
(20, 'Hospitales', 'assets/img/industries/hotel.png', 4),
(21, 'Clínicas Dentales', 'assets/img/industries/hotel.png', 4),
(22, 'Clínicas Veterinarias', 'assets/img/industries/hotel.png', 4),
(23, 'Escuelas', 'assets/img/industries/hotel.png', 4),
(24, 'Oficinas', 'assets/img/industries/hotel.png', 4);

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
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id_industry`);

--
-- Indexes for table `industries_products`
--
ALTER TABLE `industries_products`
  ADD PRIMARY KEY (`id_industryProduct`),
  ADD KEY `id_industry` (`id_industry`);

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
-- Indexes for table `subindustries`
--
ALTER TABLE `subindustries`
  ADD PRIMARY KEY (`id_subindustry`),
  ADD KEY `id_industry` (`id_industry`);

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
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id_industry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `industries_products`
--
ALTER TABLE `industries_products`
  MODIFY `id_industryProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_bullets`
--
ALTER TABLE `products_bullets`
  MODIFY `id_bullet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subindustries`
--
ALTER TABLE `subindustries`
  MODIFY `id_subindustry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`);

--
-- Constraints for table `industries_products`
--
ALTER TABLE `industries_products`
  ADD CONSTRAINT `industries_products_ibfk_1` FOREIGN KEY (`id_industry`) REFERENCES `industries` (`id_industry`);

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

--
-- Constraints for table `subindustries`
--
ALTER TABLE `subindustries`
  ADD CONSTRAINT `subindustries_ibfk_1` FOREIGN KEY (`id_industry`) REFERENCES `industries` (`id_industry`);
