--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY ,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 300),
  broek_id INTEGER,
  shirt_id INTEGER,
  truien_id INTEGER,
  sokken_id INTEGER,
  bundle_id INTEGER,
  schoen_id INTEGER
);


DROP TABLE IF EXISTS broek;
CREATE TABLE broek (
  id INTEGER PRIMARY KEY ,
  code VARCHAR(15),
  stof TEXT,
  gemaakt TEXT,
  merk TEXT,
  maat NUMERIC(12, 30)
);

DROP TABLE IF EXISTS shirt;
CREATE TABLE shirt (
  id INTEGER PRIMARY KEY ,
  code VARCHAR(15),
  stof TEXT,
  merk TEXT, 
  gemaakt TEXT,
  maat NUMERIC(12, 30)
);

DROP TABLE IF EXISTS bundle;
CREATE TABLE bundle (
  id INTEGER PRIMARY KEY ,
  code VARCHAR(15),
  stof TEXT,
  merk TEXT, 
  gemaakt TEXT,
  maat NUMERIC(12, 30)
);

DROP TABLE IF EXISTS truien;
CREATE TABLE truien (
id INTEGER PRIMARY KEY ,
  code VARCHAR (15),
  stof TEXT,
  merk TEXT, 
  gemaakt TEXT,
  maat NUMERIC(12,30)
);

DROP TABLE IF EXISTS sokken;
CREATE TABLE sokken(
  id INTEGER PRIMARY KEY ,
  code VARCHAR (15),
  stof TEXT,
  merk TEXT, 
  gemaakt TEXT,
  maat NUMERIC(12,30)
);

DROP TABLE IF EXISTS schoen;
CREATE TABLE schoen(
  id INTEGER PRIMARY KEY ,
  code VARCHAR (15),
  stof TEXT,
  merk TEXT, 
  gemaakt TEXT,
  maat NUMERIC(12,30)
);





--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into broek (id, code, stof, gemaakt, merk, maat) values (6, '6756478-8','katoenmix', 'China', 'chasin', 16);
insert into broek (id, code, stof, gemaakt, merk, maat) values (7, '6756478-9','katoenmix', 'China', 'chasin', 16);
insert into broek (id, code, stof, gemaakt, merk, maat) values (8, '6756478-4','katoenmix', 'China', 'chasin', 16);
insert into broek (id, code, stof, gemaakt, merk, maat) values (9, '6756478-11,','katoenmix', 'China', 'chasin', 16);
insert into broek (id, code, stof, gemaakt, merk, maat) values (10, '6756478-6','katoenmix', 'China', 'chasin', 16);

insert into shirt (id, code, stof, gemaakt, merk, maat) values (11, '6781538-11,','katoenmix', 'China', 'ellese', 16);
insert into shirt (id, code, stof, gemaakt, merk, maat) values (12, '6781538-2','katoenmix', 'China', 'ellese', 16);
insert into shirt (id, code, stof, gemaakt, merk, maat) values (13, '6781538-3','katoenmix', 'China', 'ellese', 16);
insert into shirt (id, code, stof, gemaakt, merk, maat) values (14, '6781538-4','katoenmix', 'China', 'ellese', 16);
insert into shirt (id, code, stof, gemaakt, merk, maat) values (15, '6781538-5','katoenmix', 'China', 'ellese', 16);

insert into bundle (id, code, stof, gemaakt, merk, maat) values (1, '6756478-8','katoenmix', 'China', 'nike', 16);
insert into bundle (id, code, stof, gemaakt, merk, maat) values (2, '6756478-9','katoenmix', 'China', 'chasin', 16);
insert into bundle (id, code, stof, gemaakt, merk, maat) values (3, '6756478-4','katoenmix', 'China', 'addidas', 16);
insert into bundle (id, code, stof, gemaakt, merk, maat) values (4, '6756478-11,','katoenmix', 'China', 'ellese', 16);
insert into bundle (id, code, stof, gemaakt, merk, maat) values (5, '6756478-6','katoenmix', 'China', 'nike', 16);


insert into truien (id, code, stof, gemaakt, merk, maat) values (16, '6796478-5','katoenmix', 'China', 'HUF', 16);
insert into truien (id, code, stof, gemaakt, merk, maat) values (17, '6796478-6','katoenmix', 'China', 'HUF', 16);
insert into truien (id, code, stof, gemaakt, merk, maat) values (18, '6796478-7','katoenmix', 'China', 'HUF', 16);
insert into truien (id, code, stof, gemaakt, merk, maat) values (19, '6796478-8','katoenmix', 'China', 'HUF', 16);
insert into truien (id, code, stof, gemaakt, merk, maat) values (20, '6796478-9','katoenmix', 'China', 'HUF', 16);

