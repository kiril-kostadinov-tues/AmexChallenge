CREATE TABLE CardMember (
	id int NOT NULL AUTO_INCREMENT,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	street_address varchar(100),
	city varchar(50),
	post_code varchar(10),
	country varchar(50),
	phone varchar(20),
	loyalty_points int,
	PRIMARY KEY(id)
);

CREATE TABLE CreditCard (
	id int NOT NULL AUTO_INCREMENT,
	expiry_date date NOT NULL,
	cvc varchar(255) NOT NULL,
	credit_limit bigint NOT NULL,
	balance bigint NOT NULL,
	member_id int NOT NULL,
	issuer_id int NOT NULL,
	refused tinyint,
	locked tinyint,
	PRIMARY KEY(id),
	FOREIGN KEY(member_id) REFERENCES CardMember(id),
	FOREIGN KEY(issuer_id) REFERENCES CardIssuer(id)
);

CREATE TABLE Merchant (
	id int NOT NULL AUTO_INCREMENT,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	company_name varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	address varchar(100),
	city varchar(50),
	county varchar(50),
	postal varchar(10),
	country varchar(50),
	phone1 varchar(20),
	phone2 varchar(20),
	web varchar(100),
	discount_rate double(5, 2) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE CardIssuer (
	id int NOT NULL AUTO_INCREMENT,
	name varchar(50) NOT NULL,
	balance bigint NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE Transaction (
	id int NOT NULL AUTO_INCREMENT,
	card_id int NOT NULL,
	merchant_id int NOT NULL,
	date DATETIME NOT NULL,
	previous_balance bigint NOT NULL,
	new_balance bigint NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(card_id) REFERENCES CreditCard(id),
	FOREIGN KEY(merchant_id) REFERENCES Merchant(id)
);
 
