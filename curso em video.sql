select * from gafanhotos; 

select * from cursos
order by nome desc;

select * from cursos
order by nome asc;

select * from cursos
order by  ano;

desc gafanhotos; 

select nome,carga,ano from cursos
order by nome;

select ano,nome,carga from cursos
order by ano, nome;


select nome,carga from cursos
where ano = '2016'
order by nome;


select * from cursos
where ano = '2010'  
order by nome;

select nome, descricao,ano from cursos
where ano <= '2015'
order by ano,nome;

select nome ,ano from cursos
where ano between 2014 and 2016 # entre
order by ano desc,nome; # desc = descendente

select nome,ano from cursos	
where ano in (2014,2016,2020) # comando in serve para filtrar os valores desejados
order by ano; 

select nome, carga , totaulas from cursos
where carga > 35 and totaulas <= 30; #&&

select nome, carga , totaulas from cursos
where carga > 35 or totaulas <= 30; # || 

select * from cursos
where nome = 'PHP' or nome = 'POO';

select * from cursos
where nome like 'P%'; # case sensite--- começa com P .... O  % substitui nenhum ou varios

select * from cursos
where nome like '%a'; # case sensite--- começa com P .... O  % substitui nenhum ou varios


select * from cursos
where nome like '%a%'; # case sensite--- começa com P .... O  % substitui nenhum ou varios


select * from cursos
where nome not like '%a%'; # case sensite--- começa com P .... O  % substitui nenhum ou varios




update cursos set nome = 'PáOO'
where idcurso = '9';

select * from cursos
where nome   like 'ph%p'; # case sensite--- começa com P .... O  % substitui nenhum ou varios
#comeca com ph tem algo no meio e termina com p

select * from cursos
where nome   like 'ph%p_'; # o _ exige que tenha alguma coisa



select * from cursos;

select * from cursos
where nome   like 'p_p%'; # tem p outra letra p e qualquer coisa

select * from gafanhotos
where nome like '%silva%'; #nome silva em qualquer lugar

select * from gafanhotos
where nome like '%_silva%'; # tem que ter algo antes

select * from gafanhotos
where nome like 'silva%'; # começa com silva

select * from gafanhotos
where nome like '%silva';

select distinct nacionalidade from gafanhotos
order by nacionalidade; # uma lista de nacionalidades


select distinct carga from cursos
order by carga;

select count(*) from cursos; # Agregação - contagem

select count(*) from cursos
where carga > 40;

select max(carga) from cursos; # maior carga

select max(totaulas) from cursos where ano = '2016'; # o curso com o numero de aula mais alto em 2016

select min(totaulas) from cursos where ano = '2016';

select sum(totaulas) from cursos where ano = '2016'; # soma

select avg(totaulas) from cursos where ano = '2016'; # Média

desc gafanhotos;

select nome from gafanhotos
where sexo = 'F';

select * from gafanhotos
where nascimento > '2000-01-01' and nascimento < '2015-12-31';

select nome, profissao from gafanhotos
where sexo = 'M' and profissao = 'programador';

select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

select nome, nacionalidade from gafanhotos
where nome like '%silva%' and nacionalidade != 'Brasil' and peso < '100';

select max(altura) from gafanhotos where nacionalidade = 'Brasil';

select avg(peso) from gafanhotos;

select min(peso) from gafanhotos
where sexo = 'M' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31'; 



select count(*) from gafanhotos where sexo = 'M' and altura > '1.90';


desc cursos;

select carga, count(nome) from cursos group by carga;

select totaulas, count(*) from cursos
 group by totaulas
order by totaulas;  # agrupa e conta o toral de cursos pelo total de aulas

select * from cursos where totaulas = 30;

select carga, count(*) from cursos where totaulas = 30
group by carga;

select * from cursos where totaulas = 30;

select ano, count(*) from cursos
group by ano
having count(ano) >= 5  #serve para filtrar o campo que foi agrupado pelo group by
order by count(*) desc ; # agrupando por ano e ordenando pela nova coluna count

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc; 

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);
 # seleciona os cursos acima de 
#2015 agrupados por carga com carga acima da média

select profissao, count(*) from gafanhotos
group by profissao; #agrupa e conta os gafanhotos por profissão

select * from gafanhotos
where profissao = 'Médico';

select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

# lista com os gafanhotos que nasceram fora do Brasil, mostrando páis de origem 
# e o total de pessoas nascidas lá , mostrando somente os paises que possuem mais de 3 pessoas
select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(*) > 3; 

select avg(altura) from gafanhotos;

select altura, count(*) from gafanhotos
where peso > 100 and altura > (select avg(altura) from gafanhotos)
group by altura;

# uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas
# pesam mais de 100 kg e que estão acima da média de altura de todos os cadastrados




