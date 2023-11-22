-- Inserção de valores

INSERT INTO clients (Fname, Mname, Lname, CPF, Address,Ispj)
VALUES
    ('João', 'Silva', 'Santos', '12345678901', 'Rua A, 123',Default),
    ('Maria', 'Ferreira', 'Sousa', '98765432101', 'Avenida B, 456',True),
    ('Pedro', 'Oliveira', 'Silveira', '45678912301', 'Travessa C, 789',Default),
    ('Ana', 'Rodrigues', 'Pereira', '78901234501', 'Rua D, 987',Default),
    ('Luiz', 'Santos', 'Silva', '23456789012', 'Avenida E, 654',Default),
    ('Carla', 'Ferreira', 'Oliveira', '89012345612', 'Rua F, 321',Default),
    ('Mariana', 'Oliveira', 'Sousa', '34567890123', 'Avenida G, 987',Default),
    ('Rafael', 'Santos', 'Pereira', '90123456723', 'Travessa H, 654',True),
    ('Gustavo', 'Pereira', 'Silveira', '45678901234', 'Rua I, 321',Default),
    ('Juliana', 'Silveira', 'Rodrigues', '56789012345', 'Avenida J, 987',Default);


INSERT INTO product (Pname, For_kids, Category, Price, Avaliation)
VALUES
    ('Smartphone', FALSE, 'Electronic', 599.99, 4.5),
    ('Teddy Bear', TRUE, 'Toy', 19.99, 4.8),
    ('T-Shirt', TRUE, 'Clothes', 29.99, 4.2),
    ('Chocolate Bar', TRUE, 'Food', 1.99, 4.9),
    ('Sofa', FALSE, 'Furniture', 499.99, 4.0),
    ('Laptop', FALSE, 'Electronic', 999.99, 4.7),
    ('Action Figure', TRUE, 'Toy', 39.99, 4.6),
    ('Jeans', TRUE, 'Clothes', 39.99, 4.4),
    ('Cereal', TRUE, 'Food', 2.99, 4.5),
    ('Coffee Table', FALSE, 'Furniture', 199.99, 4.3);

INSERT INTO orders (idOrderClient, idOrderProduct, OrderStatus, OrderDescription, sendValue, total_price)
VALUES
    (1, 1, 'confirmado', 'Pedido 1', 15, 599.99),
    (2, 2, DEFAULT, 'Pedido 2', 1.50, 19.99),
    (3, 3, 'confirmado', 'Pedido 3', 0.70, 29.99),
    (4, 4, 'confirmado', 'Pedido 4', 0.50, 1.99),
    (5, 5, 'confirmado', 'Pedido 5', DEFAULT, 499.99),
    (6, 6, DEFAULT, 'Pedido 6', 15, 999.99),
    (7, 7, DEFAULT, 'Pedido 7', DEFAULT, 39.99),
    (8, 8, 'confirmado', 'Pedido 8', DEFAULT, 39.99),
    (9, 9, 'confirmado', 'Pedido 9', 0.60, 2.99),
    (10, 10, 'confirmado', 'Pedido 10', 10, 199.99),
    (4, 9, 'confirmado', 'Pedido 11', 15, 599.99),
    (6, 4, DEFAULT, 'Pedido 12', 1.50, 19.99),
    (2, 3, 'confirmado', 'Pedido 13', 0.70, 29.99),
    (8, 2, DEFAULT, 'Pedido 14', 0.50, 1.99),
    (2, 3, 'confirmado', 'Pedido 15', DEFAULT, 499.99);    
    
