INSERT INTO account (first_name, last_name, email, password, account_type)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n', 'Customer');


UPDATE account
SET account_type = 'Admin'
WHERE first_name = 'Tony' AND last_name = 'Stark';

DELETE FROM account
WHERE first_name = 'Tony' AND last_name = 'Stark';

UPDATE "schema_name"."inventory"
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';


SELECT i.inv_make, i.inv_model, c.class_name
FROM inventory AS i
INNER JOIN classification AS c ON i.inv_class_id = c.class_id
WHERE c.class_name = 'Sport';

UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');
