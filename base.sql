create database garage;

\c garage


create table sexe(
    id_sexe serial primary key,
    type_sexe varchar(20)
);

create table type_niveau(
    id_niveau serial primary key,
    type_niveau varchar(20)
);

create table specialite (
    id_specialite serial primary key,
    type_specialite varchar(20)
);

create table candidat(
    id_candidat serial primary key,
    nom varchar(50),
    prenom varchar(50),
    date_naissance date,
    id_specialite int,
    id_sexe int,
    id_niveau int, 
    foreign key (id_sexe) references sexe(id_sexe),
    foreign key (id_niveau) references type_niveau(id_niveau),
    foreign key (id_specialite) references specialite(id_specialite)
);

insert into sexe(type_sexe) values 
('homme'),
('femme');

insert into type_niveau(type_niveau) values 
('DTS'),
('License'),
('Master 1'),
('Master 2'),
('Doctorat');

insert into specialite(type_specialite) values
('Soudure'),
('Vidange'),
('Moteur'),
('Marketing'),
('Electronique');

insert into candidat(nom, prenom, date_naissance, id_niveau,id_specialite,id_sexe ) values
('rakoto', 'jaona', '2000-10-22', 1, 5, 2 ),
('rabe', 'jao', '2000-09-12', 3, 1, 1 );
