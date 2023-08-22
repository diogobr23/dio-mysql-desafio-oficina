-- Criação do Banco de Dados
CREATE DATABASE oficina;

-- Utilização do Banco de Dados
USE oficina;

-- Tabela de Clientes
CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    endereco VARCHAR(200)
);

-- Tabela de Veículos
CREATE TABLE Veiculos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    modelo VARCHAR(100),
    placa VARCHAR(10),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

-- Tabela de Mecânicos
CREATE TABLE Mecanicos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    endereco VARCHAR(200),
    especialidade VARCHAR(100)
);

-- Tabela de Ordens de Serviço (OS)
CREATE TABLE OrdensDeServico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    veiculo_id INT,
    mecanico_id INT,
    data_emissao DATE,
    valor_total DECIMAL(10, 2),
    status VARCHAR(20),
    data_conclusao DATE,
    FOREIGN KEY (veiculo_id) REFERENCES Veiculos(id),
    FOREIGN KEY (mecanico_id) REFERENCES Mecanicos(id)
);

-- Tabela de Serviços
CREATE TABLE Servicos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200),
    valor_mao_de_obra DECIMAL(10, 2),
    tipo VARCHAR(20)
);

-- Tabela de Peças
CREATE TABLE Pecas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200),
    valor DECIMAL(10, 2)
);

-- Tabela de Serviços por OS
CREATE TABLE ServicosPorOS (
    id INT PRIMARY KEY AUTO_INCREMENT,
    os_id INT,
    servico_id INT,
    FOREIGN KEY (os_id) REFERENCES OrdensDeServico(id),
    FOREIGN KEY (servico_id) REFERENCES Servicos(id)
);

-- Tabela de Peças por OS
CREATE TABLE PecasPorOS (
    id INT PRIMARY KEY AUTO_INCREMENT,
    os_id INT,
    peca_id INT,
    quantidade INT,
    FOREIGN KEY (os_id) REFERENCES OrdensDeServico(id),
    FOREIGN KEY (peca_id) REFERENCES Pecas(id)
);
