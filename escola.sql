-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes
-- deste registro dessa escola. 
-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes
-- para se trabalhar com o serviço dessa escola.
-- Popule esta tabela com até 8 dados;
-- Faça um select que retorne o/as estudantes  com a nota maior do que 7.
-- Faça um select que retorne o/as estudantes  com a nota menor do que 7.

create database db_escola;
use db_escola;
create table tb_notas (
id bigint auto_increment,
nome varchar (255) not null,
matricula bigint,
serie int,
turma varchar (255),
nota decimal,

primary key(id));
select*from tb_notas;
 
insert into tb_notas(nome,matricula,nota, turma, serie) values ("Maria Carolina de Jesus", 1431, "7.80", "B", 5);
insert into tb_notas(nome,matricula,nota, turma, serie) values ("Pedro Willian Silva", 5214, 5.70, "A", 5);
insert into tb_notas(nome,matricula,nota, turma, serie) values ("Joaquim Machado", 1243,8.50, "B", 5);
insert into tb_notas(nome,matricula,nota, turma, serie) values ("Graciliano Ramos", 1542, 5.65, "A",5);
insert into tb_notas(nome,matricula,nota, turma, serie) values ("Valetim Magalhães",1265, 4.60, "B",5);
insert into tb_notas(nome,matricula,nota, turma, serie) values ("Manoel de Azevedo",5486, 7.63, "A",5);
insert into tb_notas(nome,matricula,nota, turma, serie) values ("Lia Luft",9745, 3.87,"B",5);
insert into tb_notas(nome,matricula,nota, turma, serie) values ("Ana Maria Machado",7.06,"A",5);

select*from tb_notas;
alter table tb_notas modify nota decimal(8,3);

select*from tb_notas where nota>7;
select*from tb_notas where nota<7;