INSERT INTO seller (SocialName, CNPJ, CPF, Location, FantasyName)
VALUES
    ('Loja Eletrônica Ltda', '12.345.678/2-34', '123.456.789-09', 'Rua X, 123', 'Eletrônicos Shop'),
    ('Brinquedos & Cia', '98.765.432/8-65', '987.654.321-09', 'Avenida Y, 456', 'Brinque Mais'),
    ('Fashion Store', '11.122.334/4-56', '111.222.334-45', 'Travessa Z, 789', 'Moda Jovem'),
    ('Supermarket XYZ', '44.455.566/6-78', '444.556.667-89', 'Rua W, 987', 'Supermercado ABC'),
    ('Furniture World', '88.877.766/6-66', '888.777.666-66', 'Avenida V, 654', 'Móveis Casa Nova'),
    ('Tech Gadgets Inc.', '55.544.433/3-33', '555.444.333-33', 'Rua U, 321', 'Gadgets Tech'),
    ('Kids Paradise', '33.322.211/1-11', '333.222.111-11', 'Avenida T, 987', 'Paraíso Infantil'),
    ('Fashion Boutique', '22.211.100/0-00', '222.111.000-00', 'Travessa S, 654', 'Boutique Elegance'),
    ('Food Delights', '66.677.788/8-88', '666.777.888-88', 'Rua R, 321', 'Delícias Gourmet'),
    ('Home Decor Store', '99.988.877/7-77', '999.888.877-77', 'Avenida Q, 987', 'Decoração Casa');



INSERT INTO supplier (SocialName, CNPJ, Contact)
VALUES
    ('Fornecedor Eletrônico Ltda', '12.345.678/9-34', '11987654321'),
    ('Fornecedora de Brinquedos', '98.765.432/1-65', '11987654322'),
    ('Fashion Fornecimento', '11.122.334/4-56', '11987654323'),
    ('Super Fornecedores', '44.455.566/6-78', '11987654324'),
    ('Móveis Supplier', '88.877.766/6-66', '11987654325'),
    ('Tech Components', '55.544.433/3-33', '11987654326'),
    ('Kids Supply', '33.322.211/1-11', '11987654327'),
    ('Fashion Materials', '22.211.100/0-00', '11987654328'),
    ('Food Suppliers', '66.677.788/8-88', '11987654329'),
    ('Home Decor Distributors', '99.988.877/7-77', '11987654330');


INSERT INTO productStorage (Storages, Quantity)
VALUES
    ('Estoque A', 100),
    ('Estoque B', 50),
    ('Estoque C', 75),
    ('Estoque D', 120),
    ('Estoque E', 200),
    ('Estoque F', 20),
    ('Estoque G', 80);

INSERT INTO payments ( idOrder, PaymentType )
VALUES
	(1, 'Cartão_Crédito'),
    (2, 'Boleto'),
    (3, 'Boleto'),
    (4, 'Pix'),
    (5, 'Cartão_Débito'),
    (6, 'Cartão_Crédito'),
    (7, 'Pix'),
    (8, 'Pix'),
    (9, 'Boleto'),
    (10, 'Cartão_Débito'),
    (11, 'Cartão_Débito'),
    (12, 'Boleto'),
    (13, 'Pix'),
    (14, 'Cartão_Crédito'),
    (15, 'Pix');

INSERT INTO ProductOrder ( idOrder, idProduct, poQuantity, poStatus )
VALUES
	(1, 1, 1, 'disponível'),
    (2, 2, 1, 'disponível'),
    (3, 3, 1, DEFAULT),
    (4, 4, 1, DEFAULT),
    (5, 5, 1, 'disponível'),
    (6, 6, 1, 'disponível'),
    (7, 7, 1, 'disponível'),
    (8, 8, 1, DEFAULT),
    (9, 9, 1, 'disponível'),
    (10, 10, 1, 'disponível'),
    (11, 9, 1, DEFAULT),
    (12, 4, 1, 'sem estoque'),
    (13, 3, 1, DEFAULT),
    (14, 2, 1, DEFAULT),
    (15, 3, 1, 'sem estoque');
    
INSERT INTO ProductSupplier ( idSupplier, idProduct, Quantity )
VALUES
	(1, 1, 4),
    (2, 2, 7),
    (3, 3, 2),
    (4, 4, 1),
    (5, 5, 10),
    (6, 6, 2),
    (7, 7, 1),
    (8, 8, 8),
    (9, 9, 2),
    (10, 10, 4);

INSERT INTO StoragesLocation ( idStorage, idProduct, Location )
VALUES
	(1, 1, 'RJ'),
    (2, 2, 'SP'),
    (3, 3, 'PE'),
    (4, 4, 'MG'),
    (5, 5, 'BA'),
    (6, 6, 'RJ'),
    (7, 7, 'SP'),
    (4, 8, 'PE'),
    (2, 9, 'MG'),
    (6, 10, 'MG');

