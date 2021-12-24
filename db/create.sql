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
  bundle_id INTEGER
);


DROP TABLE IF EXISTS broek;
CREATE TABLE broek (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  stof TEXT,
  gemaakt TEXT,
  merk TEXT,
  maat NUMERIC(12, 30)
  
);

DROP TABLE IF EXISTS shirt;
CREATE TABLE shirt (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  stof TEXT,
  merk TEXT, 
  gemaakt TEXT,
  maat NUMERIC(12, 30)
);

DROP TABLE IF EXISTS bundle;
CREATE TABLE bundle (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   broek_id INTEGER,
  shirt_id INTEGER,
  truien_id INTEGER,
  sokken_id INTEGER
);

DROP TABLE IF EXISTS truien;
CREATE TABLE truien (
id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR (15),
 stof TEXT,
  merk TEXT, 
  gemaakt TEXT,
  maat NUMERIC(12,30)
);

DROP TABLE IF EXISTS sokken;
CREATE TABLE sokken(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR (15),
  stof TEXT,
  merk TEXT, 
  gemaakt TEXT,
  maat NUMERIC(12,30)
);



insert into products (name, description, code, price) values ('French Film', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 10.5);
insert into products (name, description, code, price) values ('Post Mortem', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11);
insert into products (name, description, code, price) values ('Scarlet and the Black, The', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('Aquí llega Condemor, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into broek ( code,  stof, gemaakt, merk, maat) values ('6756478-8','katoenmix', 'China', 'chasin', 16);
insert into broek ( code,  stof, gemaakt, merk, maat) values ('6756478-9','katoenmix', 'China', 'chasin', 16);
insert into broek ( code,  stof, gemaakt, merk, maat) values ('6756478-4','katoenmix', 'China', 'chasin', 16);
insert into broek ( code,  stof, gemaakt, merk, maat) values ('6756478-1','katoenmix', 'China', 'chasin', 16);
insert into broek ( code,  stof, gemaakt, merk, maat) values ('6756478-6','katoenmix', 'China', 'chasin', 16);

insert into shirt (code, stof, gemaakt, merk, maat) values ('6781538-1','katoenmix', 'China', 'ellese', 16);
insert into shirt (code, stof, gemaakt, merk, maat) values ('6781538-2','katoenmix', 'China', 'ellese', 16);
insert into shirt (code,  stof, gemaakt, merk, maat) values ('6781538-3','katoenmix', 'China', 'ellese', 16);
insert into shirt (code,  stof, gemaakt, merk, maat) values ('6781538-4','katoenmix', 'China', 'ellese', 16);
insert into shirt (code,  stof, gemaakt, merk, maat) values ('6781538-5','katoenmix', 'China', 'ellese', 16);

insert into bundle  (broek_id, shirt_id, truien_id, sokken_id) values (4, 1, 5, 2);
insert into bundle  (broek_id, shirt_id, truien_id, sokken_id) values (3, 4, 2, 1);
insert into bundle  (broek_id, shirt_id, truien_id, sokken_id) values (1, 1, 3, 2 );
insert into bundle  (broek_id, shirt_id, truien_id, sokken_id) values (2, 4, 5, 5);
insert into bundle  (broek_id, shirt_id, truien_id, sokken_id) values (5, 3, 1, 4 );

insert into truien (code,  stof, gemaakt, merk, maat) values ('6796478-5','katoenmix', 'China', 'HUF', 16);
insert into truien (code,  stof, gemaakt, merk, maat) values ('6796478-6','katoenmix', 'China', 'HUF', 16);
insert into truien (code,  stof, gemaakt, merk, maat) values ('6796478-7','katoenmix', 'China', 'HUF', 16);
insert into truien (code,  stof, gemaakt, merk, maat) values ('6796478-8','katoenmix', 'China', 'HUF', 16);
insert into truien (code, stof, gemaakt, merk, maat) values ('6796478-9','katoenmix', 'China', 'HUF', 16);

insert into sokken (code,  stof, gemaakt, merk, maat) values ('6785753-1', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (code,  stof, gemaakt, merk, maat) values ('6785753-2', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (code,  stof, gemaakt, merk, maat) values ('6785753-3', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (code,  stof, gemaakt, merk, maat) values ('6785753-4', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (code, stof, gemaakt, merk, maat) values ('6785753-5', 'katoenmix', 'China', 'addidas', 16);

insert into products ( code, name, description, price ) values ( '69', 'anti water', 'maakt je kleren waterafstotend', '7,00');
insert into products (code, name, description, price ) values ( '70', 'geur', 'laat je kleren lekker ruiken', '4,00');
insert into products ( code, name, description, price ) values (  '71', 'klerenhanger', 'om je kleren op te hangen', '4,00');
insert into products (code, name, description, price ) values (  '72', 'strijkplaat', 'plak platen om kreukels eruit te krijgen', '10,00');

insert into products ( code, name, description, price, shirt_id) values ('6781538-1', 'sport shirt', 'lekker om in te sporten ', 40, 1);
insert into products ( code, name, description, price, shirt_id) values ('6781538-2', 'ondershirt', 'goed voor onder je shirt', 20, 2 );
insert into products ( code, name, description, price, shirt_id) values ('6781538-3', 'normaal shirt' , 'goed voor allen gelegenheden', 50, 3);
insert into products ( code, name, description, price, shirt_id) values ('6781538-4', 'chique shirt', 'voor een avondje weg', 60, 4);
insert into products ( code, name, description, price, shirt_id) values ('6781538-5', 'normaal shirt' , 'goed voor allen gelegenheden', 30, 5 );

insert into products ( code, name, description, price, broek_id) values ('6756478-8', 'sport broek', 'lekker om in te sporten ', 60, 1);
insert into products ( code, name, description, price, broek_id) values ('6756478-9','normale broek' , 'goed voor allen gelegenheden', 40, 2);
insert into products ( code, name, description, price, broek_id) values ('6756478-4', 'strakke broek', 'goed voor wat slankeren mannen', 50, 3);
insert into products ( code, name, description, price, broek_id) values ('6756478-1', 'wijde broek', 'goed voor iedereen', 70, 4);
insert into products ( code, name, description, price, broek_id) values ('6756478-7','normale broek' , 'goed voor allen gelegenheden', 58, 5);

insert into products ( code, name, description, price, truien_id) values ('6796478-5','normale trui' , 'goed voor allen gelegenheden', 58, 1);
insert into products ( code, name, description, price, truien_id) values ('6796478-6','normale trui' , 'goed voor allen gelegenheden', 40, 2);
insert into products ( code, name, description, price, truien_id) values ('6796478-7','normale trui' , 'goed voor allen gelegenheden', 80, 3);
insert into products ( code, name, description, price, truien_id) values ('6796478-8','normale trui' , 'goed voor allen gelegenheden', 100, 4);
insert into products ( code, name, description, price, truien_id) values ('6796478-9','normale trui' , 'goed voor allen gelegenheden', 50, 5);

insert into products ( code, name, description, price, sokken_id) values ('6785753-1','normale sokken' , 'goed voor allen gelegenheden', 20, 1);
insert into products ( code, name, description, price, sokken_id) values ('6785753-2','normale sokken' , 'goed voor allen gelegenheden', 10, 2);
insert into products ( code, name, description, price, sokken_id) values ('6785753-3','normale sokken' , 'goed voor allen gelegenheden', 14, 3);
insert into products ( code, name, description, price, sokken_id) values ('6785753-4','normale sokken' , 'goed voor allen gelegenheden', 18, 4);
insert into products ( code, name, description, price, sokken_id) values ('6785753-5','normale sokken' , 'goed voor allen gelegenheden', 12, 5);

insert into products (  name, description, price, bundle_id) values ('bundle1' , 'goed voor alle gelegenheden', 160, 1);
insert into products (  name, description, price, bundle_id) values ('bundle2' , 'goed voor allen gelegenheden', 120, 2);
insert into products (  name, description, price, bundle_id) values ('bundle3' , 'goed voor allen gelegenheden', 180, 3);
insert into products (  name, description, price, bundle_id) values ('bundle4' , 'goed voor allen gelegenheden', 240, 4);
insert into products (  name, description, price, bundle_id) values ('bundle5' , 'goed voor allen gelegenheden', 300, 5);



