CREATE DATABASE musicais;

CREATE TABLE broadway(
    id SERIAL PRIMARY KEY NOT NULL,
    nome TEXT NOT NULL,
    dia DATE,
    indicacao TEXT NOT NULL
) 

INSERT INTO broadway (nome, dia, indicacao)
VALUES 
    ('Hamilton', '2026-10-19', '+10'),
    ('Wicked', '2026-07-20', '+8'),
    ('Chicago', '2026-08-16', '+15');

SELECT * FROM broadway;

UPDATE  broadway SET indicacao = '+13' WHERE id =3;

SELECT * FROM broadway;