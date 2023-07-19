-- drop database game;
create database game;
use game;

-- Tabela profissão --
create table profissao (
	idProfissao int auto_increment primary key,
    Profissao enum('Programador', 'Médico', 'Jardineiro') not null,
    Descricao varchar(255),
    NivelMax char (10),
    Salario double not null default '0',
    Horario varchar(255)
);
alter table profissao auto_increment=1;
-- desc profissao;

-- Tabela personagens --
create table personagem (
	idPersonagem int auto_increment primary key,
    NomePersonagem varchar(15) not null,
    Sexo enum('Feminino', 'Masculino') not null,
    Aspiracao enum('Gamer', 'Família', 'Vegano', 'Esportes') not null,
    NivelProfissao int default 0,
    id_Profissao int,
    constraint FK_PROFISSAO_idProfissao foreign key (id_Profissao) references profissao(idProfissao)
);
alter table personagem auto_increment=1;
-- desc personagem;

-- Tabela Casa --
create table casa (
	idCasa int auto_increment primary key,
    QuantidadeQuartos int default 1,
    QuantidadedeBanheiros int default 1,
    Valor int not null,
    Tamanho enum('16x16', '24x24', '48x48') not null
);
alter table casa auto_increment=1;
-- desc casa;

-- Tabela Familia --
create table familia (
	idFamilia int auto_increment primary key,
    Sobrenome varchar(10) not null,
    Dinheiro int default 20000,
    id_Casa int,
    constraint FK_CASA_idCasa foreign key (id_Casa) references casa(idCasa)
);
alter table familia auto_increment=1;
-- desc familia;

-- Tabela de Relacionamento Familia-Personagem --
create table familia_personagem (
    id_Personagem int not null,
    id_Familia int not null,
    primary key(id_Personagem, id_Familia),
	constraint fk_familia_personagem_Familia foreign key (id_Familia) references familia(idFamilia),
	constraint fk_familia_personagem_Personagem foreign key (id_Personagem) references personagem(idPersonagem)
    );
alter table familia_personagem auto_increment=1;
-- desc familia_personagem;

-- Tabela conta --
create table conta (
	idConta int auto_increment primary key,
    Nome varchar(10) not null,
    Usuario char(11) not null,
    Senha varchar(20) not null,
    constraint unique_usuario_conta unique (Usuario)
);
alter table conta auto_increment=1;
-- desc conta;

-- Tabela conta --
create table conta_familia (
    id_Conta int not null,
    id_Familia int not null,
    primary key(id_Conta, id_Familia),
    constraint fk_conta_familia_Cont foreign key (id_Conta) references conta(idConta),
    constraint fk_conta_familia_Familia foreign key (id_Familia) references familia(idFamilia)
);
alter table conta_familia auto_increment=1;
-- desc conta_familia;
