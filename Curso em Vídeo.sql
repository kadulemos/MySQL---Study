# Criando a tabela
create database cadastro;

# Selecioando a tabela criada
use cadastro;

# Criando as colunas com suas respetivas caracteísticas (Constraints)
create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
);

# Inserindo dados na tabela criada
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Rosangela', '1978-06-07', 'M', '56.8', '1.60', 'Brasil'),
(default, 'Maria', '1986-09-11', 'F', '75.3', '1.65', 'Portugal')
(default, 'José' , '1967-06-04', 'M', '72.5', '1.78', default);

# Verificando o conteúdo inserido
select * from pessoas;

# Verificando as colunas e suas respectivas características (Constraints)
desc pessoas;

# Inserindo outra coluna após já ter criado a tabela
alter table pessoas
add column profissao varchar(10);


select * from pessoas;

# Apagando uma coluna ou mais
alter table pessoas
drop column profissao;

select*from pessoas;

# Escolhendo a posição da coluna (obs: somente permitido after)
alter table pessoas
add column profissao varchar(10) after nome;

desc pessoas;
select * from pessoas;

# Posição da coluna no início da tabela
alter table pessoas
drop column profissao; 

alter table pessoas
add column codigo int first;

# Modificando definições após ser criado a coluna
alter table pessoas
modify column profissao varchar(20) not null default '';

# Renomeando Coluna
alter table pessoas
change column profissao prof varchar(20);

# Renomeando Tabela
alter table pessoas
rename to gafanhotos;

select * from gafanhotos;

# Criando mais uma tabela
create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int,
ano year default '2020'
) default charset = utf8;

select * from cursos;
desc cursos;

# Adicionando Chave Primária
# Criando a coluna idcurso
alter table cursos
add column idcurso int first;
# Adicionando a constraint de chave primária à coluna criada idcurso
alter table cursos
add primary key(idcurso);

# Criando uma nova tabela para simular o apagamento desta
create table if not exists teste (
id int,
nome varchar(10),
idade int
);

insert into teste value
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

select * from teste;
# Apagando a tabela teste
drop table if exists teste;

# Inserindo dados na tabelo cursos
insert into cursos values
('1', 'HTML4', 'Curso de HTML 5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2020'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado','Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

select * from cursos;
desc cursos;

# Modificando linhas incorretas
update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;

# Deletando uma linha da tabela
delete from cursos
where idcurso = '8';

delete from cursos
where ano = '2018';
select * from cursos;

# Apagando todas as linhas da tabela
truncate table cursos;