-- criação do meu banco de dados para o cenário de E-commerce (DIO)

CREATE DATABASE ecommerce;
USE ecommerce;
-- DROP DATABASE ecommerce;
SET SQL_SAFE_UPDATES = 0;

-- criação da tabela cliente

CREATE TABLE clients(
	idClient INT AUTO_INCREMENT PRIMARY KEY,
    Fname VARCHAR(20) NOT NULL,
    Mname VARCHAR(20),
    Lname VARCHAR(20),
    CPF CHAR(11) NOT NULL,
    Address VARCHAR(50),
    Ispj BOOL DEFAULT False,
    CONSTRAINT unique_cpf_client unique(CPF)
);

-- criação da tabela produto

CREATE TABLE product(
	idProduct INT AUTO_INCREMENT PRIMARY KEY,
    Pname VARCHAR(20) NOT NULL,
    For_kids BOOL DEFAULT FALSE,
    Category ENUM('Electronic','Toy','Clothes','Food','Furniture') NOT NULL,
    Price FLOAT NOT NULL,
    Avaliation FLOAT DEFAULT 0
);

-- criação da tabela pedido

CREATE TABLE orders(
	idOrder INT AUTO_INCREMENT PRIMARY KEY,
    idOrderClient INT,
    idOrderProduct INT,
    OrderStatus ENUM('cancelado','confirmado', 'em processamento') DEFAULT 'em processamento',
    OrderDescription VARCHAR(255),
    sendValue FLOAT DEFAULT 10,
    total_price FLOAT NOT NULL,
    CONSTRAINT fk_order_product FOREIGN KEY (idOrderProduct) REFERENCES product(idProduct),
    CONSTRAINT fk_order_client FOREIGN KEY (idOrderClient) REFERENCES clients(idClient)
);
ALTER TABLE orders AUTO_INCREMENT=1;

CREATE TABLE ProductOrder(
	idOrder INT,
    idProduct INT,
    poQuantity INT DEFAULT 1,
    poStatus ENUM('disponível', 'sem estoque') DEFAULT 'disponível',
    PRIMARY KEY (idOrder, idProduct),
    CONSTRAINT fk_product_seller FOREIGN KEY (idOrder) REFERENCES orders(idOrder),
    CONSTRAINT fk_details_product FOREIGN KEY (idProduct) REFERENCES product(idProduct)
);

-- criação tabela estoque

CREATE TABLE productStorage(
	idStorage INT AUTO_INCREMENT PRIMARY KEY,
    Storages VARCHAR(20) NOT NULL,
    Quantity INT DEFAULT 0
);

CREATE TABLE StoragesLocation(
	idStorage INT,
    idProduct INT,
    Location VARCHAR(255) NOT NULL,
    PRIMARY KEY (idStorage,idProduct),
    CONSTRAINT fk_storage_location FOREIGN KEY (idStorage) REFERENCES productStorage(idStorage),
    CONSTRAINT fk_storage_products FOREIGN KEY (idProduct) REFERENCES product(idProduct)
);

-- criação tabela fornecedor

CREATE TABLE supplier(
	idSupplier INT AUTO_INCREMENT PRIMARY KEY,
    SocialName VARCHAR(50) NOT NULL,
    CNPJ CHAR(15) NOT NULL,
    Contact VARCHAR(11) NOT NULL,
    CONSTRAINT unique_supplier UNIQUE (CNPJ)
);

CREATE TABLE ProductSupplier(
	idSupplier INT,
    idProduct INT,
    Quantity INT NOT NULL,
    PRIMARY KEY ( idSupplier, idProduct ),
    CONSTRAINT fk_product_supplier FOREIGN KEY (idSupplier) REFERENCES supplier(idSupplier),
    CONSTRAINT fk_supplier_product FOREIGN KEY (idProduct) REFERENCES product(idProduct)
);

-- criação tabela vendedor

CREATE TABLE seller(
	idSeller INT AUTO_INCREMENT PRIMARY KEY,
    SocialName VARCHAR(20) NOT NULL,
    CNPJ CHAR(15) NOT NULL,
    CPF CHAR(14) NOT NULL,
    Location VARCHAR(50) NOT NULL,
    FantasyName VARCHAR(20) NOT NULL,
    CONSTRAINT unique_seller_name UNIQUE (SocialName),
    CONSTRAINT unique_cnpj_seller UNIQUE (CNPJ),
    CONSTRAINT unique_cpf_seller UNIQUE (CPF)
);

CREATE TABLE supplierSeller(
	idSupplier INT,
    idSeller INT,
    PRIMARY KEY ( idSupplier, idSeller ),
    CONSTRAINT fk_supplier_seller FOREIGN KEY (idSupplier) REFERENCES supplier(idSupplier),
    CONSTRAINT fk_seller_supplier FOREIGN KEY (idSeller) REFERENCES seller(idSeller)
);
    
CREATE TABLE ProductSeller(
	idPseller INT,
    idProduct INT,
    ProdQuantity INT NOT NULL,
    PRIMARY KEY (idPseller, idProduct),
    CONSTRAINT fk_seller_product FOREIGN KEY (idPseller) REFERENCES seller(idSeller),
    CONSTRAINT fk_product_product FOREIGN KEY (idProduct) REFERENCES product(idProduct)
);

-- criação da tabela pagamento

CREATE TABLE payments(
	idPayment INT PRIMARY KEY AUTO_INCREMENT,
	idOrder INT,
    PaymentType ENUM('Boleto', 'Cartão_Débito', 'Pix', 'Cartão_Crédito') NOT NULL,
    PRIMARY KEY (idOrder),
    CONSTRAINT fk_payment_order FOREIGN KEY (idOrder) REFERENCES orders(idOrder)
);

CREATE TABLE deliveryStatus(
	idDelivery INT PRIMARY KEY AUTO_INCREMENT,
	idOrder INT,
    StatusDelivery ENUM('Esperando pagamento', 'Preparando entrega', 'cancelado') DEFAULT 'Esperando pagamento',
    TrackingCode VARCHAR(20),
    PRIMARY KEY (idOrder),
    CONSTRAINT fk_deliveryStatus FOREIGN KEY (idOrder) REFERENCES orders(idOrder)
);
UPDATE deliveryStatus SET TrackingCode = CONCAT(idOrder, FLOOR(RAND() * 1000000));

SHOW TABLES;





