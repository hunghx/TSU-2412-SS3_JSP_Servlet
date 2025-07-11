<%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 7/11/2025
  Time: 8:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa sinh viên</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="container">
    <div class="header">
        <h1>Quản lý sinh viên</h1>
        <div class="nav-buttons">
            <a href="student-list.html" class="nav-btn">Danh sách</a>
            <a href="student-add.html" class="nav-btn">Thêm mới</a>
            <a href="student-edit.html" class="nav-btn active">Chỉnh sửa</a>
        </div>
    </div>

    <div class="content">
        <h2 class="form-title">Chỉnh sửa thông tin sinh viên</h2>
        <form action="/students" method="post">
            <input type="hidden" name="id" value="${student.id}">
            <div class="form-group">
                <label for="name">Họ tên:</label>
                <input type="text" id="name" name="name"  class="form-control" value="${student.name}" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" value="${student.email}" required>
            </div>
            <div class="form-group">
                <label for="phone">Số điện thoại:</label>
                <input type="tel" id="phone" name="phone" class="form-control" value="${student.phone}" required>
            </div>
            <div class="form-group">
                <label for="sex">Giới tính:</label>
                <select id="sex" name="sex" class="form-control"  required>
                    <option value="">Chọn giới tính</option>
                    <option value="true" ${student.sex?"selected":""}>Nam</option>
                    <option value="false" ${student.sex?"":"selected"}>Nữ</option>
                </select>
            </div>
            <div class="form-group">
                <label for="address">Địa chỉ:</label>
                <textarea id="address" name="address" class="form-control" rows="3" required>${student.address}</textarea>
            </div>
            <div class="form-actions">
                <input type="hidden" name="action" value="update">
                <button type="submit" class="btn btn-success">Cập nhật</button>
                <a href="student-list.html" class="btn">Hủy</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>