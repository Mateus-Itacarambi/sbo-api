CREATE TABLE IF NOT EXISTS usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    data_nascimento DATE NOT NULL,
    genero VARCHAR(45) NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    data_cadastro DATETIME NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    ativo BOOLEAN,
    cadastro_completo BOOLEAN,
    token_recuperacao VARCHAR(250),
    data_expiracao_token DATETIME
);

CREATE TABLE IF NOT EXISTS curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    sigla VARCHAR(200) NOT NULL,
    descricao TEXT NOT NULL,
    semestres INT NOT NULL,
    slug VARCHAR(255) NOT NULL,
    carga_horaria VARCHAR(50),
    duracao_max VARCHAR(50),
    modalidade VARCHAR(50),
    ativo BOOLEAN
);

CREATE TABLE IF NOT EXISTS professor (
    id_lattes VARCHAR(50) NOT NULL,
    disponibilidade VARCHAR(50) NOT NULL,
    id_usuario INT PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS tema (
    id_tema INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    palavras_chave VARCHAR(200) NOT NULL,
    status_tema VARCHAR(45) NOT NULL,
    data_cadastro DATETIME NOT NULL,
    data_atualizacao DATETIME NOT NULL,
    id_professor INT
);

CREATE TABLE IF NOT EXISTS estudante (
    semestre INT NOT NULL,
    matricula VARCHAR(45) NOT NULL,
    id_usuario INT PRIMARY KEY,
    id_curso INT NOT NULL,
    id_tema INT
);

CREATE TABLE IF NOT EXISTS formacao (
    id_formacao INT AUTO_INCREMENT PRIMARY KEY,
    curso VARCHAR(255) NOT NULL,
    instituicao VARCHAR(255) NOT NULL,
    titulo_tcc VARCHAR(255) NOT NULL,
    ano_inicio INT NOT NULL,
    ano_fim INT,
    id_professor INT NOT NULL
);

CREATE TABLE IF NOT EXISTS area_interesse (
    id_area_interesse INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ativo BOOLEAN
);

CREATE TABLE IF NOT EXISTS area_interesse_professor (
    id_area_interesse_professor INT AUTO_INCREMENT PRIMARY KEY,
    id_area_interesse INT NOT NULL,
    id_professor INT NOT NULL
);

CREATE TABLE IF NOT EXISTS curso_professor (
    id_curso_professor INT AUTO_INCREMENT PRIMARY KEY,
    id_curso INT NOT NULL,
    id_professor INT NOT NULL
);

CREATE TABLE IF NOT EXISTS solicitacao (
    id_solicitacao INT AUTO_INCREMENT PRIMARY KEY,
    status_solicitacao VARCHAR(20) NOT NULL,
    data_solicitacao DATETIME NOT NULL,
    data_conclusao_orientacao DATE DEFAULT NULL,
    data_atualizacao DATETIME,
    tipo VARCHAR(50) NOT NULL,
    id_tema INT NOT NULL,
    id_professor INT NOT NULL,
    id_estudante INT,
    motivo VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS notificacao (
    id_notificacao INT AUTO_INCREMENT PRIMARY KEY,
    mensagem VARCHAR(255) NOT NULL,
    lida BOOLEAN DEFAULT FALSE,
    data_criacao DATETIME NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    id_solicitante INT,
    id_destinatario INT NOT NULL,
    id_solicitacao INT
);
