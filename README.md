# dio-mysql-desafio-oficina

# Sistema de Controle de Ordens de Serviço - Oficina Mecânica

Este repositório contém o código-fonte para um sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica. O sistema é desenvolvido em SQL e pode ser utilizado para acompanhar os serviços prestados aos veículos dos clientes.

## Funcionalidades

O sistema inclui as seguintes funcionalidades:

- Registro de clientes e seus veículos.
- Atribuição de veículos a equipes de mecânicos.
- Criação de Ordens de Serviço (OS) para veículos.
- Cálculo do valor de cada serviço com base em uma tabela de referência de mão-de-obra.
- Inclusão de peças e seus valores nas Ordens de Serviço.
- Avaliação e execução dos serviços por equipes de mecânicos.

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

- Clientes
- Veículos
- Mecânicos
- OrdensDeServico
- Serviços
- Peças
- ServicosPorOS
- PecasPorOS

Consulte o arquivo [oficina.sql] para visualizar o esquema completo do banco de dados.

## Contribuições

Contribuições são bem-vindas! Se você encontrar problemas ou tiver ideias para melhorias, sinta-se à vontade para abrir uma issue ou enviar um pull request.
