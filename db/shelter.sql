DROP TABLE animals;
DROP TABLE owner;

CREATE TABLE owner (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
);

CREATE TABLE animals (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  breed VARCHAR(255),
  ready_to_adopt boolean,
  admission_date VARCHAR(255),
  owner_id SERIAL4 REFERENCES owner(id) ON DELETE CASCADE,
);
