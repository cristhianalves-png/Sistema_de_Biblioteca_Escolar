#drop database biblioteca;

CREATE DATABASE biblioteca;
use biblioteca;

create table aluno(
id int unsigned NOT NULL auto_increment, 
matricula int,
nome varchar (45) NOT NULL,
turma enum ('1° ano','2° ano','3° ano'),
telefone int,
primary key (id)
);

create table autor(
id int unsigned NOT NULL auto_increment,
nome_do_autor varchar (55) NOT NULL,
primary key (id)
);

create table livro(
id int unsigned NOT NULL auto_increment,
id_autor int unsigned NOT NULL,
codigo int NOT NULL,
titulo varchar (45),
data_de_publicacao date,
isbn int,
foreign key (id_autor) references autor(id),
primary key (id)
);

create table emprestimo(
id int unsigned NOT NULL auto_increment,
id_livro int unsigned NOT NULL,
id_aluno int unsigned NOT NULL,
data_de_emprestimo date, 
data_prevista_de_devolucao date,
data_efetiva_da_devolucao date NULL,
foreign key (id_livro) references livro(id),
foreign key (id_aluno) references aluno(id),
PRIMARY KEY (id)
);

insert into aluno (matricula, nome, turma, telefone)
values ('356478', 'Cristhian Alesandro', '2° ano', '37476577');

insert into autor (nome_do_autor)
values ('Machado de Assis');

insert into livro (id_autor, codigo, titulo, data_de_publicacao, isbn)
values (1, '001', 'Memorias Postumas de Bras Cubas', '1880-12-20', '1234567890');

insert into emprestimo(id_livro, id_aluno, data_de_emprestimo, data_prevista_de_devolucao, data_efetiva_da_devolucao)
values (1, 1, '2026-09-01', '2026-09-15', null);

#select * from aluno;
#select * from autor;
#select * from livro;
#select * from emprestimo;
