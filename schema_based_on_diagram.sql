CREATE TABLE patients (
  id SERIAL,
  name varchar(100) NOT NULL,
  date_of_birth date NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE medical_histories (
  id SERIAL,
  addmited_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  patient_id INT REFERENCES patients(id) NOT NULL,
  status varchar(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE invoices (
  id SERIAL,
  total_amount DECIMAL(10,2) NOT NULL,
  generated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  payed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  medical_history_id INT REFERENCES medical_histories(id) NOT NULL,
  PRIMARY KEY(id)
);