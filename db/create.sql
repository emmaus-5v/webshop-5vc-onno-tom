--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT ,
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
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  br_id INTEGER,
  sh_id INTEGER,
  tr_id INTEGER,
  so_id INTEGER,
  sc_id INTEGER
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


insert into products (name, description, code, price) values ( 'sport shirt', 'lekker om in te sporten ', '816905633-0', 40);
insert into products (name, description, code, price) values ('ondershirt', 'goed voor onder je shirt', '077030122-3', 20);
insert into products (name, description, code, price) values ('normaal shirt' , 'goed voor allen gelegenheden', '445924201-X', 50);
insert into products (name, description, code, price) values ('chique shirt', 'voor een avondje weg', '693155505-7', 60);
insert into products (name, description, code, price) values ('normaal shirt' , 'goed voor allen gelegenheden', '686928463-6', 30);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);


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
insert into broek (id,code, stof, gemaakt, merk, maat) values (10, '6756478-6','katoenmix', 'China', 'chasin', 16);

insert into shirt (id, code, stof, gemaakt, merk, maat) values (11, '6781538-11,','katoenmix', 'China', 'ellese', 16);
insert into shirt (id, code, stof, gemaakt, merk, maat) values (12, '6781538-2','katoenmix', 'China', 'ellese', 16);
insert into shirt (id, code, stof, gemaakt, merk, maat) values (13, '6781538-3','katoenmix', 'China', 'ellese', 16);
insert into shirt (id, code, stof, gemaakt, merk, maat) values (14, '6781538-4','katoenmix', 'China', 'ellese', 16);
insert into shirt (id, code, stof, gemaakt, merk, maat) values (15, '6781538-5','katoenmix', 'China', 'ellese', 16);

insert into bundle  (br_id, sh_id, tr_id, so_id, sc_id) values (9, 12, 20, 21, 29);
insert into bundle  (br_id, sh_id, tr_id, so_id, sc_id) values (7, 11, 17, 21, 27);
insert into bundle  (br_id, sh_id, tr_id, so_id, sc_id) values (6, 13, 18, 25, 30);
insert into bundle  (br_id, sh_id, tr_id, so_id, sc_id) values (8, 15, 16, 23, 28);
insert into bundle  (br_id, sh_id, tr_id, so_id, sc_id) values (10, 14, 19, 22, 26);


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

insert into products (code, name, description, price, shirt_id) values ('6781538-11,', 'sport shirt', 'lekker om in te sporten ', 40, 11);
insert into products (code, name, description, price, shirt_id) values ('6781538-2', 'ondershirt', 'goed voor onder je shirt', 20, 12 );
insert into products (code, name, description, price, shirt_id) values ('6781538-3', 'normaal shirt' , 'goed voor allen gelegenheden', 50, 13);
insert into products (code, name, description, price, shirt_id) values ('6781538-4', 'chique shirt', 'voor een avondje weg', 60, 14);
insert into products (code, name, description, price, shirt_id) values ('6781538-5', 'normaal shirt' , 'goed voor allen gelegenheden', 30, 15 );

insert into products (code, name, description, price, broek_id) values ('6756478-8', 'sport broek', 'lekker om in te sporten ', 60, 6);
insert into products (code, name, description, price, broek_id) values ('6756478-9','normale broek' , 'goed voor allen gelegenheden', 40, 7);
insert into products (code, name, description, price, broek_id) values ('6756478-4', 'strakke broek', 'goed voor wat slankeren mannen', 50, 8);
insert into products (code, name, description, price, broek_id) values ('6756478-11,', 'wijde broek', 'goed voor iedereen', 70, 9);
insert into products (code, name, description, price, broek_id) values ('6756478-7','normale broek' , 'goed voor allen gelegenheden', 58, 10);

insert into products (code, name, description, price, truien_id) values ('6796478-5','normale trui' , 'goed voor allen gelegenheden', 58, 16);
insert into products (code, name, description, price, truien_id) values ('6796478-6','normale trui' , 'goed voor allen gelegenheden', 40, 17);
insert into products (code, name, description, price, truien_id) values ('6796478-7','normale trui' , 'goed voor allen gelegenheden', 80, 18);
insert into products (code, name, description, price, truien_id) values ('6796478-8','normale trui' , 'goed voor allen gelegenheden', 100, 19);
insert into products (code, name, description, price, truien_id) values ('6796478-9','normale trui' , 'goed voor allen gelegenheden', 50, 20);

insert into products ( code, name, description, price, sokken_id) values ('6785753-1,','normale sokken' , 'goed voor allen gelegenheden', 20, 21);
insert into products ( code, name, description, price, sokken_id) values ('6785753-2','normale sokken' , 'goed voor allen gelegenheden', 10, 22);
insert into products ( code, name, description, price, sokken_id) values ('6785753-3','normale sokken' , 'goed voor allen gelegenheden', 14, 23);
insert into products ( code, name, description, price, sokken_id) values ('6785753-4','normale sokken' , 'goed voor allen gelegenheden', 18, 24);
insert into products ( code, name, description, price, sokken_id) values ('6785753-5','normale sokken' , 'goed voor allen gelegenheden', 12, 25);

insert into products (  name, description, price, bundle_id) values ('bundle1' , 'goed voor allen gelegenheden', 160, 1);
insert into products (  name, description, price, bundle_id) values ('bundle2' , 'goed voor allen gelegenheden', 120, 2);
insert into products (  name, description, price, bundle_id) values ('bundle3' , 'goed voor allen gelegenheden', 180, 3);
insert into products (  name, description, price, bundle_id) values ('bundle4' , 'goed voor allen gelegenheden', 240, 4);
insert into products (  name, description, price, bundle_id) values ('bundle5' , 'goed voor allen gelegenheden', 300, 5);

insert into products ( code, name, description, price, schoen_id) values ('85753-11,','normale schoenen' , 'goed voor allen gelegenheden', 140, 26);
insert into products ( code, name, description, price, schoen_id) values ('85753-2','normale schoenen' , 'goed voor allen gelegenheden', 80, 27);
insert into products ( code, name, description, price, schoen_id) values ('85753-3','normale schoenen' , 'goed voor allen gelegenheden', 120, 28);
insert into products ( code, name, description, price, schoen_id) values ('85753-4','normale schoenen' , 'goed voor allen gelegenheden', 60, 29);
insert into products ( code, name, description, price, schoen_id) values ('85753-5','normale schoenen' , 'goed voor allen gelegenheden', 100, 30);

