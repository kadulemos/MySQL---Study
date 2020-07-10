# Ativando o banco de dados para trabalhar
use cadastro;

# Seleção por 'nome'
select * from cursos
where nome = 'PHP';

# Usando o Operador LIKE

# 'p' no início do registro
select * from cursos
where nome like 'p%';

# 'p' no final do registro
select * from cursos
where nome like '%p';

# que contenha 'a' em qualquer parte do registro
select * from cursos
where nome like '%a%';

# Usando o operador NOT LIKE
select * from cursos
where nome not like '%a%';

# Atualizando algum registro
update cursos set nome = 'PowerPoint1' where idcurso = '16';

# Wildcards
# Que tenha em alguma parte do registro o conjuto de parâmetros estabelecidos
# '%' significa que tenha ou não algo naquele espaço especificado
select * from cursos
where nome like 'ph%p%';

# Para especificar que obrigatoriamente contenha algo naquela posição, utilisa-se o underline '_'
select * from cursos
where nome like 'ph%p_';

# Cada underline significa um caractere ou espaço
select * from cursos
where nome like 'p__t%';

select * from gafanhotos
where nome like '%_silva%';

# Distinguindo os registros
select distinct nacionalidade from gafanhotos;

# Distinguindo os registros e ordenando
select distinct nacionalidade from gafanhotos
order by nacionalidade;

# Usando a contagem para trazer o total de registros
select count(*) from cursos;
# Where como condição
select count(*) from cursos where carga > 40;

# Função de Agregação
select count(nome) from cursos;
# Trazendo o valor máximo do campo através dos registros
select max(totaulas) from cursos where ano ='2016';
# Trazendo o valor mínimo do campo através dos registros
select min(totaulas) from cursos where ano = '2016';

# Usando o operador SUM( )
select sum(totaulas) from cursos where ano = '2016';

# Usando o operador AVERAGE
select avg(totaulas) from cursos where ano = '2016';