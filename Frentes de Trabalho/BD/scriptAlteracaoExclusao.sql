use Noticias;

alter table -tabela- add -coluna- -tipo-;
alter table -tabela- drop column -coluna-;
alter table -tabela- alter column -coluna- -tipo-;
alter table -tabela- modify column -coluna- -tipo-;

update -tabela- set -coluna- = -alteracao-;
update -tabela- set -coluna- = -alteracao- where -coluna- = -requisito-;

delete from -tabela- where -id- = -xx-;

drop table -tabela-;