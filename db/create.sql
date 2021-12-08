--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);

CREATE TABLE broeken (
  id INTEGER PRIMARY KEY,
  soort stof TEXT,
  naam TEXT,
  prijs NUMERIC(40, 100)
  gemaakt TEXT
);

CREATE TABLE t-shirt (
  id INTEGER PRIMARY KEY,
  soort stof TEXT,
  merk TEXT, 
  prijs NUMERIC(20, 60),
  gemaakt TEXT 
);




--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Dutch Film', 'nederlandse film', '816905633-0', 10.5);
insert into products (name, description, code, price) values ('kleding', 'rode kleding

ja velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '077030122-3', 11);
insert into products (name, description, code, price) values ('jaand the Black, The', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('broeken, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('sokken, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('riemen', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 14);

insert into broeken (id, soort stof, naam, prijs, gemaakt ) values (1, 'wol', 'wollen broek', 45, 'Taiwan');



insert into products (code, name, description, price ) values ( '69', 'anti water', 'maakt je kleren waterafstotend', '7,00');
insert into products (code, name, description, price ) values ( '70', 'geur', 'laat je kleren lekker ruiken', '4,00');
insert into products (code, name, description, price ) values ( '71', 'klerenhanger', 'om je kleren op te hangen', '4,00');
insert into products (code, name, description, price ) values ( '72', 'strijkplaat', 'plak platen om kreukels eruit te krijgen', '10,00');