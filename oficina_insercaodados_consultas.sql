-- Inserção de Dados Aleatórios para Clientes
INSERT INTO Clientes (nome, endereco)
VALUES
    ('João da Silva', 'Rua A, 123'),
    ('Maria Oliveira', 'Avenida B, 456'),
    ('Carlos Santos', 'Rua C, 789');

-- Inserção de Dados Aleatórios para Veículos
INSERT INTO Veiculos (cliente_id, modelo, placa)
VALUES
    (1, 'Sedan', 'ABC123'),
    (2, 'Hatchback', 'DEF456'),
    (2, 'SUV', 'GHI789');

-- Inserção de Dados Aleatórios para Mecânicos
INSERT INTO Mecanicos (nome, endereco, especialidade)
VALUES
    ('José Pereira', 'Rua X, 789', 'Motor'),
    ('Ana Souza', 'Avenida Y, 456', 'Freios'),
    ('Pedro Costa', 'Rua Z, 123', 'Suspensão');

-- Inserção de Dados Aleatórios para Serviços
INSERT INTO Servicos (descricao, valor_mao_de_obra, tipo)
VALUES
    ('Troca de Óleo', 50.00, 'Revisão'),
    ('Troca de Pastilhas de Freio', 80.00, 'Conserto'),
    ('Alinhamento e Balanceamento', 120.00, 'Revisão');

-- Inserção de Dados Aleatórios para Peças
INSERT INTO Pecas (descricao, valor)
VALUES
    ('Filtro de Óleo', 15.00),
    ('Pastilhas de Freio', 40.00),
    ('Amortecedor', 70.00);

-- Inserção de Dados Aleatórios para Ordens de Serviço (OS)
INSERT INTO OrdensDeServico (veiculo_id, mecanico_id, data_emissao, valor_total, status, data_conclusao)
VALUES
    (1, 1, '2023-08-01', 65.00, 'Concluída', '2023-08-05'),
    (2, 2, '2023-08-02', 100.00, 'Pendente', NULL),
    (3, 3, '2023-08-03', 150.00, 'Concluída', '2023-08-07');

-- Inserção de Dados Aleatórios para Serviços por OS
INSERT INTO ServicosPorOS (os_id, servico_id)
VALUES
    (1, 1),
    (1, 3),
    (2, 2),
    (3, 1),
    (3, 2),
    (3, 3);

-- Inserção de Dados Aleatórios para Peças por OS
INSERT INTO PecasPorOS (os_id, peca_id, quantidade)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 1);
    
-- Consulta para recuparar o nome e endereço de todos os clientes.
SELECT nome, endereco
FROM Clientes;

-- Filtros com WHERE: Recuperar os veículos cujo modelo seja "Sedan".
SELECT modelo, placa
FROM Veiculos
WHERE modelo = 'Sedan';

-- Ordenação com ORDER BY: Recuperar os mecânicos ordenados por especialidade e nome.
SELECT nome, especialidade
FROM Mecanicos
ORDER BY especialidade, nome;

-- HAVING: Recuperar as especialidades de mecânicos que têm mais de 3 registros.
SELECT especialidade, COUNT(*) AS quantidade
FROM Mecanicos
GROUP BY especialidade
HAVING quantidade > 3;

-- Junções entre Tabelas:
-- Recupere o nome dos clientes e seus respectivos veículos.
SELECT c.nome, v.modelo
FROM Clientes c
JOIN Veiculos v ON c.id = v.cliente_id;

