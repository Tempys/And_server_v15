/*ROLE*/
INSERT INTO andr_spring.role (id, role) VALUES (1,'ROLE_USER');
INSERT INTO andr_spring.role (id, role) VALUES (2,'ADMIN_USER');

/*USER*/
INSERT INTO andr_spring.reg_f (id, name, surname, login, password,role) VALUES (1, 'Mikhail', 'Dubovskiy', 'tempys', '181987',1,"mikhail@gmail.com","male",null);



/*IMAGE* /
INSERT INTO andr_spring.image_save (id, name, image_path, date, login) VALUES (6, 'temp.jpg', '/image/d/', null, 'd');
INSERT INTO andr_spring.image_save (id, name, image_path, date, login) VALUES (7, '2.jpg', '/image/d/', null, 'd');
INSERT INTO andr_spring.image_save (id, name, image_path, date, login) VALUES (8, '4.jpg', '/image/d/', null, 'd');
INSERT INTO andr_spring.image_save (id, name, image_path, date, login) VALUES (9, '5.jpg', '/image/d/', null, 'd');
INSERT INTO andr_spring.image_save (id, name, image_path, date, login) VALUES (10, '6.jpg', '/image/d/', null, 'd');




