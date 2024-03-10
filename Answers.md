# Database diagram answers

## 1. Relationship between "Product" and "Product_Category" entities:

The "Product" and "Product_Category" entities are related through a foreign key relationship. Specifically, the "Product" table has a column named `category_id` that is a foreign key referencing the `id` column in the "Product_Category" table. This indicates that each product in the "Product" table is associated with a specific category defined in the "Product_Category" table. This relationship allows for categorizing products and establishing a link between individual products and their corresponding categories.

## 2. Ensuring each product has a valid category assigned to it:

To ensure that each product in the "Product" table has a valid category assigned to it, you can set up a foreign key constraint between the `category_id` column in the "Product" table and the `id` column in the "Product_Category" table. Doing this will ensure that every value in the `category_id` column of the "Product" table must match a valid `id` in the "Product_Category" table.
As, in given diagram the "Product" table is already having a foreing key `category_id` will can have a valid category assigned for each product.
