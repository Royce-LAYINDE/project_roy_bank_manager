use roy_bank;
CREATE TABLE utilisateurs (
    id INTEGER PRIMARY KEY auto_increment,
    email varchar(100) NOT NULL UNIQUE,
    mot_de_passe varchar(100) NOT NULL
);
insert into utilisateurs( email, mot_de_passe) values 
('admin@roybank.com', 'admin'), ('malick@roybank.com', 'admin');

