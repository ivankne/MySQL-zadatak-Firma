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
(null,'Zvonko','Mig',2,4),
(null,'Ana','Kal',3,4);

/*
3.zadatak 
postaviti 'Ana Kal' kao nadređenu ivani i zvonku i obrisati ivanu
*/
update zaposlenik set nadredeni=5 where sifra=3;
update zaposlenik set nadredeni=5 where sifra=4;

update zaposlenik set nadredeni=1 where sifra=5;

delete from zaposlenik where sifra=3;



