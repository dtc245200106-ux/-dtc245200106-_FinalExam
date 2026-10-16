-- ============================================
-- CƠ SỞ DỮ LIỆU QUẢN LÝ SẢN PHẨM
-- ============================================

DROP DATABASE IF EXISTS product_db;
CREATE DATABASE product_db
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
USE product_db;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(15, 2) NOT NULL,
    quantity INT NOT NULL DEFAULT 0
);

-- Dữ liệu mẫu
INSERT INTO products (name, price, quantity) VALUES
    ('iPhone 15 Pro Max', 30000000, 10),
    ('Samsung Galaxy S24 Ultra', 28000000, 15),
    ('MacBook Air M3', 32000000, 5),
    ('Tai nghe AirPods Pro 2', 6000000, 25),
    ('iPad Pro 11 inch', 22000000, 8);

-- Kiểm tra
SELECT * FROM products;