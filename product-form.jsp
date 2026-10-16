<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>${empty product ? 'Thêm' : 'Sửa'} sản phẩm</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div class="container">
        <h1>${empty product ? '➕ Thêm sản phẩm mới' : '✏️ Sửa sản phẩm'}</h1>

        <form action="${pageContext.request.contextPath}/products/${empty product ? 'add' : 'edit'}"
              method="post" class="product-form">

            <c:if test="${not empty product}">
                <input type="hidden" name="id" value="${product.id}">
            </c:if>

            <div class="form-group">
                <label>Tên sản phẩm <span class="required">*</span></label>
                <input type="text" name="name" required
                       value="${not empty product ? product.name : ''}">
            </div>

            <div class="form-group">
                <label>Giá <span class="required">*</span></label>
                <input type="number" name="price" step="0.01" min="0" required
                       value="${not empty product ? product.price : ''}">
            </div>

            <div class="form-group">
                <label>Số lượng <span class="required">*</span></label>
                <input type="number" name="quantity" min="0" required
                       value="${not empty product ? product.quantity : ''}">
            </div>

            <div class="form-actions">
                <button type="submit" class="btn btn-primary">
                    💾 ${empty product ? 'Thêm mới' : 'Cập nhật'}
                </button>
                <a href="${pageContext.request.contextPath}/products" class="btn btn-secondary">
                    ❌ Hủy bỏ
                </a>
            </div>
        </form>
    </div>
</body>
</html>