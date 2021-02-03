
drop database if exists restoran_desetka;
create database restoran_desetka;
use restoran_desetka;

create table pravna_osobnost (
    sifra int not null primary key auto_increment,
    mjesto varchar (40) not null,
    oib char (11) not null,
    odgovorna osoba varchar (70) not null
);

create table jelovnik (
    sifra int not null primary key auto_increment,
    dnevnimeni varchar (56) null,
    dostava boolean not null,
    glavnojelo varchar (60) not null,
    juha varchar (60) not null,
    jelo_s_rostilja varchar (69) not null,

);

create table zaposlenik (
    sifra int not null primary key auto_increment,
    ime varchar (30) not null,
    prezime varchar (50) not null,
    pocetak_rada datetime null,
    spol int not null,
    radno_mjesto varchar (50)
);

create table invetar (
    sifra int not null primary key auto_increment,
    stolica int null,
    stol int null,
    stednjak varchar (30) not null,
    jelovnik varchar (10) not null
);

create table usluga (
    sifra int not null primary key auto_increment,
    kava varchar  (30) null,
    jelo varchar (30) null,
    cijena decimal (18.2) not null,
    vrijeme_usluge datetime not null,
    zaposlenik int not null
);

create table dostava (
    sifra int not null primary key auto_increment
    vrsta_usluge varchar (50) null,
    vrijeme_dostave datetime (40) not null,
    cijena_usluge decimal (18.2) not null,
    vozilo int null
    );