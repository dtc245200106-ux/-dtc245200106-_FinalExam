<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách sản phẩm</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div class="container">
        <h1>📋 Danh sách sản phẩm</h1>

        <div class="actions">
            <a href="${pageContext.request.contextPath}/products/add" class="btn btn-success">
                ➕ Thêm sản phẩm mới
            </a>
        </div>

        <table class="product-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="p" items="${products}">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td>${p.price} VNĐ</td>
                        <td>${p.quantity}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/products/edit?id=${p.id}"
                               class="btn btn-warning btn-sm">✏️ Sửa</a>

                            <a href="${pageContext.request.contextPath}/products/delete?id=${p.id}"
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này?');">
                               🗑️ Xóa
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>