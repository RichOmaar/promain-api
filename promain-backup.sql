-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-04-2023 a las 16:28:35
-- Versión del servidor: 5.6.46-log
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ay000543_proweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certifications`
--

CREATE TABLE `certifications` (
  `id_certification` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `certifications`
--

INSERT INTO `certifications` (`id_certification`, `name`) VALUES
(1, 'Ecologo'),
(2, 'GreenSeal'),
(3, 'Kosher'),
(4, 'Recyclable'),
(5, 'OMRI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(550) NOT NULL,
  `logo_url` varchar(550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id_client`, `name`, `description`, `logo_url`) VALUES
(1, 'Hard Rock Hotel', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'assets/img/clients/hardRock.png'),
(2, 'Marriot', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'assets/img/clients/marriot.png'),
(3, 'presidente', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'assets/img/clients/presidente.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact_form`
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
-- Volcado de datos para la tabla `contact_form`
--

INSERT INTO `contact_form` (`id_contactForm`, `name`, `phone`, `email`, `message`, `seen`, `date`) VALUES
(1, 'Juan Omar 1', '5534080960', 'juanomcam@gmail.com', 'Hola mundo', 0, '2022-09-16 21:38:46'),
(2, 'Juan Omar 1', '5534080960', 'juanomcam@gmail.com', 'Hola mundo', 0, '2022-09-16 23:15:32'),
(3, 'OMAR PRUEBA', '5534080960', 'juanomcam@gmail.com', 'Prueba', 0, '2023-03-13 19:31:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id_image` int(11) NOT NULL,
  `url` varchar(550) NOT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id_image`, `url`, `id_product`) VALUES
(1, 'assets/img/products/ps-enviro-care-tough-job.png', 9),
(2, 'assets/img/products/ps-enviro-care-washroom.png', 10),
(3, 'assets/img/products/ps-enviro-care-neutral-disinfectant.png', 11),
(4, 'assets/img/products/ps-enviro-care-liqui-bac.png', 12),
(5, 'assets/img/products/ps-enviro-care-low-foam.png', 13),
(6, 'assets/img/products/ps-enviro-care-glass-cleaner.png', 14),
(7, 'assets/img/products/ps-dfe-sabre.png', 15),
(8, 'assets/img/products/ps-dfe-bloc.png', 16),
(9, 'assets/img/products/ps-enviro-care-carpet.png', 18),
(10, 'assets/img/products/ps-enviro-care-sudsation.png', 19),
(11, 'assets/img/products/ps-enviro-care-cranberry-soap.png', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `industries`
--

CREATE TABLE `industries` (
  `id_industry` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_url` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `industries`
--

INSERT INTO `industries` (`id_industry`, `name`, `name_url`, `description`) VALUES
(1, 'De la transformación', 'de-la-transformacion', NULL),
(2, 'Alimenticia', 'alimenticia', NULL),
(3, 'Petroquímica', 'petroquimica', NULL),
(4, 'Institucional', 'institucional', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `industries_products`
--

CREATE TABLE `industries_products` (
  `id_industryProduct` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_industry` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `industries_products`
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
(29, 'Tratamiento para alfombras y tapetes', 4),
(30, 'Acabados de pisos, ceras y\r\nremovedores de ceras.', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `leyend` varchar(255) NOT NULL,
  `mainDescripton` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_product`, `productName`, `leyend`, `mainDescripton`, `url`, `ordering`, `status`) VALUES
(9, 'Enviro Care® Tough Job', 'Desengrasante', 'Limpiador y desengrasante de uso rudo para suciedades difíciles mediante trapeador, mopa o máquina barredora automática.', 'enviro-care-tough-job', 1, 1),
(10, 'Enviro Care® Washroom', 'Limpiador de baños', 'Limpiador de baños, canceles, lavabos, loseta, mármol. No necesita enjuague.', 'enviro-care-washroom', 2, 1),
(11, 'Enviro Care® Neutral Disinfectant', 'Desinfectante', 'Desinfectante de superficies duras tipo hospital, limpiador y desodorante. Mata el COVID-19 H1N1, el VIH (SIDA), el VRE, el CA-MRSA y más.', 'enviro-care-neutral-disinfectant ', 3, 1),
(12, 'Enviro Care® Liqui Bac', 'Tratamiento de aguas residuales', 'Suspensión de microorganismos aerobios, facultativos y anaerobios no patógenos que producen enzimas que licuan y digieren grasas y aceites de origen animal o vegetal, proteínas, carbohidratos y residuos orgánicos.', 'enviro-care-liqui-bac', 4, 1),
(13, 'Enviro Care® Low Foam', 'Limpiador  multiusos', 'Limpiador multiuso uso de pH neutro y baja espuma. Ideal para remover suciedad de todo tipo de superficies.', 'enviro-care-low-foam', 5, 1),
(14, 'Enviro Care® Glass Cleaner', 'Limpiador de vidrios', '', 'enviro-care-glass-cleaner', 6, 1),
(15, 'DfE Sabre', 'Desengrasante de pisos', 'Limpiador biocatalítico para trabajos pesados que disuelve grasas y aceites.', 'dfe-sabre', 7, 1),
(16, 'DfE B.L.O.C.', 'Control de olores', 'Líquido biológico rápido y efectivo neutralizador de malos olores.', 'dfe-bloc', 8, 1),
(17, 'Enviro Care® Armor', 'Terminado de pisos', '', 'enviro-care-armor', 9, 1),
(18, 'Enviro Care® Carpet Upholstery', 'Limpieza de alfombras', '', 'enviro-care-carpet-upholstery', 10, 1),
(19, 'Enviro Care® Sudsation', 'Jabón para trastes', '', 'enviro-care-sudsation', 11, 1),
(20, 'Enviro Care® Cranberry Soap', 'Jabón para manos', '', 'enviro-care-cranberry-soap', 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_bullets`
--

CREATE TABLE `products_bullets` (
  `id_bullet` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `bulletText` varchar(550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products_bullets`
--

INSERT INTO `products_bullets` (`id_bullet`, `id_product`, `bulletText`) VALUES
(1, 9, 'Desengrasante ecológico.'),
(2, 9, 'Remueve la grasa orgánica vegetal y animal así como derivados del petróleo.'),
(3, 10, 'Potente sarricida.'),
(4, 10, 'Remueve sarro, óxido, moho, maquillaje, aceites corporales, jabón, etc.'),
(5, 11, 'Desinfectante con registro ante la EPA.'),
(6, 11, 'EPA Reg. No 47371-129-527'),
(7, 11, 'EPA Reg. No 47371-131-52'),
(8, 11, 'Limpia, desinfecta y quita el mal olor en un solo paso.'),
(9, 12, 'Suspensión de microorganismos no patógenos que licuan y digieren grasas, carbohidratos y proteínas de origen animal y vegetal.'),
(10, 12, 'Ayuda a reducir los parámetros de dqo así como de grasas y aceites en aguas residuales.'),
(11, 12, 'Evita taponamientos y mal olor.'),
(12, 12, 'Controla indices de toxicidad.'),
(13, 13, 'Altamente eficaz para todas las tareas de limpieza general.'),
(14, 13, 'Especialmente eficaz para limpiar pisos altamente pulidos.'),
(15, 13, 'Desprende la suciedad de cualquier superficie lavable rápida y fácilmente y se seca sin dejar capa residual.'),
(16, 14, 'Deja las ventanas, espejos y otras superficies limpias, brillantes y sin marcas ni depósitos de agua dura.'),
(17, 14, 'Muy eficaz. Recomendado para limpiar cristales, espejos, porcelana, esmalte, acero inoxidable, cromo, formica, plástico y losetas de cerámica y otras superficies brillantes.'),
(18, 15, 'Desengrasante ecológico para pisos.'),
(19, 15, 'Remueve la grasa de origen animal y vegetal así como derivados del petróleo.'),
(20, 15, 'Ideal para uso industrial.'),
(21, 16, 'Rápido y efec8vo líquido neutralizador de malos olores.'),
(22, 16, 'Degrada y elimina las causas del mal olor.'),
(23, 16, 'No con8ene perfumes ni agentes enmascaradores.'),
(24, 18, 'Limpiador de alfombras.'),
(25, 18, 'Limpia aviva y deodoriza alfombras, tapicerías y otras telas que no se destiñen.'),
(26, 18, 'Usa microorganismos no patógenos para digerir las sustancias que causan los malos olores.'),
(27, 19, 'Jabón para trastes.'),
(28, 19, 'Alta espuma.'),
(29, 19, 'No deja capa residual.'),
(30, 20, 'Jabón para manos.'),
(31, 20, 'Evita problemas de sequedad y grietas'),
(32, 20, 'Agradable aroma que refresca naturalmente la piel.'),
(33, 20, 'Libre de fosfatos.'),
(34, 20, 'Fragancia frutal.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_certification`
--

CREATE TABLE `product_certification` (
  `id_product` int(11) DEFAULT NULL,
  `id_certification` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product_certification`
--

INSERT INTO `product_certification` (`id_product`, `id_certification`) VALUES
(9, 2),
(9, 3),
(10, 2),
(10, 3),
(12, 2),
(12, 1),
(12, 3),
(13, 2),
(13, 3),
(14, 2),
(14, 3),
(15, 2),
(15, 1),
(15, 3),
(16, 2),
(16, 1),
(16, 3),
(17, 2),
(17, 3),
(18, 2),
(18, 3),
(20, 2),
(20, 3),
(20, 5),
(19, 3),
(19, 2),
(19, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subindustries`
--

CREATE TABLE `subindustries` (
  `id_subindustry` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_industry` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subindustries`
--

INSERT INTO `subindustries` (`id_subindustry`, `name`, `image`, `id_industry`) VALUES
(1, 'Metalmecánica', 'assets/img/industries/metal-mecanica.jpg', 1),
(2, 'Automotriz', 'assets/img/industries/automotriz.jpg', 1),
(3, 'Plástico - soplado', 'assets/img/industries/soplado.jpg', 1),
(4, 'Inyección', 'assets/img/industries/inyeccion.png', 1),
(5, 'Maquiladoras', 'assets/img/industries/maquiladora.jpg', 1),
(6, 'Cárnica', 'assets/img/industries/carnica.jpg', 2),
(7, 'Láctea', 'assets/img/industries/lactea-2.jpg', 2),
(8, 'Bebidas', 'assets/img/industries/bebidas.jpg', 2),
(9, 'Panificación', 'assets/img/industries/panificadora.jpg', 2),
(10, 'Frutas y verduras', 'assets/img/industries/frutas-verduras.jpg', 2),
(11, 'Cervecera', 'assets/img/industries/cervecera.jpg', 2),
(12, 'Alimentos para mascotas', 'assets/img/industries/comida-mascotas.jpg', 2),
(13, 'Refinerías', 'assets/img/industries/refineria.jpg', 3),
(14, 'Pozos en tierra', 'assets/img/industries/pozo-tierra-2.jpg', 3),
(15, 'Plataformas offshore ', 'assets/img/industries/off-shore.jpg', 3),
(16, 'Tanques de almacenamiento', 'assets/img/industries/tanque-almacenamiento.jpg', 3),
(17, 'Separadores', 'assets/img/industries/separadores.png', 3),
(18, 'Hoteles', 'assets/img/industries/hotel-3.jpg', 4),
(19, 'Restaurantes', 'assets/img/industries/restaurante-2.jpg', 4),
(20, 'Hospitales', 'assets/img/industries/hospital-2.jpg', 4),
(21, 'Clínicas Dentales', 'assets/img/industries/clinica-dental-2.jpg', 4),
(22, 'Clínicas Veterinarias', 'assets/img/industries/clinica-veterinaria-3.jpg', 4),
(23, 'Escuelas', 'assets/img/industries/escuela-2.jpg', 4),
(24, 'Oficinas', 'assets/img/industries/oficinas.png', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id_certification`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Indices de la tabla `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id_contactForm`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_product` (`id_product`);

--
-- Indices de la tabla `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id_industry`);

--
-- Indices de la tabla `industries_products`
--
ALTER TABLE `industries_products`
  ADD PRIMARY KEY (`id_industryProduct`),
  ADD KEY `id_industry` (`id_industry`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indices de la tabla `products_bullets`
--
ALTER TABLE `products_bullets`
  ADD PRIMARY KEY (`id_bullet`),
  ADD KEY `id_product` (`id_product`);

--
-- Indices de la tabla `product_certification`
--
ALTER TABLE `product_certification`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_certification` (`id_certification`);

--
-- Indices de la tabla `subindustries`
--
ALTER TABLE `subindustries`
  ADD PRIMARY KEY (`id_subindustry`),
  ADD KEY `id_industry` (`id_industry`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id_certification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id_contactForm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `industries`
--
ALTER TABLE `industries`
  MODIFY `id_industry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `industries_products`
--
ALTER TABLE `industries_products`
  MODIFY `id_industryProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `products_bullets`
--
ALTER TABLE `products_bullets`
  MODIFY `id_bullet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `subindustries`
--
ALTER TABLE `subindustries`
  MODIFY `id_subindustry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`);

--
-- Filtros para la tabla `industries_products`
--
ALTER TABLE `industries_products`
  ADD CONSTRAINT `industries_products_ibfk_1` FOREIGN KEY (`id_industry`) REFERENCES `industries` (`id_industry`);

--
-- Filtros para la tabla `products_bullets`
--
ALTER TABLE `products_bullets`
  ADD CONSTRAINT `products_bullets_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`);

--
-- Filtros para la tabla `product_certification`
--
ALTER TABLE `product_certification`
  ADD CONSTRAINT `product_certification_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `product_certification_ibfk_2` FOREIGN KEY (`id_certification`) REFERENCES `certifications` (`id_certification`);

--
-- Filtros para la tabla `subindustries`
--
ALTER TABLE `subindustries`
  ADD CONSTRAINT `subindustries_ibfk_1` FOREIGN KEY (`id_industry`) REFERENCES `industries` (`id_industry`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
