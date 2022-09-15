CREATE TABLE contact_form(
	id_contactForm INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone INT(12) NOT NULL,
    message TEXT NOT NULL,
    seen BOOLEAN NOT NULL,
    date TIMESTAMP,
    PRIMARY KEY (id_contactForm)
)

CREATE TABLE products(
	id_product INT(11) NOT NULL AUTO_INCREMENT,
    productName VARCHAR(255) NOT NULL,
    leyend VARCHAR(255) NOT NULL,
    mainDescripton TEXT NOT NULL,
    PRIMARY KEY (id_product)
)

CREATE TABLE images(
	id_image INT(11) NOT NULL AUTO_INCREMENT,
    url VARCHAR(550) NOT NULL,
    id_product INT(11),
    PRIMARY KEY (id_image),
    FOREIGN KEY (id_product) REFERENCES products(id_product)
)