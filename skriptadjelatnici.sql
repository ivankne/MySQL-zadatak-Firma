drop database if exists firma;

create database firma default character set utf8;

use firma;

create table zaposlenik(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime varchar(20) not null,
nadredeni int,
radnomjesto int not null
);

create table radnomjesto(
sifra int not null primary key auto_increment,
naziv varchar(20) not null,
koeficijent decimal(4,2) not null
);

alter table zaposlenik add foreign key (radnomjesto) references radnomjesto(sifra); 
alter table zaposlenik add foreign key (nadredeni) references zaposlenik(sifra); /*hijerarhijska veza */
