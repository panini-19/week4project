INSERT INTO staff(
    staff_id,
    full_name,
    phone_numb
)VALUES(
    123456,
    'Dylan Katina',
    '111-111-1111'
),(
    678901,
    'Christian Sachs',
    '222-222-2222'
),(
    98765,
    'Brendan Carlson',
    '333-333-3333'
);

INSERT INTO customer(
    customer_id,
    full_name,
    address,
    phone_numb
)VALUES(
    555555,
    'Anthony Ni',
    '123 Thieves Circle',
    '444-444-4444'
),(
    666666,
    'Jack Buck',
    '321 Thieves Circle',
    '555-555-5555'
);

INSERT INTO services(
    mechanic_id,
    date_serviced,
    type_of_service
)VALUES(
    298648, 
    '09-23-23',
    'Transmission & Tire Rotation'
),(
    421931,
    '11-03-23',
    'Check Engine Light On'
);

INSERT INTO service_records(
    car_serial_numb,
    mechanic_id,
    customer_id,
    service_ticket
)VALUES(
    239583295,
    298648,
    555555,
    89
),(
    130428148,
    421931,
    666666,
    126
),(
    958294012,
    298648,
    555555,
    54
);

INSERT INTO sales(
    invoice_id,
    staff_id,
    customer_id
)VALUES(
    240912012,
    123456,
    555555
),(
    672184941,
    123456,
    555555
),(
    123129443,
    678901,
    666666
),(
    232923220,
    98765,
    666666
);

INSERT INTO sales_records(
    model,
    year,
    color,
    invoice_id,
    customer_id,
    staff_id
)VALUES(
    'Elantra N',
    2023,
    'Blue',
    240912012,
    555555,
    123456
),(
    'BMW M5 Competition',
    2023,
    'Black',
    672184941,
    555555,
    123456
),(
    'Audi R8',
    2022,
    'White',
    123129443,
    666666,
    678901
),(
    'Porsche 911 GT3 RS',
    2023,
    'Red',
    232923220,
    666666,
    678901
);
