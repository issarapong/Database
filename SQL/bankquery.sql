-- Syntax *
-- SELECT * FROM cc14_banking.DEPARTMENT; --เอาข้อมูลมาทุกคอลัม
-- SELECT name FROM DEPARTMENT. -- เอาข้อมูลเฉพาะ คอลัม   name

-- SELECT * FROM branch  --เอาข้อมูลมาทุกคอลัม
-- SELECT address, city FROM branch. -- เลือกเฉพาะ คอลัม

-- Syntax WHERE
-- SELECT * FROM branch WHERE city = "Salem" -- เลือกมาทั้งหมดแต่เฉพาะเพาะเมือง Salem
-- SELECT * FROM branch WHERE branch_id > 1 -- เลือกมาเฉพาะ Branch_id > 1

-- SELECT * FROM branch WHERE state = 'MA' OR 'NH'   -- ใช้ OR เป็น เงื่อนไข
-- SELECT * FROM branch WHERE state IN ('MA','NH')  -- ผลลัพธ์ เหมือนก่อนหน้า แต่วิธีการเขียนไม่เหมือนกัน เขียนแบบก่อนหน้าจะยาวกว่า
-- SELECT * FROM account WHERE  open_branch_id = 2 AND product_cd = "SAV" -- หา สาขาที่ 2 ประเภท Savinng

-- Syntax ASC/DESC (Sorting)
-- SELECT * FROM account ORDER BY avail_balance  ASC -- เรียงข้อมูล แยกโดย ASC = น้อยไปมาก (เป็น Default ไม่ไส่กก็  ASC )/ DESC
-- SELECT * FROM account ORDER BY avail_balance  DESC, pending_balance -- ถ้าค่าเท่ากัน ให้เช็ค pending_balance โดยเทียบ ใน ลักษณะ ASC โดย Default
-- SELECT * FROM account WHERE open_branch_id = 1 ORDER BY avail_balance DESC  -- หา open_brach_id  ที่กำหนดก่อนแล้วค่อย ORDER BY

-- Syntax DISTINT
-- SELECT DISTINCT cust_id FROM account  -- DISCTINCT คือ เลือกข้อมูลที่แตกต่างกันออกมา Group รวม ให้เหลือบรรทัดเดียว
-- SELECT DISTINCT cust_id FROM account WHERE open_branch_id = 1  ORDER By cust_id DESC --  เลือกข้อมูลที่แตกต่างกันออกมา Group รวม ที่ open_branch_id =1 โดยเรียงจาก มากไปน้อย

-- Syntax LIMIT
-- SELECT * FROM account LIMIT 5 -- เรียกข้อมูลโดย ลิมิตข้อมูลไว้แค่ 5 อัน
-- SELECT * FROM account ORDER BY avail_balance DESC LIMIT 5  -- เลือกข้อมูลจาก Account และเรียงข้อมูล จากมากไปน้อยและเอามา 5 อัน

-- Syntax OFFSET
-- SELECT * FROM account ORDER BY avail_balance DESC LIMIT 5 OFFSET 5 -- OFFSET ข้าม 5 คนแรกไป แล้วเอามา 5 อัน
-- SELECT * FROM account ORDER BY avail_balance DESC LIMIT 4  OFFSET 6
-- SELECT * FROM account ORDER BY avail_balance DESC LIMIT 6,4 -- จะได้เท่ากับข้างบน ที่มี OFFSET (เรียกโดยไม่ต้องมี OFFSET)

-- Syntax LIKE
-- SELECT * FROM individual WHERE first_name LIKE 'J%'  -- หาคนที่มีชื่อ J ขึ้นข้างหน้า
-- SELECT * FROM individual WHERE last_name LIKE '%y'  -- หาคนที่มีชื่อ y ลงท้าย

-- SELECT * FROM individual WHERE first_name LIKE '____' -- หาคนที่มีชื่อจริง 4 ตัวอักษร ____

SELECT * FROM individual WHERE first_name LIKE '_o%' -- หาคนที่ชือ่ตัวแรกเป็นอะไรก็ได้ ตัวที่ 2 เป็น ตัว o  ส่วนข้างหลังจะเป็นอะไรก็ได้ มีกี่ตัวก็ได้

