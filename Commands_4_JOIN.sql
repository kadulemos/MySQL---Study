# Selecionando a tabela a ser trabalhada
use cadastro;

# Verificando o tipo dos campos e o tamanho
describe gafanhotos;

# Inserindo uma coluna a tabela gafanhotos
alter table gafanhotos add column cursopreferido int;

# Alterando o tipo do campo criado como chave estrangeira
alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

# visualizando as tabelas
select * from gafanhotos;
select * from cursos;

# Inserindo registro de forma manual
update gafanhotos set cursopreferido ='6' where id = '1';

# Excluindo registro da tabela de referência
# Irá dar erro se a referência estiver sendo usada como chave extrangeira
delete from cursos where idcurso = '28';

# Mostrando os campos de interesse de cada tabela
select nome, cursopreferido from gafanhotos;
select nome, ano from cursos;

# Realizando a referência da tabela gafanhotos com a chave extrangeira

# Inner Join - mostra somente os registros que contém referência com a outra tabela
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;
# Usando o comando 'as' para dar apelido às tabelas
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

# Left Join - mostra todos os registros e coloca como tabela principal a que estiver posicionada à esquerda no comando
select g.nome, c.nome, c.ano
from gafanhotos as g left join cursos as c
on c.idcurso = g.cursopreferido;

# Right Join - mostra todos os registros e coloca como tabela principal a que estiver posicionada à direita no comando
select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido;