CREATE TABLE Pessoa (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    ValorMinimo DECIMAL(10,2) NOT NULL,
    Saldo DECIMAL(10,2) NOT NULL DEFAULT 0
);

CREATE TABLE Movimentacao (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PessoaId INT NOT NULL,
    Tipo CHAR(1) NOT NULL,
    Descricao VARCHAR(100),
    Valor DECIMAL(10,2) NOT NULL,
    DataMovimento DATETIME NOT NULL,

    CONSTRAINT FK_Movimentacao_Pessoa 
    FOREIGN KEY (PessoaId) REFERENCES Pessoa(Id)
);

ALTER TABLE Movimentacao
ADD CONSTRAINT CK_Tipo CHECK (Tipo IN ('E','S'));