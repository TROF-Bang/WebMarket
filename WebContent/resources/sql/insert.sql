INSERT INTO product VALUES('P1234', 'iPhone 6s', 800000, '1334X750 Renina HD display, 8-megapixel iSight Camera','Smart Phone', 'Apple', 1000, 'new', 'https://thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/retail/images/83230728105284-6126e577-5207-43f7-bed3-7ec87a5956e9.jpg');
INSERT INTO product VALUES('P1235', 'LG PC gram', 1500000, '3.3-inch,IPS LED display, 5rd Generation Intel Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png');
INSERT INTO product VALUES('P1236', 'Galaxy Tab S', 900000, '3.3-inch, 212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

update product
set p_fileName = "https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/4048925896954-dc6ab0ab-dc4c-47d7-92ae-05e1c74bc6b4.jpg"
where p_id = "p1235";

update product
set p_fileName = "https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/521016655425335-738243bf-69ac-44fa-a20c-0ef998f13d88.jpg"
where p_id = "p1236";

select * from product;