-- Cria o esquema e tabela
CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    curso VARCHAR(50)
);

-- Insere dados de exemplo
INSERT INTO alunos (nome, idade, curso) VALUES
('Alice', 22, 'Matemática'),
('Bob', 24, 'Física'),
('Carlos', 21, 'Química'),
('Diana', 23, 'Biologia'),
('Eva', 20, 'Matemática');

-- Criação de um usuário com permissões para o pgAdmin
CREATE USER aluno_user WITH PASSWORD 'password';
GRANT ALL PRIVILEGES ON TABLE alunos TO aluno_user;
