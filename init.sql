USE test_db;

--TODO Crie a tabela de user;
Create table User(
    ID_User int primary key AUTOINCREMENT,
    FirstName varchar(100) not null,
    LastName varchar(100) not null,
    Email varchar(100) not null,
    )
--TODO Crie a tabela de posts;
Create table Post(
    ID_Post int primary key AUTOINCREMENT,
    Title varchar(100) not null,
    Description varchar(100) not null,
    ID_User int,
    constraint fk_UserPost FOREIGN KEY (ID_User) REFERENCES User (ID_User)
    )
