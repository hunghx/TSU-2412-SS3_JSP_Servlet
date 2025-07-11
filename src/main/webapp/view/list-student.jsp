<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Danh sách sinh viên</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="container">
    <div class="header">
        <h1>Quản lý sinh viên</h1>
        <div class="nav-buttons">
            <a href="student-list.html" class="nav-btn active">Danh sách</a>
            <a href="student-add.html" class="nav-btn">Thêm mới</a>
            <a href="student-edit.html" class="nav-btn">Chỉnh sửa</a>
        </div>
    </div>

    <div class="content">
        <div class="search-bar">
            <input type="text" class="search-input" placeholder="Tìm kiếm sinh viên...">
            <a href="student-add.html" class="btn btn-success">Thêm sinh viên</a>
        </div>

        <table class="student-table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Họ tên</th>
                <th>Email</th>
                <th>Số điện thoại</th>
                <th>Giới tính</th>
                <th>Địa chỉ</th>
                <th>Hành động</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${students}" var="stu" varStatus="loop">
                <tr>
                    <td>${stu.id}</td>
                    <td>${stu.name}</td>
                    <td>${stu.email}</td>
                    <td>${stu.phone}</td>
                    <td>${stu.sex?"Nam":"Nữ"}</td>
                    <td>${stu.address}</td>
                    <td>
                        <div class="action-buttons">
                            <a href="/students?action=edit&id=${stu.id}" class="btn btn-warning">Sửa</a>
                            <a href="/students?action=delete&id=${stu.id}" class="btn btn-danger" onclick="return confirm('Bạn có chắc chăn muốn xóa sinh viên này ko ???')">Xóa</a>
                        </div>
                    </td>
                </tr>
            </c:forEach>


            </tbody>
        </table>
    </div>
</div>
</body>
</html>