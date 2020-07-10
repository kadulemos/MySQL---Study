use cadastro;

# Exibindo o campo 'total aulas' da tabela cursos
select totaulas from cursos
order by totaulas;

# Exibindo uma lista com os valores distintos do campo 'total aulas'
select distinct totaulas from cursos
order by totaulas;

# Mostrando a quantidade de registros por quantidade dos valores distintos de 'total aulas'
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

# Exibindo registros da tabela 'cursos' com uma condição estabelecida
select carga, totaulas from cursos where totaulas = 30
group by carga;

# Exibindo a contagem de cursos com a condição estabelecida para o campo 'totaulas'
select carga, count(nome) from cursos where totaulas = 30
group by carga;

# Contagem de cursos por ano
select ano, count(*) from cursos
group by ano
order by count(*) desc;

# Usando 'having' para dar uma condição na exibição dos registros
select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;

# Outra opção com condição where do select
select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

# Select dentro de outro select
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);