CREATE DATABASE Toutube;

CREATE TABLE Canal(
    CanalId INT PRIMARY KEY,
    Nome varchar(150) not null,
    ContagemInscritos int default 0,
    DataCriacao datetime not null

);

select * from Canal;


CREATE TABLE Video(
    VideoId INT PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    Visualizacoes int DEFAULT 0,
    Likes INT DEFAULT 0,
    Dislikes INT DEFAULT 0,
    Duracao INT NOT NULL,
    CanalId INT FOREIGN KEY REFERENCES Canal(CanalId)
);

select * from Video;