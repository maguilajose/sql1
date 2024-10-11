create database ger_join;
use ger_join;

create table funcionario(
cod int auto_increment primary key not null,
    nome varchar(100) not null,
   especialoidade varchar(100) not null
   );
create table dependente(
    cod_fun int auto_increment primary key not null,
    nome varchar(100) not null,
   cod_func int not null,
   foreign key (cod_func) references funcionario(cod)
   );
   
insert into funcionario(nome,especialoidade)
values ("jose","engenheiro"),
		("joao","mestre de obras"),
        ("maria","contabilista");
        
insert into dependente(nome,cod_func)
values ("pedro",1),
		("alice",1),
        ("luana",3);

select funcionario.nome, dependente.nome
from funcionario
inner join dependente
on funcionario.cod=dependente.cod