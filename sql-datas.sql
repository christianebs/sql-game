use game;
show tables;

-- idProfissao, Profissao, Descricao, NivelMax, Salario, Horario
insert into profissao (Profissao, Descricao, NivelMax, Salario, Horario) 
		values ('Programador', 'Trabalhar com Java', 10, 2500.0, '9h - 18h'),
				('Médico', 'Trabalhar medicando pessoas', 10, 10000.0, '18h - 2h'),
				('Jardineiro', 'Trabalhar com plantas', 10, 1500.0, '7h - 16h');
-- select * from profissao;

-- idPersonagem, NomePersonagem, Sexo, Aspiracao, NivelProfissao, id_Profissao
 insert into personagem (NomePersonagem, Sexo, Aspiracao, NivelProfissao, id_Profissao) 
		 values ('Valentina', 'Feminino', 'Gamer', '10', '1'),
				('Enzo', 'Masculino', 'Família', '5', '2'),
				('Maitê', 'Feminino', 'Vegano', '3', '3'),
				('João', 'Masculino', 'Esportes', '0', '1');
 -- select * from personagem;

-- idCasa, QuantidadeQuartos, QuantidadedeBanheiros, Valor, Tamanho
 insert into casa (QuantidadeQuartos, QuantidadedeBanheiros, Valor, Tamanho) 
		 values ('2', '1', '25000', '16x16'),
				('3', '2', '38000', '48x48'),
				('2', '1', '19000', '24x24'),
				('1', '1', '11000', '16x16');
-- select * from casa;

-- idFamilia, Sobrenome, Dinheiro, id_Casa
 insert into familia (Sobrenome, Dinheiro, id_Casa) 
		 values ('Fernandes', default, '1'),
				('Garcia', '38000', '2'),
				('Pereira', default, '3');
-- select * from familia;

-- id_Personagem, idFamilia
 insert into familia_personagem (id_Personagem, id_Familia) 
		 values ('1', '1'),
				('2', '1'),
				('3', '2'),
				('4', '3');
-- select * from familia_personagem;		

-- idConta, Nome, Usuario, Senha
 insert into conta (Nome, Usuario, Senha) 
		 values ('Maria', 'Mary', '123'),
				('João', 'John', '456'),
				('Elisa', 'Lisa', '789');
-- select * from conta;	

-- id_Conta, id_Familia
 insert into conta_familia (id_Conta, id_Familia) 
		 values ('1', '1'),
				('2', '2'),
				('3', '3');
-- select * from conta_familia;	
