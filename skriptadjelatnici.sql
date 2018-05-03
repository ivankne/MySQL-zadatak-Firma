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

/*2.zadatak */
insert into radnomjesto(sifra,naziv,koeficijent) values
(null,'Direktor',4.23),
(null,'Savjetnik',3.12),
(null,'Predradnik',2.23),
(null,'Radnik 1. vrste',1.69);

insert into zaposlenik(sifra,ime,prezime,nadredeni,radnomjesto) values
(null,'Mario','Kurt',null,1),
(null,'Marin','Hed',1,2),
(null,'Ivana','Kur',1,3),
(null,'Zvonko','Mig',3,4),
(null,'Ana','Kal',3,4);