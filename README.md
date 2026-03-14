# Projeto AdaTech+Claro DiversaTech

![Java](https://img.shields.io/badge/Java-17-orange?logo=openjdk)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.7-brightgreen?logo=springboot)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13-blue?logo=postgresql)
![Docker](https://img.shields.io/badge/Docker-Enabled-blue?logo=docker)
![Status](https://img.shields.io/badge/Status-Pronto%20para%20Deploy-green)

---

## Introducao

Este projeto implementa um **sistema de registro de tickets para problemas de internet**, desenvolvido em **Java com Spring Boot** e **PostgreSQL**, como parte do programa **AdaTech + Claro DiversaTech**.

O objetivo e permitir que clientes registrem ocorrencias de falhas de conexao, acompanhem o status das solicitacoes e armazenem informacoes relevantes do incidente.

O sistema esta **containerizado com Docker** e pronto para execucao em qualquer ambiente.

---

## Como Executar com Docker

### Pre-requisitos
- Docker
- Docker Compose

### Execucao
```bash
# Clone o repositorio
git clone https://github.com/LORRAN-DEV/claro-project.git
cd claro-project

# Execute com Docker Compose
docker-compose up --build
```

### Acessos
| Servico           | URL                      |
|-------------------|--------------------------|
| Backend API       | http://localhost:8080     |
| Banco PostgreSQL  | localhost:5432            |

---

## Arquitetura do Sistema

### Estrutura do Projeto
```
claro-project/
└── backend/
    ├── src/main/java/com/example/claro/
    │   ├── ClaroApplication.java        # Entry point
    │   ├── controller/
    │   │   ├── UserController.java       # Endpoints de usuarios
    │   │   └── SolicitacaoController.java # Endpoints de tickets
    │   ├── model/
    │   │   ├── User.java                 # Entidade usuario
    │   │   ├── Solicitacao.java          # Entidade solicitacao
    │   │   └── StatusSolicitacao.java    # Enum de status
    │   ├── repository/
    │   │   ├── UserRepository.java
    │   │   └── SolicitacaoRepository.java
    │   └── service/
    │       ├── UserService.java
    │       └── SolicitacaoService.java
    ├── projetoclaro_dump.sql             # Dump com dados de exemplo
    ├── Dockerfile
    └── pom.xml
```

### Componentes
| Camada       | Tecnologia                   |
|--------------|------------------------------|
| Backend      | Spring Boot + JPA/Hibernate  |
| Banco        | PostgreSQL 13                |
| Container    | Docker                       |

### Padrao Arquitetural
O projeto segue a arquitetura em **3 camadas**:
1. **Controller** — Recebe requisicoes HTTP (REST)
2. **Service** — Logica de negocio
3. **Repository** — Acesso ao banco via Spring Data JPA

---

## Endpoints da API

### Usuarios
| Metodo   | Endpoint            | Descricao                |
|----------|---------------------|--------------------------|
| `GET`    | `/api/users`        | Lista todos os usuarios  |
| `POST`   | `/api/users`        | Cria um novo usuario     |
| `GET`    | `/api/users/{id}`   | Busca usuario por ID     |
| `DELETE` | `/api/users/{id}`   | Remove usuario           |

### Solicitacoes (Tickets)
| Metodo   | Endpoint                              | Descricao                    |
|----------|---------------------------------------|------------------------------|
| `GET`    | `/api/solicitacoes`                   | Lista todas as solicitacoes  |
| `POST`   | `/api/solicitacoes`                   | Cria nova solicitacao        |
| `GET`    | `/api/solicitacoes/{id}`              | Busca por ID                 |
| `GET`    | `/api/solicitacoes/status/{status}`   | Filtra por status            |
| `GET`    | `/api/solicitacoes/usuario/{userId}`  | Filtra por usuario           |
| `PUT`    | `/api/solicitacoes/{id}/status`       | Atualiza status              |
| `DELETE` | `/api/solicitacoes/{id}`              | Remove solicitacao           |

### Status Disponiveis
| Status          | Descricao        |
|-----------------|------------------|
| `PENDENTE`      | Aguardando       |
| `EM_ANDAMENTO`  | Em atendimento   |
| `RESOLVIDO`     | Finalizado       |
| `CANCELADO`     | Cancelado        |

---

## Modelo de Dados

### User
| Campo              | Tipo     | Descricao                    |
|--------------------|----------|------------------------------|
| `id`               | Long     | Chave primaria (auto)        |
| `nome`             | String   | Nome do cliente              |
| `cpf`              | String   | CPF do cliente               |
| `descricaoProblema`| String   | Descricao do problema        |

### Solicitacao
| Campo              | Tipo              | Descricao                    |
|--------------------|-------------------|------------------------------|
| `id`               | Long              | Chave primaria (auto)        |
| `user`             | User (FK)         | Relacionamento Many-to-One   |
| `descricao`        | String            | Descricao da solicitacao     |
| `status`           | StatusSolicitacao | Status atual do ticket       |
| `dataCriacao`      | LocalDateTime     | Data de criacao              |
| `dataAtualizacao`  | LocalDateTime     | Ultima atualizacao           |

---

## Configuracao do Banco

| Propriedade  | Valor           |
|--------------|-----------------|
| Database     | `claro_db`      |
| Username     | `claro_user`    |
| Password     | `claro_password`|
| Port         | `5432`          |
| DDL Auto     | `update`        |

O Hibernate cria/atualiza as tabelas automaticamente. O arquivo `projetoclaro_dump.sql` contem **100 tickets de exemplo** de 20 usuarios diferentes.

---

## Testando a API

### Criar Usuario
```bash
curl -X POST http://localhost:8080/api/users \
  -H "Content-Type: application/json" \
  -d '{
    "nome": "Joao Silva",
    "cpf": "12345678901",
    "descricaoProblema": "Internet lenta"
  }'
```

### Criar Solicitacao
```bash
curl -X POST http://localhost:8080/api/solicitacoes \
  -H "Content-Type: application/json" \
  -d '{
    "user": { "id": 1 },
    "descricao": "Queda constante de conexao"
  }'
```

### Listar Solicitacoes por Status
```bash
curl http://localhost:8080/api/solicitacoes/status/PENDENTE
```

---

## Desenvolvimento Local

```bash
# Compilar
cd backend
mvn clean package

# Executar
mvn spring-boot:run
```

### Variaveis de Ambiente
```bash
SPRING_DATASOURCE_URL=jdbc:postgresql://db:5432/claro_db
SPRING_DATASOURCE_USERNAME=claro_user
SPRING_DATASOURCE_PASSWORD=claro_password
```

---

## Funcionalidades

- CRUD completo de usuarios
- CRUD completo de solicitacoes/tickets
- Controle de status com workflow (Pendente -> Em Andamento -> Resolvido/Cancelado)
- Timestamps automaticos de criacao e atualizacao
- Containerizacao com Docker
- Banco PostgreSQL com dados de exemplo
- API REST documentada
- CORS habilitado para integracao com frontends
