SELECT * FROM Territory;
SELECT * FROM Supplier;
SELECT * FROM Supplier
LIMIT 10;
UPDATE Supplier
SET email = "Skincare2@gmail.com"
WHERE supplierID = 1;

UPDATE Supplier
SET email = CASE
WHEN supplierID = 2 THEN "Muazu4@gmail.com"
WHEN supplierID = 3 THEN "Dino09@gmail.com"
WHEN supplierID = 4 THEN "Warehouse35@gmail.com"
WHEN supplierID = 5 THEN "Phoneboots90@gmail.com"
WHEN supplierID = 6 THEN "Testimony67@gmail.com"
WHEN supplierID = 7 THEN "Valuesmode7@gmail.com"
WHEN supplierID = 8 THEN "Billing5@gmail.com"
WHEN supplierID = 9 THEN "Venture24@gmail.com"
WHEN supplierID = 10 THEN "Ijmb4@gmail.com"
END
WHERE SupplierID in (2,3,4,5,6,7,8,9,10);

