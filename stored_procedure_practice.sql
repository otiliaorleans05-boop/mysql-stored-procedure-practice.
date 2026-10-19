-- 1. Tạo mới Stored Procedure lấy toàn bộ danh sách khách hàng
DELIMITER //

DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers;
END //

DELIMITER ;

-- Gọi thực thi Stored Procedure vừa tạo
CALL findAllCustomers();


-- 2. Thay đổi nội dung Stored Procedure (Xóa và tạo lại)
-- Cập nhật để chỉ lấy thông tin khách hàng có mã số 175
DELIMITER //

DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers WHERE customerNumber = 175;
END //

DELIMITER ;

-- Gọi thực thi lại để kiểm tra kết quả mới
CALL findAllCustomers();