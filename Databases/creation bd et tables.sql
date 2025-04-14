create database if not exists roy_bank ;
use roy_bank;
create table clients (
	id_client int auto_increment primary key,
    nom varchar(100),
    prenom varchar(100),
    genre varchar(1), /* M ou F */
    marie varchar(1), /* O ou N */
    dependants int,
    auto_entrepreneur varchar(1), /* O ou N */
    education varchar(1), /* O ou N */
    zone_propriete varchar(10), /* Urban ou Ruran ou Semiurban	 */
    revenu_mensuel decimal(15,2) );

create table transactions (
id_transaction int auto_increment primary key,
id_client int,
nature varchar(10),
montant_transaction decimal(15,2) ,
date_transaction date,
foreign key (id_client) references clients(id_client)on delete cascade /* Pour éviter les lignes orhelines */
);

create table historique_pret (
id_pret int auto_increment primary key,
id_client int, 
montant_pret decimal(15,2) ,
duree_pret int,
date_emprunt date,
statut_pret varchar(1), /* O ou N */
foreign key (id_client) references clients(id_client) on delete cascade
); 