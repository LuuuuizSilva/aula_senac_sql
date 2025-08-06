create database eCOMMERCE;
USE eCOMMERCE;
CREATE TABLE PRODUTO(
ID INT auto_increment primary key,
Nome varchar(255) not null,
Desconto decimal (5,2),
Descricao text,
Valor decimal (10,2) not null,
Avaliacao decimal (2,1),
Quantidade_compra int,
Imagens text,
Material varchar (100),
Marca varchar(100),
Cor varchar (50),
Tamanho varchar (50),
Peso decimal (10,2),
Lote varchar (50)
);

Create table celular(
Produto_ID int primary key,
Chip varchar (100),
Camera varchar (100),
Fone varchar (100),
Carregador varchar (100),
Sistema_Operacional varchar(100),
Polegadas Decimal (4,1),
Foreign key (Produto_ID)
references Produto(ID) on delete cascade
);

Create table TV(
Produto_ID int primary key,
Smart boolean,
Imagem varchar (255),
Audio varchar (255),
Polegadas decimal (4,1),
Foreign key (Produto_ID) references Produto(ID) on delete cascade
);

Create table Tenis (
Produto_ID int primary key, 
Respiravel boolean, 
Sistema_Amortecimento varchar (255),
Cano varchar (100),
Cadarco varchar (100),
Foreign key (Produto_ID) references Produto(ID) on delete cascade
);

Create table relogio (
Produto_ID int primary key, 
Pulseira varchar (100),
Sitema varchar (100),
Protecao varchar (100),
Foreign key (Produto_ID) references Produto(ID) on delete cascade
);



