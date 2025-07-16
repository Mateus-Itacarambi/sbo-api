# 🎓 Sistema de Busca de Orientadores - Backend

Este é o backend do sistema web desenvolvido como parte do TCC no Instituto Federal de Brasília. A API permite o gerenciamento de usuários, temas de orientação e solicitações entre estudantes e professores.

🔗 **[Acesse o repositório do frontend aqui](https://github.com/Mateus-Itacarambi/sbo-app)**

---

## 📌 Principais Funcionalidades

- Autenticação e autorização com **JWT**
- Cadastro e gerenciamento de **estudantes, professores e administradores**
- Registro e listagem de **temas de orientação**
- Envio e controle de **solicitações de orientação**
- Notificações e atualização de status
- API RESTful com CORS configurado para consumo pelo frontend

---

## 🚀 Tecnologias Utilizadas

- [Spring Boot 3](https://spring.io/projects/spring-boot)
- [Spring Security](https://spring.io/projects/spring-security)
- [JWT (Auth0 Java JWT)](https://github.com/auth0/java-jwt)
- [MySQL](https://www.mysql.com/)
- [JPA / Hibernate](https://hibernate.org/)
- [Lombok](https://projectlombok.org/)

---

## 🛠️ Requisitos

- Java 17 ou superior
- Maven
- MySQL rodando localmente
- IDE recomendada: IntelliJ

---

## 🧪 Como rodar o projeto localmente

```bash
# Clone o repositório
git clone https://github.com/Mateus-Itacarambi/sbo-api.git

# Acesse a pasta do projeto
cd sbo-api

# Configure o banco de dados no application.properties
# Exemplo:
spring.datasource.url=jdbc:mysql://localhost:3306/sbo
spring.datasource.username=root
spring.datasource.password=suasenha

# Rode o projeto com sua IDE ou com o Maven
./mvnw spring-boot:run
