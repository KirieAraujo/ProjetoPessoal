CREATE DATABASE armoredcore;
USE armoredcore;

CREATE TABLE Fabricante (
idFabricante INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
descricao VARCHAR(150)
);

CREATE TABLE Cabeca (
idCabeca INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
peso INT,
consumoEnergia INT,
preco DECIMAL(8,2),
fkFabricante INT,
CONSTRAINT fkFabricanteCabeca
FOREIGN KEY (fkFabricante) REFERENCES Fabricante(idFabricante)
);

CREATE TABLE Core (
idCore INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
peso INT,
supplyEnergia INT,
preco DECIMAL(8,2),
fkFabricante INT,
CONSTRAINT fkFabricanteCore
FOREIGN KEY (fkFabricante) REFERENCES Fabricante(idFabricante)
);

CREATE TABLE Braços (
idBracos INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
peso INT,
consumoEnergia INT,
preco DECIMAL(8,2),
fkFabricante INT,
CONSTRAINT fkFabricanteBracos
FOREIGN KEY (fkFabricante) REFERENCES Fabricante(idFabricante)
);

CREATE TABLE Pernas (
idPernas INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
peso INT,
consumoEnergia INT,
preco DECIMAL(8,2),
fkFabricante INT,
CONSTRAINT fkFabricantePernas
FOREIGN KEY (fkFabricante) REFERENCES Fabricante(idFabricante)
);

CREATE TABLE Visitante (
idVisitante INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
senha VARCHAR(45) NOT NULL,
nomeRobo VARCHAR(45),
fkCabeca INT,
fkCore INT,
fkBracos INT,
fkPernas INT,
CONSTRAINT fkCabecaVisitante 
FOREIGN KEY (fkCabeca) REFERENCES Cabeca(idCabeca),
CONSTRAINT fkCoreVisitante
FOREIGN KEY (fkCore) REFERENCES Core(idCore),
CONSTRAINT fkBracosVisitante
FOREIGN KEY (fkBracos) REFERENCES Braços(idBracos),
CONSTRAINT fkPernasVisitante
FOREIGN KEY (fkPernas) REFERENCES Pernas(idPernas)
);






