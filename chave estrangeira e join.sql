desc gafanhotos;
alter table gafanhotos add column cursopreferido int; # adiciona no final da tabela 

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

select * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = '6' where id = '1';

delete from cursos where idcurso = '6'; #não apagaria pois é utilizado por um gafanhoto(integridade referencial)

select g.nome, c.nome,c.ano  from gafanhotos as g
inner join cursos as c 
on g.cursopreferido = c.idcurso
order by g.nome;
# só mostra os que tem relação

select g.nome, c.nome,c.ano  from gafanhotos as g
left join cursos as c 
on g.cursopreferido = c.idcurso
order by g.nome;
#mostra a tabela completa da esquerda neste caso os gafanhotos

select g.nome, c.nome,c.ano  from gafanhotos as g
right join cursos as c 
on g.cursopreferido = c.idcurso
order by g.nome;
#mostra a tabela completa da direita neste caso os cursos
