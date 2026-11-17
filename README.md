# gymOS

Sistema de gerenciamento de academia desenvolvido como Projeto Final para a disciplina de **Programação Orientada a Objetos**, da Fatec Araçatuba.

O gymOS tem como objetivo organizar informações relacionadas aos alunos, matrículas, planos e modalidades de uma academia, centralizando esses dados em um sistema integrado a um banco de dados.

## Funcionalidades

Com base na estrutura do projeto e no banco de dados disponibilizado, o sistema contempla:

- **Alunos:** armazenamento de informações cadastrais, como nome, CPF, telefone, e-mail e data de nascimento.
- **Matrículas:** registro de matrículas, relacionando alunos, planos e modalidades.
- **Planos:** organização dos planos oferecidos pela academia, com valores e duração em meses.
- **Modalidades:** cadastro e descrição das atividades disponíveis, como musculação, Crossfit, Pilates, Spinning, Zumba, Funcional, Yoga e Muay Thai.
- **Controle de vigência:** armazenamento das datas de início e término das matrículas, além de seu status.

## Tecnologias e ferramentas

- Java — aplicação do projeto.
- MySQL / MariaDB — banco de dados.
- SQL — criação e manipulação da estrutura e dos registros.

## Estrutura do repositório

```text
gymOS/
│
├── SQL/
│   └── banco_gymos.sql
│
├── gymOS/
│   └── GymOS.zip
│
└── README.md
```

## Banco de dados

O projeto disponibiliza o script `SQL/banco_gymos.sql`, responsável pela criação do banco de dados `banco_gymos`.

O banco possui quatro tabelas principais:

| Tabela | Descrição |
|---|---|
| `aluno` | Dados cadastrais dos alunos |
| `matricula` | Informações das matrículas e seus vínculos |
| `plano` | Planos, valores e duração |
| `modalidade` | Modalidades e suas descrições |

### Como configurar

1. Clone o repositório:

   ```bash
   git clone https://github.com/guilhermehrpaino/gymOS.git
   ```

2. Abra o MySQL Workbench ou outra ferramenta compatível com MySQL/MariaDB.

3. Execute o script:

   ```text
   SQL/banco_gymos.sql
   ```

4. Extraia o arquivo `gymOS/GymOS.zip` para acessar os arquivos da aplicação.

5. Configure a conexão da aplicação com o banco de dados, conforme as configurações do ambiente local.

## Objetivo acadêmico

O gymOS foi desenvolvido como projeto final da disciplina de Programação Orientada a Objetos, com o propósito de aplicar conceitos de desenvolvimento de software e organização de dados em um cenário prático de gerenciamento de academia.

---

**Desenvolvido por Guilherme Henrique**

Fatec Araçatuba — Análise e Desenvolvimento de Sistemas
