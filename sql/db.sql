CREATE TABLE IF NOT EXISTS brands (
    id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name text NOT NULL CHECK (name <> ''),
    priority integer NOT NULL,
    description text,
    premiere date NOT NULL
);

CREATE TABLE IF NOT EXISTS heroes (
    id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name text NOT NULL CHECK (name <> ''),
    skills text,
    state BOOLEAN,
    brandID INTEGER REFERENCES brands(id)
);

INSERT INTO brands (name, priority, description, premiere) VALUES ('MARVEL', 1, 'Stan lee', '1999-01-01');
INSERT INTO brands (name, priority, description, premiere) VALUES ('DC', 1, 'Jim Lee', '2000-12-12');

INSERT INTO heroes (name, skills, state, brandID) VALUES ('IRON MAN', 'TECH', true, 1);
INSERT INTO heroes (name, skills, state, brandID) VALUES ('THOR', 'TRUENO', true, 1);
INSERT INTO heroes (name, skills, state, brandID) VALUES ('C AMERICAN', 'FUERZa', true, 1);
INSERT INTO heroes (name, skills, state, brandID) VALUES ('SPIDERMAN', 'ARAÑA', true, 1);
INSERT INTO heroes (name, skills, state, brandID) VALUES ('HULK', 'IRA', true, 1);
INSERT INTO heroes (name, skills, state, brandID) VALUES ('DEADPOOL', 'RISA', true, 1);
INSERT INTO heroes (name, skills, state, brandID) VALUES ('THANOS', 'DUMMIE', true, 1);

INSERT INTO heroes (name, skills, state, brandID) VALUES ('SUPERMAN', 'FUERZA', true, 2);
INSERT INTO heroes (name, skills, state, brandID) VALUES ('LINTERNA VERDE', 'ANILLO', true, 2);
INSERT INTO heroes (name, skills, state, brandID) VALUES ('AQUAMAN', 'AGUA', true, 2);
INSERT INTO heroes (name, skills, state, brandID) VALUES ('FLASH', 'VELOCIDAD', true, 2);
INSERT INTO heroes (name, skills, state, brandID) VALUES ('BATMAN', 'DARK', true, 2);
INSERT INTO heroes (name, skills, state, brandID) VALUES ('M MARAVILLA', 'FUERZA', true, 2);