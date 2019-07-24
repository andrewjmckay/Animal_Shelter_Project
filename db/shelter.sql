DROP TABLE animals;
DROP TABLE owners;

CREATE TABLE owners (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE animals (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  breed VARCHAR(255),
  ready_for_adoption boolean,
  admission_date VARCHAR(255),
  owner_id INT4 REFERENCES owners(id) ON DELETE CASCADE
);
