
-- CREATE DATABASE 
-- CREATE DATABASE IF NOT EXISTS `codecamp`; 
-- DROP DATABASE IF EXISTS `codecamp`;
-- USE codecamp;

-- CREATE TABLE IF NOT EXISTS `users` (
--   username VARCHAR(10) NOT NULL,
--   password VARCHAR(255) NOT NULL
-- )

-- ค่า Constraint /PRIMARY KEY / UNIQUE ค่าห้ามซ้ำกัน / DEFAULT. /CHECK(price >0) ต้องมากกว่า 0 และติดลบ

-- CREATE TABLE IF NOT EXISTS `products` (
--    id INT  AUTO_INCREMENT PRIMARY KEY,
--    name VARCHAR(50) NOT NULL,
--    description TEXT(2000),
--    barcode VARCHAR(13) NOT NULL UNIQUE,
--    price DECIMAL(10, 2) NOT NULL CHECK(price >0),
--    discount FLOAT NOT NULL DEFAULT 0 
--    )
    
-- ALTER TABLE users ADD PRIMARY KEY (username);

 
  -- CREATE TABLE IF NOT EXISTS `orders` (
  --  id INT  AUTO_INCREMENT,
  --  user_id INT NOT NULL,
  --  product_id INT NOT NULL,
  --  quantity INT NOT NULL CHECK (quantity > 0),
  --  price DECIMAL(10,2) NOT NULL CHECK (price >0 ),
  --  PRIMARY KEY(id),
  --  FOREIGN KEY (user_id) REFERENCES users (id),
  --  FOREIGN KEY (product_id) REFERENCES products (id)
 -- )

 -- ALTER TABLE users ADD id INT AUTO_INCREMENT PRIMARY KEY;
 -- ALTER TABLE users DROP PRIMARY KEY;

-- DROP TABLE orders

-- DROP DATABASE codecamp;

-- INSERT DATA TO TABLE

-- INSERT INTO users (username, password) VALUES ('Johnwick', '123456')
-- SELECT * FROM users;
-- INSERT INTO users (username, password) 
-- VALUES ('kenu', '123456'), ('xxx', '123445')


-- INSERT INTO products (name, barcode, price, discount)
-- VALUES ('leo', 'xxx', 63, DEFAULT),
-- ('Budewiser', 'bbbb', 73, 0.05)

-- TEST INSERT CEHCK constraint price >0
-- INSERT INTO products (name, barcode, price, discount)
-- VALUES ('leo', 'xxx', -20, DEFAULT)


-- INSERT INTO  orders (user_id, product_id, quantity, price)
-- VALUES  (1, 1, 10, 59*20)


-- TEST INSERT CEHCK constraint user_id
-- INSERT INTO  orders (user_id, product_id, quantity, price)
-- VALUES  (200, 1, 10, 59*20)

-- UPDATE users SET password = '654321' WHERE id = 1;
-- MASS UPDATE
-- UPDATE users SET password = '654321' WHERE id > 2 AND username = "xxx";
-- DELETE FROM users WHERE username IN ('kenu', 'xxx')
DELETE FROM users WHERE username = 'xxx'