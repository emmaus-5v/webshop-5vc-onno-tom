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
  schoenen_id INTEGER,
  bundle_id INTEGER
);

DROP TABLE IF EXISTS broek;
CREATE TABLE broek (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  soort stof TEXT,
  gemaakt TEXT,
  merk TEXT,
  maat NUMERIC(12, 30)
);

DROP TABLE IF EXISTS shirt;
CREATE TABLE shirt (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  soort stof TEXT,
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
  soort stof TEXT,
  merk TEXT, 
  gemaakt TEXT,
  maat NUMERIC(12,30)
);

DROP TABLE IF EXISTS sokken;
CREATE TABLE sokken(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR (15),
  soort stof TEXT,
  merk TEXT, 
  gemaakt TEXT,
  maat NUMERIC(12,30)
);

DROP TABLE IF EXISTS schoenen;
CREATE TABLE schoenen (
id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR (15),
  soort stof TEXT,
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

insert into broek ( code, soort stof, gemaakt, merk, maat) values ('6756478-8','katoenmix', 'China', 'chasin', 16);
insert into broek ( code, soort stof, gemaakt, merk, maat) values ('6756478-9','katoenmix', 'China', 'chasin', 16);
insert into broek ( code, soort stof, gemaakt, merk, maat) values ('6756478-4','katoenmix', 'China', 'chasin', 16);
insert into broek ( code, soort stof, gemaakt, merk, maat) values ('6756478-1','katoenmix', 'China', 'chasin', 16);
insert into broek ( code, soort stof, gemaakt, merk, maat) values ('6756478-6','katoenmix', 'China', 'chasin', 16);
insert into shirt (code, soort stof, gemaakt, merk, maat) values ('6781538-1','katoenmix', 'China', 'ellese', 16);
insert into shirt (code, soort stof, gemaakt, merk, maat) values ('6781538-2','katoenmix', 'China', 'ellese', 16);
insert into shirt (code, soort stof, gemaakt, merk, maat) values ('6781538-3','katoenmix', 'China', 'ellese', 16);
insert into shirt (code, soort stof, gemaakt, merk, maat) values ('6781538-4','katoenmix', 'China', 'ellese', 16);
insert into shirt (code, soort stof, gemaakt, merk, maat) values ('6781538-5','katoenmix', 'China', 'ellese', 16);
insert into bundle  () values ('9085478-2', );



insert into truien (code, soort stof, gemaakt, merk, maat) values ('6796478-5','katoenmix', 'China', 'HUF', 16);
insert into truien (code, soort stof, gemaakt, merk, maat) values ('6796478-6','katoenmix', 'China', 'HUF', 16);
insert into truien (code, soort stof, gemaakt, merk, maat) values ('6796478-7','katoenmix', 'China', 'HUF', 16);
insert into truien (code, soort stof, gemaakt, merk, maat) values ('6796478-8','katoenmix', 'China', 'HUF', 16);
insert into truien (code, soort stof, gemaakt, merk, maat) values ('6796478-9','katoenmix', 'China', 'HUF', 16);
insert into sokken (code, soort stof, gemaakt, merk, maat) values ('6785753-1', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (code, soort stof, gemaakt, merk, maat) values ('6785753-2', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (code, soort stof, gemaakt, merk, maat) values ('6785753-3', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (code, soort stof, gemaakt, merk, maat) values ('6785753-4', 'katoenmix', 'China', 'addidas', 16);
insert into sokken (code, soort stof, gemaakt, merk, maat) values ('6785753-5', 'katoenmix', 'China', 'addidas', 16);
insert into products (id, code, name, description, price ) values (1, '69', 'anti water', 'maakt je kleren waterafstotend', '7,00');
insert into products (id, code, name, description, price ) values (2, '70', 'geur', 'laat je kleren lekker ruiken', '4,00');
insert into products (id, code, name, description, price ) values (3,  '71', 'klerenhanger', 'om je kleren op te hangen', '4,00');
insert into products (id, code, name, description, price ) values (4,  '72', 'strijkplaat', 'plak platen om kreukels eruit te krijgen', '10,00');