<%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 7/11/2025
  Time: 8:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm sinh viên mới</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="container">
    <div class="header">
        <h1>Quản lý sinh viên</h1>
        <div class="nav-buttons">
            <a href="student-list.html" class="nav-btn">Danh sách</a>
            <a href="student-add.html" class="nav-btn active">Thêm mới</a>
            <a href="student-edit.html" class="nav-btn">Chỉnh sửa</a>
        </div>
    </div>

    <div class="content">
        <h2 class="form-title">Thêm sinh viên mới</h2>
        <form action="/students" method="post">
            <div class="form-group">
                <label for="name">Họ tên:</label>
                <input type="text" id="name" name="name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="phone">Số điện thoại:</label>
                <input type="tel" id="phone" name="phone" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="sex">Giới tính:</label>
                <select id="sex" name="sex" class="form-control" required>
                    <option value="">Chọn giới tính</option>
                    <option value="true">Nam</option>
                    <option value="false">Nữ</option>
                </select>
            </div>
            <div class="form-group">
                <label for="address">Địa chỉ:</label>
                <textarea id="address" name="address" class="form-control" rows="3" required></textarea>
            </div>
            <div class="form-actions">
                <button type="submit" class="btn btn-success">Thêm sinh viên</button>
                <a href="student-list.html" class="btn">Hủy</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>