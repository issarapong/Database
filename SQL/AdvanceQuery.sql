-- use CC14 -- banking
-- เปลียนชื่อ
-- SELECT account_id AS aid, avail_balance AS balance FROM account;  --  ตั้งชื่อไหม่ เพื่อใช้เฉพาะกิจ
-- SELECT account_id aid, avail_balance  balance FROM account. -- ให้ผลลัพธิ์ เหมือนกับ ด้านบน


-- SELECT COUNT(*) FROM account -- ดูชื่อที่แตกต่างกันว่ามีกี่บัญชี (นับจำนวน /24)
-- SELECT COUNT(*) total_account FROM account  -- นับจำนวนแล้วตั้งชื่อไหม่

-- SELECT COUNT(account_id) total_account FROM account -- นับจาก คอลัม account_id (แต่ถ้า acount_id นั้น เป็น Null จะไม่ถูกนับ)
-- SELECT COUNT(close_date) total_account FROM account. --นับจาก คอลัม close_date จะมีค่าเท่ากับ 0 เพราะเป็น null


-- SELECT COUNT(DISTINCT cust_id) total_cust FROM account -- หาจำนวนลูกค้าสุทธิที่เปิดบัญชี โดย กรุ๊ปรวมกัน

-- SELECT SUM(avail_balance) total_balance FROM account  -- หาจำนวนรวม ของ Avail_balance

-- Syntax Sum Sum by Expression คำนวนก่อน

-- SELECT SUM(pending_blance-avail_balance) total_balance FROM account -- เอา pending_blance-avail_balance ได้เท่าไหร่ ถึงไปรวม โดยลบ แยก แต่ละอันก่อน

-- SELECT AVG(avail_balance) FROM account -- หาค่าเฉลี่ย
 
-- SELECT AVG(avail_balance) FROM account  WHERE avail_balance >= 5000 -- เอาค่าที่มากกว่า 5000 มา เฉลี่ย
 
-- SELECT MAX(avail_balance) FROM account -- หาบัญชีมากสุด
 
-- SELECT MAX(avail_balance) FROM account  WHERE avail_balance < 10000 -- หาบัญชีมากสุด แต่น้อยกว่า 10000

-- SELECT MIN(avail_balance) FROM account --หาบัญชีน้อยสุด

-- SELECT CONCAT_WS('-', first_name, last_name) fullname FROM individual  -- เอาข้อมูล 2 คอลัมมารวมกัน โดย seperate by '-'


--  Syntax GroupBy จัดกลุ่มข้อมูลตามคอลัมที่เราต้องการ  Group by อะไร ก็จัดกลุ่มข้อมูลนั้นออกมา


-- SELECT cust_id FROM account GROUP BY cust_id  -- จัดกลุ่มคล้่าย DISTINCT  แต่ ใช้ร่วมกับ aggreate function แต่ละกลุ่มมา
-- SELECT cust_id, COUNT(avail_balance) total FROM account GROUP BY cust_id  -- จัดกลุ่มคล้่าย DISTINCT  แต่พอได้กลุ่ม แล้วนับมา count ต่อ เพื่อนับจำนวนแถวที่ group ไว้มาไห้

-- SELECT cust_id, COUNT(avail_balance) total, SUM(avail_balance) sum FROM account GROUP BY cust_id  -- จัดกลุ่มคล้่าย DISTINCT  แต่พอได้กลุ่ม แล้วนับมา count ต่อ เพื่อนับจำนวนแถวที่ group ไว้มาไห้ และ sum รวมแต่ละแถว

-- SELECT cust_id, COUNT(avail_balance) total, SUM(avail_balance) sum FROM account  WHERE cust_id > 5 GROUP BY cust_id   -- ใช้ WHERE เพื่อ fillter ก่อน group

-- SELECT cust_id, COUNT(avail_balance) total, SUM(avail_balance) sum FROM account  WHERE cust_id > 5 GROUP BY cust_id   
-- SELECT cust_id, COUNT(avail_balance) total, SUM(avail_balance) sum FROM account  WHERE cust_id > 5 GROUP BY cust_id  ORDER BY total DESC -- หาคนที่เปิดบัญชีมากที่สุก
-- SELECT cust_id, COUNT(avail_balance) total, SUM(avail_balance) sum FROM account  WHERE cust_id > 5 GROUP BY cust_id  ORDER BY total DESC  LIMIT 5 -- เอาเฉพาะ 5 คนแรกโดยเพิ่ม limit


-- Syntaxt Having เพื่อ fillter แทน WHERE หลังจากคำนวนแล้ว WHERE จะใช้ก่อน คำนวน

-- SELECT cust_id, SUM(avail_balance) sum  FROM account GROUP BY cust_id  -- ex
SELECT cust_id, SUM(avail_balance) sum  FROM account GROUP BY cust_id HAVING sum > 10000  --  ใช้ having เพื่อ fillter ผลหลังจาก คำนวนแล้ว 







