drop database if exists zupanija;

create database 
    zupanija;

use zupanija;

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
zupan int not null 
);

create table opcina(
sifra int not null primary key auto_increment,
naziv varchar(50)not null,
zupanija int not null
);
create table zupan(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null
);
create table mjesto(
sifra int not null primary key auto_increment,
opcina int not null,
naziv varchar(50) not null
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);

alter table zupanija add foreign key (zupan) references zupan(sifra);

alter table mjesto add foreign key (opcina) references opcina(sifra);




insert into zupan (ime,prezime) values 
('Ivan','Anusic'),
('Bozo','Galic'),
('Alojz','Tomasevic'),
('Damir','Grunbaum');

insert into zupanija (naziv,zupan) values
('osijecko Baranjska',1),
('Vukovarsko Srijemska',2),
('Pozesko Slavonska',3),
('Istarska',4);

insert into opcina (naziv,zupanija) values
('osijek',1),
('Trpinja',2),
('Stari Jankovci',2),
('Porec',4);

insert into mjesto (opcina,naziv) values
(1,'klisa'),
(2,'pacetin'),
(3,'Srijemske Laze'),
(4,'Antonci');


