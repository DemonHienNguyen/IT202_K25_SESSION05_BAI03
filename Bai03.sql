-- Bài 03
-- KHỞI TẠO DỮ LIỆU VÀ BẢNG DRIVERS

CREATE DATABASE `Bai04`;
USE `Bai04`;

CREATE TABLE `Drivers` (
	`Driver_Id` INT PRIMARY KEY AUTO_INCREMENT,
    `Driver_Name` VARCHAR(150) NOT NULL,
    `Status` VARCHAR(100) NOT NULL,
    `Trust_Score` INT NOT NULL CHECK (`Trust_Score` > 0),
    `distance_km` float NOT NULL
);
-- nếu admin nhập minScore là âm thì sẽ không được cho nhập vào và phải nhập số dương

INSERT INTO `Drivers` (`Driver_Name`, `Status`, `Trust_Score`, `distance_km`)
VALUES
	('Nguyễn Văn A', 'AVAILABLE', 50, 20.53),
    ('Lê Thị B', 'UNABLE', 80, 15.60),
    ('Trần Thị D', 'AVAILABLE', 87, 17.80),
    ('Mai Thị Kim Phượng', 'AVAILABLE', 100, 8.10),
    ('Nguyễn Văn Chiến', 'AVAILABLE', 100, 8.10);

SELECT `Driver_Name`, `Status`, `distance_km`, `Trust_Score`
FROM `drivers`
WHERE `Status` <> 'UNABLE'
ORDER BY `distance_km` ASC, `Trust_Score` DESC;
