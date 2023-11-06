CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    phone_numb VARCHAR
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY, 
    full_name VARCHAR,
    address VARCHAR,
    phone_numb VARCHAR
);

CREATE TABLE services(
    mechanic_id SERIAL PRIMARY KEY,
    date_serviced VARCHAR,
    type_of_service VARCHAR
);

CREATE TABLE service_records(
    car_serial_numb SERIAL PRIMARY KEY,
    mechanic_id SERIAL,
    FOREIGN KEY (mechanic_id) REFERENCES services(mechanic_id),
    customer_id SERIAL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    service_ticket SERIAL
);

CREATE TABLE sales(
    invoice_id SERIAL PRIMARY KEY,
    staff_id SERIAL,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    customer_id SERIAL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);


CREATE TABLE sales_records(
    model VARCHAR,
    year VARCHAR,
    color VARCHAR,
    invoice_id SERIAL,
    FOREIGN KEY (invoice_id) REFERENCES sales(invoice_id),
    customer_id SERIAL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    staff_id SERIAL,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
    );