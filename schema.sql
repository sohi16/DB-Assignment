-- Create Product_Category table
CREATE TABLE product_category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product_Inventory table
CREATE TABLE product_inventory (
    id INT PRIMARY KEY,
    quantity INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Discount table
CREATE TABLE discount (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    discount_percent DECIMAL,
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product table with foreign key references
CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    sku VARCHAR(255),
    category_id INT,
    inventory_id INT,
    price DECIMAL,
    discount_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES product_category(id),
    FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
    FOREIGN KEY (discount_id) REFERENCES discount(id)
);