INSERT INTO ProductSeller ( idPseller, idProduct, ProdQuantity )
VALUES
	(1, 1, 3),
    (2, 2, 4),
    (3, 3, 1),
    (4, 4, 1),
    (5, 5, 6),
    (6, 6, 1),
    (7, 7, 1),
    (8, 8, 6),
    (9, 9, 2),
    (10, 10, 3);
    
INSERT INTO DeliveryStatus ( idOrder, StatusDelivery)
VALUES
	(1, 'Esperando pagamento'),
    (2, 'Preparando entrega'),
    (3, 'Preparando entrega'),
    (4, DEFAULT),
    (5, DEFAULT),
    (6, DEFAULT),
    (7, 'Preparando entrega'),
    (8, DEFAULT),
    (9, DEFAULT),
    (10, 'Esperando pagamento'),
    (11, 'Esperando pagamento'),
    (12, 'cancelado'),
    (13, DEFAULT),
    (14, DEFAULT),
    (15, 'cancelado');
   
   
INSERT INTO supplierSeller ( idSupplier, idSeller )
VALUES 
	(1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
	(10, 10);
   
   
-- REALIZANDO QUERIES
use ecommerce;




-- quais clientes também são pj?

select concat(Fname, ' ', Mname, ' ', Lname) as Cname, CPF, Address 
	from clients 
    where ispj = 1;





-- quantos pedidos cada cliente fez?

select
    CONCAT(Fname, ' ', Mname, ' ', Lname) as Cname,
    COUNT(o.idOrder) as NoOrders,
    ROUND(SUM(o.total_price), 2) as TotalSpend
from
    clients c
inner join
    orders o on c.idClient = o.idOrderClient
group by
    c.idClient, Cname;

   



-- produto do mais barato ao mais caro

select *
	from product
	order by price;




-- quem gastou mais de R$ 500,00 no total da compra?

select concat(Fname, ' ', Mname, ' ', Lname) as Cname, round(sum(total_price), 2) as total_paid
	from clients c 
	inner join orders o 
	on c.idClient = o.idOrderClient
	group by Fname, idClient
	having total_paid >= 500
	order by total_paid;



-- pedidos que estão finalizados

select concat(Fname, ' ', Lname) as Cname, sendValue, OrderStatus
	from orders o 
	inner join clients c
	on o.idOrderClient = c.idClient
    where OrderStatus = 'confirmado';





-- qual é o estoque total de cada estado?

select Location, sum(Quantity)
	from StoragesLocation s
	left join productStorage p
    on s.idStorage = p.idStorage
    group by Location;




-- vendedor e seu fornecedor

select s.SocialName as fornecedor, v.SocialName as vendedor
	from supplier s
    cross join seller v
    where idSupplier = idSeller;




-- qual vendedor teve mais produto vendido

select s.SocialName, SUM(poQuantity)
	from seller s
	inner join ProductSeller p on s.idSeller = p.idPseller
	inner join ProductOrder o on p.idPseller = o.idProduct
	group by s.SocialName;






-- qual método de pagamento foi utilizado em cada pedido

select OrderDescription, PaymentType, OrderStatus 
	from orders o
	inner join payments p
	on o.idOrder = p.idOrder;








-- quantas pessoas realizaram o pagamentos e quantas não

select OrderStatus, count(idOrder) as quantidade
	from orders
	group by OrderStatus;








-- clientes que ainda não realizaram o pagamento

select concat(Fname, ' ', Lname) as clientes, 
	case
		when OrderStatus = 'em processamento'
        then 'esperando/nao pago'
        end as OrderStatus
	from orders 
	inner join clients
	on idOrderClient = idClient
	where OrderStatus = 'em processamento';





-- clientes que já realizaram o pagamento

select concat(Fname, ' ', Lname) as clientes,
	case 
		when OrderStatus = 'confirmado'
        then 'pago'
        end as OrderStatus
	from orders 
	inner join clients
	on idOrderClient = idClient
    where OrderStatus = 'confirmado';

