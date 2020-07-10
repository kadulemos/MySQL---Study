# Create DataBase
create database automobile;

# Create Table with yours constraints
create table auto (
symboling int,
normalized int,
make varchar(10) not null,
fuel varchar(10) not null,
aspiration varchar(10) not null
);

select * from auto;


use automobile;
select * from directorydb.withdrawaltbl;

# Apagando a tabela auto
drop table if exists auto;

# Importação CSV para MySQL
LOAD DATA LOCAL INFILE '/Users/kadulemos/OneDrive/Documentos/UNICESUMAR - ADS/Cursos - Tecnologia e Interfaces/Minerando Dados/Data Science do Zero/Módulo V - Python para Análise de Dados/materiais-de-apoio-pandas-sql-banco-dados/automobile.csv'
INTO TABLE auto
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
(symboling,normalized,make,fuel,aspiration);

Error Code: 3948. Loading local data is disabled; this must be enabled on both the client and server sides
