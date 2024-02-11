INSERT INTO account
	(account_firstname, account_lastname, account_email, account_password)
VALUES
	('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n')

UPDATE account
SET account_type = 'Admin'

DELETE
FROM account
WHERE account_id = 1

UPDATE inventory
SET inv_description = 'Do you have 6 kids and like to go offroading? The Hummer gives you a huge interior with an engine to get you out of any muddy or rocky situation.'
WHERE inv_id = 10

SELECT 
	inv_make,
	inv_model
FROM inventory AS i
JOIN classification AS c
ON i.classification_id = c.classification_id
WHERE c.classification_name = 'Sport';

UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images', '/images/vehicles/')
