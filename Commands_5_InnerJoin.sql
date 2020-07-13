use cadastro;

# Criando a tabela de relacionamento assiste_curso
create table assiste_curso (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos (id),
foreign key (idcurso) references cursos (idcurso)
) default charset = utf8;

select * from assiste_curso;

# Inserindo dados na tabela criada
# Pode também ser realizada de forma manual
insert into assiste_curso values
(default, '2014-03-01', '1', '2');

# Fazendo a relação entre as tabelas 'gafanhotos' e 'cursos' através da tabela 'assiste_curso'
# Inner Join junto com outro Inner Join
select g.nome, c.nome from gafanhotos g
join assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome;