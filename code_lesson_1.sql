use cadastro;

# Verificar tabela inteira
select * from gafanhotos;
select * from cadastro;

# verificar tabela separado por sexo
select * from gafanhotos

#1. Uma lista com o nome de todas as gafanhotas
select (nome) from gafanhotos
where sexo = 'F';

#2. Uma lista com os dados de todos aquele que nasceram entre 1/Jan/2000 e 31/Dez/2015
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

#3. Uma lista com o nome de todos os homens que trabalham como Programadores
select * from gafanhotos
where profissao = 'Programador' and sexo = 'M'
order by nome;

#4. Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciado com a letra J
select * from gafanhotos
where nacionalidade = 'Brasil' and sexo = 'F' and nome like 'j%'
order by nome;

#5. Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100kg
select nome,nacionalidade from gafanhotos
where nome like '%silva%' and nacionalidade != 'Brasil' and peso < '100'
order by nome;

#6. Qual é a maior altura entre gafanhotos homens que moram no Brasil?
select max(altura) from gafanhotos
where nacionalidade = 'Brasil';

#7. Qual é a média de peso dos gafanhotos cadastrados?
select avg(peso) from gafanhotos;

#9. Quantas gafanhotos mulheres têm mais de 1.90m de altura?
#9.1. Lista das mulheres
select * from gafanhotos
where sexo = 'F' and altura > '1.90'
order by nome;
#9.2. Total de mulheres
select count(altura) from gafanhotos
where sexo = 'F' and altura > '1.90'
order by nome;