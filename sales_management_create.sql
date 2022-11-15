CREATE TABLE Employee (
    employee_id int NOT NULL,
    name varchar(30) NOT NULL,
    role varchar(30) NOT NULL,
    contact varchar(10) NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (employee_id)
);

CREATE TABLE Product (
    product_id int NOT NULL,
    name varchar(30) NOT NULL,
    description varchar(200) NOT NULL,
    CONSTRAINT Product_pk PRIMARY KEY (product_id)
);

CREATE TABLE Raw_Material (
    material_id int NOT NULL,
    name varchar(30) NOT NULL,
    product_id int NOT NULL,
    CONSTRAINT Raw_Material_pk PRIMARY KEY (material_id)
);


CREATE TABLE Sales (
    sales_id int NOT NULL,
    product_id int NOT NULL,
    from_date Varchar(10) NOT NULL,
    to_date Varchar(10) NOT NULL,
    CONSTRAINT Sales_pk PRIMARY KEY (sales_id)
);


CREATE TABLE Team (
    team_id int NOT NULL,
    employee_id int NOT NULL,
    product_id int NOT NULL,
    CONSTRAINT Team_pk PRIMARY KEY (team_id)
);


ALTER TABLE Raw_Material ADD CONSTRAINT Raw_Material_Product FOREIGN KEY Raw_Material_Product (product_id)
    REFERENCES Product (product_id);


ALTER TABLE Sales ADD CONSTRAINT Sales_Product FOREIGN KEY Sales_Product (product_id)
    REFERENCES Product (product_id);

ALTER TABLE Team ADD CONSTRAINT Team_Employee FOREIGN KEY Team_Employee (employee_id)
    REFERENCES Employee (employee_id);


ALTER TABLE Team ADD CONSTRAINT Team_Product FOREIGN KEY Team_Product (product_id)
    REFERENCES Product (product_id);

