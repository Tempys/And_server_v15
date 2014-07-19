/*ROLE*/
INSERT INTO andr_spring.role (id, role) VALUES (1,'ROLE_USER');
INSERT INTO andr_spring.role (id, role) VALUES (2,'ADMIN_USER');

/*USER*/
INSERT INTO andr_spring.reg_f (id, name, surname, login, password,role) VALUES (1, 'd', 'd', 'd', 'd',1);
INSERT INTO andr_spring.reg_f (id, name, surname, login, password,role) VALUES (3, 's', 's', 's', 's',1);
INSERT INTO andr_spring.reg_f (id, name, surname, login, password,role) VALUES (4, 'f', 'd', 'g', 'f',1);
INSERT INTO andr_spring.reg_f (id, name, surname, login, password,role) VALUES (5, 'f', 'd', 'h', 'f',1);


/*IMAGE*/
INSERT INTO andr_spring.image_save (id, name, image_path, date, login) VALUES (6, 'temp.jpg', '/image/d/', null, 'd');
INSERT INTO andr_spring.image_save (id, name, image_path, date, login) VALUES (7, '2.jpg', '/image/d/', null, 'd');
INSERT INTO andr_spring.image_save (id, name, image_path, date, login) VALUES (8, '4.jpg', '/image/d/', null, 'd');
INSERT INTO andr_spring.image_save (id, name, image_path, date, login) VALUES (9, '5.jpg', '/image/d/', null, 'd');
INSERT INTO andr_spring.image_save (id, name, image_path, date, login) VALUES (10, '6.jpg', '/image/d/', null, 'd');