insert into sokken (id, code, stof, gemaakt, merk, maat) values (21, '6785753-11,', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (id, code, stof, gemaakt, merk, maat) values (22, '6785753-2', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (id, code, stof, gemaakt, merk, maat) values (23, '6785753-3', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (id, code, stof, gemaakt, merk, maat) values (24, '6785753-4', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (id, code, stof, gemaakt, merk, maat) values (25, '6785753-5', 'katoenmix', 'China', 'addidas', 16);

insert into schoen (id, code, stof, gemaakt, merk, maat) values (26, '85753-11,', 'leer', 'China', 'addidas', 16);
insert into schoen (id, code, stof, gemaakt, merk, maat) values (27, '85753-2', 'leer', 'China', 'addidas', 16);
insert into schoen (id, code, stof, gemaakt, merk, maat) values (28, '85753-3', 'leer', 'China', 'addidas', 16);
insert into schoen (id, code, stof, gemaakt, merk, maat) values (29, '85753-4', 'leer', 'China', 'addidas', 16);
insert into schoen (id, code, stof, gemaakt, merk, maat) values (30, '85753-5', 'leer', 'China', 'addidas', 16);

insert into products (id, code, name, description, price, shirt_id) values (11, '6781538-11,', 'sport shirt', 'lekker om in te sporten ', 40, 11);
insert into products (id, code, name, description, price, shirt_id) values (12, '6781538-2', 'ondershirt', 'goed voor onder je shirt', 20, 12 );
insert into products (id, code, name, description, price, shirt_id) values (13, '6781538-3', 'normaal shirt' , 'goed voor allen gelegenheden', 50, 13);
insert into products (id, code, name, description, price, shirt_id) values (14, '6781538-4', 'chique shirt', 'voor een avondje weg', 60, 14);
insert into products (id, code, name, description, price, shirt_id) values (15, '6781538-5', 'normaal shirt' , 'goed voor allen gelegenheden', 30, 15 );

insert into products (id, code, name, description, price, broek_id) values (6, '6756478-8', 'sport broek', 'lekker om in te sporten ', 60, 6);
insert into products (id, code, name, description, price, broek_id) values (7, '6756478-9','normale broek' , 'goed voor allen gelegenheden', 40, 7);
insert into products (id, code, name, description, price, broek_id) values (8, '6756478-4', 'strakke broek', 'goed voor wat slankeren mannen', 50, 8);
insert into products (id, code, name, description, price, broek_id) values (9, '6756478-11,', 'wijde broek', 'goed voor iedereen', 70, 9);
insert into products (id,code, name, description, price, broek_id) values (10, '6756478-7','normale broek' , 'goed voor allen gelegenheden', 58, 10);

insert into products (id, code, name, description, price, truien_id) values (16, '6796478-5','normale trui' , 'goed voor allen gelegenheden', 58, 16);
insert into products (id, code, name, description, price, truien_id) values (17, '6796478-6','normale trui' , 'goed voor allen gelegenheden', 40, 17);
insert into products (id, code, name, description, price, truien_id) values (18, '6796478-7','normale trui' , 'goed voor allen gelegenheden', 80, 18);
insert into products (id, code, name, description, price, truien_id) values (19,'6796478-8','normale trui' , 'goed voor allen gelegenheden', 100, 19);
insert into products (id, code, name, description, price, truien_id) values (20, '6796478-9','normale trui' , 'goed voor allen gelegenheden', 50, 20);

insert into products (id, code, name, description, price, sokken_id) values (21, '6785753-1,','normale sokken' , 'goed voor allen gelegenheden', 20, 21);
insert into products (id, code, name, description, price, sokken_id) values (22, '6785753-2','normale sokken' , 'goed voor allen gelegenheden', 10, 22);
insert into products (id, code, name, description, price, sokken_id) values (23, '6785753-3','normale sokken' , 'goed voor allen gelegenheden', 14, 23);
insert into products (id, code, name, description, price, sokken_id) values (24, '6785753-4','normale sokken' , 'goed voor allen gelegenheden', 18, 24);
insert into products (id, code, name, description, price, sokken_id) values (25,'6785753-5','normale sokken' , 'goed voor allen gelegenheden', 12, 25);

insert into products (id,  name, description, price, bundle_id) values (1, 'bundle1' , 'goed voor allen gelegenheden', 160, 1);
insert into products (id,  name, description, price, bundle_id) values (2, 'bundle2' , 'goed voor allen gelegenheden', 120, 2);
insert into products (id,  name, description, price, bundle_id) values (3, 'bundle3' , 'goed voor allen gelegenheden', 180, 3);
insert into products (id,  name, description, price, bundle_id) values (4, 'bundle4' , 'goed voor allen gelegenheden', 240, 4);
insert into products (id,  name, description, price, bundle_id) values (5, 'bundle5' , 'goed voor allen gelegenheden', 300, 5);

insert into products (id, code, name, description, price, schoen_id) values (26, '85753-11,','normale schoenen' , 'goed voor allen gelegenheden', 140, 26);
insert into products (id, code, name, description, price, schoen_id) values (27, '85753-2','normale schoenen' , 'goed voor allen gelegenheden', 80, 27);
insert into products (id, code, name, description, price, schoen_id) values (28, '85753-3','normale schoenen' , 'goed voor allen gelegenheden', 120, 28);
insert into products (id, code, name, description, price, schoen_id) values (29, '85753-4','normale schoenen' , 'goed voor allen gelegenheden', 60, 29);
insert into products (id, code, name, description, price, schoen_id) values (30, '85753-5','normale schoenen' , 'goed voor allen gelegenheden', 100, 30);

