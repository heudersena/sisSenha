CREATE DATABASE bd_senha;

CREATE TABLE tb_usuario(
	usu_id INT AUTO_INCREMENT,
	usu_nome VARCHAR (100) NOT NULL,
	usu_email VARCHAR (100) NOT NULL,
	usu_senha VARCHAR (8) NOT NULL,
	usu_ativo char (1),
	usu_tipo_conta VARCHAR(20),
 	PRIMARY KEY (usu_id)
);
	
CREATE TABLE tb_senha(
	sen_id INT AUTO_INCREMENT,
	sen_senha VARCHAR (100) NOT NULL,
	sen_email VARCHAR (300) NOT NULL,
	sen_nome VARCHAR (300) NOT NULL,	
	sen_descricao VARCHAR (300) NOT NULL,	
	sen_datacadastro TIMESTAMP,
	PRIMARY KEY (sen_id),
	fk_categoria_id INT,
	FOREIGN KEY (fk_categoria_id)
	REFERENCES tb_categoria(cat_id)
);

CREATE TABLE tb_categoria(
	cat_id INT AUTO_INCREMENT,
	cat_categoria VARCHAR (150) NOT NULL,
	cat_datacadastro TIMESTAMP,
	PRIMARY KEY (cat_id)
	
);
