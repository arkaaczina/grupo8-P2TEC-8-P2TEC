CREATE DATABASE p2tec;

USE p2tec;

CREATE TABLE categories (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(30) DEFAULT NULL,
  createdAt datetime DEFAULT current_timestamp(),
  updatedAt datetime DEFAULT NULL ON UPDATE current_timestamp(),
  deletedAt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO categories VALUES (1,'Componentes','2020-07-15 11:34:38',NULL,NULL),(2,'Notebook','2020-07-15 11:34:38',NULL,NULL),(3,'Monitores','2020-07-15 11:34:38',NULL,NULL),(4,'Perifericos','2020-07-15 11:34:38',NULL,NULL),(5,'PC Streaming','2020-07-15 11:34:38',NULL,NULL),(6,'PC Home Office','2020-07-15 11:34:38',NULL,NULL),(7,'PC diseno','2020-07-15 11:34:38',NULL,NULL);


CREATE TABLE brands (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(30) DEFAULT NULL,
  createdAt datetime DEFAULT current_timestamp(),
  updatedAt datetime DEFAULT NULL ON UPDATE current_timestamp(),
  deletedAt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO brands VALUES (1,'Aorus','2020-07-15 11:34:38',NULL,NULL),(2,'Asus','2020-07-15 11:34:38',NULL,NULL),(3,'Adata','2020-07-15 11:34:38',NULL,NULL),(4,'Seagate','2020-07-15 11:34:38',NULL,NULL),(5,'AMD','2020-07-15 11:34:38',NULL,NULL),(6,'Ballistix','2020-07-15 11:34:38',NULL,NULL),(7,'HyperX','2020-09-04 19:01:38',NULL,NULL),(8,'Samsung','2020-09-04 19:02:38',NULL,NULL),(9,'AlienWare','2020-09-04 19:17:38',NULL,NULL),(10,'Corsair','2020-09-04 19:17:38',NULL,NULL),(11,'Logitech','2020-09-04 19:18:38',NULL,NULL),(12,'AOC','2020-09-04 19:18:38',NULL,NULL),(13,'Kingston','2020-09-04 19:18:38',NULL,NULL),(14,'CoolerMaster','2020-09-04 19:22:38',NULL,NULL),(15,'Intel','2020-09-04 19:22:38',NULL,NULL);

CREATE TABLE products (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(100) DEFAULT NULL,
  price int(11) DEFAULT NULL,
  categoryId int(10) unsigned DEFAULT NULL,
  brandId int(10) unsigned DEFAULT NULL,
  image varchar(30) DEFAULT NULL,
  descripcion varchar(100) DEFAULT NULL,
  createdAt datetime DEFAULT current_timestamp(),
  updatedAt datetime DEFAULT NULL ON UPDATE current_timestamp(),
  deletedAt datetime DEFAULT NULL,
  PRIMARY KEY (id),
  KEY categoryId (categoryId),
  KEY brandId (brandId),
  CONSTRAINT products_ibfk_1 FOREIGN KEY (categoryId) REFERENCES categories (id),
  CONSTRAINT products_ibfk_2 FOREIGN KEY (brandId) REFERENCES brands (id)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;


INSERT INTO products VALUES
(1,'Disco Solido Ssd 480 GB',7471,1,3,'1 (5).jpg','Disco Solido Ssd 480 Gb Kingston A400','2020-07-15 11:34:38','2020-07-25 22:35:12','2020-07-25 22:35:12'),
(2,'WEBCAM LOGITECH C920s HD PRO',24990,4,6,'webcam.jpg','Videoconferencias Full HD 1080p (hasta 1920 x 1080 píxeles)','2020-07-15 11:34:38',NULL,NULL),
(3,'Fuente Cooler Master MWE 500w 80 Plus Bronze',7514,1,1,'1 (26).jpg','Disco Solido Ssd 480 Gb Kingston A400','2020-07-15 11:34:38',NULL,NULL),
(4,'MEMORIA',8274,1,6,'1 (12).jpg','Memoria Ddr4 16Gb 2400Mhz CL17 (KVR24N17D8/16) Kingston','2020-07-15 11:34:38',NULL,NULL),
(5,'Monitor Led AOC 15.6B',7504,3,2,'1 (37).jpg','Monitor Led AOC 15.6 Wide E1670SWU-E USB (incluye imp interno)','2020-07-15 11:34:38',NULL,NULL),
(6,'Monitor Samsung 22',15094,3,2,'1 (38).jpg','Monitor Samsung 22 Full HD S22F350FH - c/Hdmi','2020-07-15 11:34:38',NULL,NULL),
(7,'AURICULARES HYPERX CLOUD STINGER CORE',6939,4,4,'hyperx.jpg','Altavoces: Dinámico, Ø 40mm, con magnetos de neodimio','2020-07-15 11:34:38',NULL,NULL),
(8,'AURICULARES HYPERX CLOUD CHAT PS4',1944,4,4,'aurips4.jpg','HyperX Cloud Chat™ Headset con licencia PS4 están diseñados para una comunicación nítida para chat. ','2020-07-15 11:34:38',NULL,NULL),
(9,'AURICULARES ASUS ROG DELTA CORE',19770,4,4,'rodge.jpg','Marca ASUS Modelo 90YH00Z1-B2UA00 Nombre del modelo ROG Delta Año de fabricación 2018 Peso del producto','2020-07-15 11:34:38',NULL,NULL),
(10,'TECLADO GAMER',15357,4,3,'1 (45).jpg','Teclado Gamer Corsair K70 RGB MK.2 Mechanical Gaming CHERRY® MX Blue','2020-07-15 11:34:38',NULL,NULL),
(11,'Notebook Alienware I7',240000,2,3,'alien.jpg','17r5 Intel Core I7-8750h X6 2.2ghz 16gb 1.1tb 17','2020-07-15 11:34:38',NULL,NULL),
(12,'Monitor Gamer Curvo 34',15094,3,3,'monitorcurvo.jpg','Monitor Ultrawide Ips Gsync Wfhd 144hz 1ms H','2020-07-15 11:34:38',NULL,NULL),
(13,'PC Home Office',40261,6,3,'PC-Oficina-2_800.jpg','Intel Core I3 8100 - H310 - 8GB - 240GB SS','2020-07-15 11:34:38',NULL,NULL),
(14,'PC Home Office',39660,6,3,'PC-Oficina-2_800.jpg','Intel Core I3 9100F - H310 - 8GB - GT 210 - 240GB SS','2020-07-15 11:34:38',NULL,NULL),
(15,'PC Home Office',32343,6,3,'PC-Oficina-2_800.jpg','Intel Pentium G5400 - H310 - 8GB - 240GB SSD','2020-07-15 11:34:38',NULL,NULL),
(16,'ACCESS POINT',6954,4,3,'1 (18).jpg','Sistema Wi-Fi Mesh Tenda Nova MW3 2-pack AC1200','2020-07-15 11:34:38',NULL,NULL),
(17,'PC Streaming',82768,5,3,'PCstremingultima.jpg','Intel I5 9400 - B365 - 8GB - GTX 1650 S - 1TB','2020-07-15 11:34:38',NULL,NULL),
(18,'PC Streaming',108012,5,1,'PCstremingultima.jpg','Intel I5 9400 - B365 - 16GB - GTX 1660 Ti - 240GB SSD - 1TB','2020-07-15 11:34:38',NULL,NULL),
(19,'PC Streaming',110554,5,1,'PCstremingultima.jpg','AMD Ryzen 5 3600 - B450 - 16GB - RX 5600 XT - 240GB SSD - 1T','2020-07-15 11:34:38',NULL,NULL),
(20,'Notebook Hp I5',111096,2,2,'1 (23).jpg','Notebook Hp I5 250 G7 8265U 8GB 1TB 15.6','2020-07-15 11:34:38',NULL,NULL),
(21,'Notebook Hp I7',163224,2,2,'1 (40).jpg','Notebook Hp I7 10510U 8Gb !tb Windows 10 15,6 + GeForece MX 130','2020-07-15 11:34:38',NULL,NULL),
(22,'JOYSTICK MARVO GT64 WIRELESS PS4 PC',6999,4,2,'marvojostick.jpg','GT-64 se recomienda para los entusiastas de los juegos de plataformas','2020-08-22 13:03:00',NULL,NULL),
(23,'MOUSE TRUST KUDOS RGB GXT900',7373,4,4,'trustemouse.jpg','Gaming Designed for gaming yes Game type FPS, MOBA, RTS, RPG','2020-08-22 13:03:00',NULL,NULL),
(24,'MOUSE GAMER RAZER VIPER AMBIDEXTROUS WIRED',9425,4,4,'razermopuse.jpg','Hasta 450 pulgadas por segundo (IPS)/50 G de aceleración','2020-08-22 13:03:00',NULL,NULL),
(25,'MOUSE TRUST HERON RGB GXT 170',4560,4,4,'trustehero.jpg','Ratón para jugar, con LED RGB y sensor óptico avanzado.','2020-08-22 13:04:00',NULL,NULL),
(26,'PC Diseño',82768,7,5,'pcdiseno.jpg','Intel I5 9400 - B365 - 8GB - GTX 1650 S - 1TB','2020-07-15 11:34:38',NULL,NULL),
(27,'PC Diseño',108012,7,6,'pcdiseno.jpg','Intel I5 9400 - B365 - 16GB - GTX 1660 Ti - 240GB SSD - 1TB','2020-07-15 11:34:38',NULL,NULL),
(28,'PC Diseño',110554,7,6,'pcdiseno.jpg','AMD Ryzen 5 3600 - B450 - 16GB - RX 5600 XT - 240GB SSD - 1T','2020-07-15 11:34:38',NULL,NULL);
CREATE TABLE roles (
  rol_id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) DEFAULT NULL,
  PRIMARY KEY (rol_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE users (
  username varchar(30) DEFAULT NULL,
  email varchar(30) DEFAULT NULL,
  password varchar(64) DEFAULT NULL,
  image varchar(30) DEFAULT NULL,
  address varchar(30) DEFAULT NULL,
  floor varchar(30) DEFAULT NULL,
  PostalCode varchar(30) DEFAULT NULL,
  location varchar(30) DEFAULT NULL,
  Province varchar(30) DEFAULT NULL,
  createdAt datetime DEFAULT current_timestamp(),
  updatedAt datetime DEFAULT NULL ON UPDATE current_timestamp(),
  deletedAt datetime DEFAULT NULL,
  rol int(11) NOT NULL DEFAULT 0,
  id int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

INSERT INTO users VALUES ('belen','belen@gmail.com','$2a$10$1w4Xolwa8wn5kTl32G3UiuqzcG2aoyAPdhnYlbeRgIoRNFzXc2sZ.','Grafico.png','','','','','','2020-08-05 22:27:39','2020-08-05 19:28:05',NULL,1,1);
INSERT INTO users VALUES ('mauro','mauro@gmail.com','$2a$10$1w4Xolwa8wn5kTl32G3UiuqzcG2aoyAPdhnYlbeRgIoRNFzXc2sZ.','Grafico.png','','','','','','2020-08-05 22:27:39','2020-08-05 19:28:05',NULL,0,2);

CREATE TABLE comments (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(500) DEFAULT NULL,
  userId int(10) unsigned DEFAULT NULL,
  productId int(10) unsigned DEFAULT NULL,
  createdAt datetime DEFAULT current_timestamp(),
  updatedAt datetime DEFAULT NULL ON UPDATE current_timestamp(),
  deletedAt datetime DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE comments
  ADD KEY userId (userId),
  ADD KEY productId (productId);

INSERT INTO comments VALUES (1,'Me sirvio un monto muchas gracias',2,1,'2020-07-15 11:34:38',NULL,NULL),(2,'Me gusto mucho el diseño',2,1,'2020-07-15 11:34:38',NULL,NULL);



CREATE TABLE items (
  id int(10) UNSIGNED NOT NULL,
  salePrice decimal(10,0) NOT NULL,
  quantity int(11) NOT NULL DEFAULT 1,
  subTotal int(255) NOT NULL,
  state tinyint(4) NOT NULL DEFAULT 1,
  productId int(10) UNSIGNED NOT NULL,
  userId int(10) UNSIGNED NOT NULL,
  cartId int(10) UNSIGNED DEFAULT NULL,
  createdAt datetime DEFAULT current_timestamp(),
  updatedAt datetime DEFAULT NULL ON UPDATE current_timestamp(),
  deletedAt datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE carts (
  id int(10) UNSIGNED NOT NULL,
  orderNumber int(11) NOT NULL,
  total decimal(10,0) NOT NULL,
  userId int(10) UNSIGNED NOT NULL,
  createdAt datetime DEFAULT current_timestamp(),
  updatedAt datetime DEFAULT NULL ON UPDATE current_timestamp(),
  deletedAt datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
ALTER TABLE items
  ADD PRIMARY KEY (id),
  ADD KEY carts_ibfk_1 (userId),
  ADD KEY productId (productId),
  ADD KEY cartId (cartId);
ALTER TABLE carts
  ADD PRIMARY KEY (id),
  ADD KEY userId (userId);
ALTER TABLE items
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
ALTER TABLE carts
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
