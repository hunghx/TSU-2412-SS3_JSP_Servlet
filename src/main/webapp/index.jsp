<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<%--<%!--%>
<%--    // khai báo biến--%>
<%--    int a =10;--%>
<%--    LocalDate today = LocalDate.now();--%>
<%--%>--%>

<%--<%--%>
<%--        // logic code--%>
<%--    if (a>5){--%>
<%--        System.out.println("Biên a lớn hơn 5");--%>
<%--    }else {--%>
<%--        System.out.println("Biên a nhỏ hơn hoặc bằng 5");--%>
<%--    }--%>
<%--%>--%>
<%--<%--%>
<%--    for (int i = 0; i < 10; i++) {--%>
<%--%>--%>
<%--        <li>Vong lăp thứ n</li>--%>
<%--<%--%>
<%--    }--%>
<%--%>--%>

<%--Vòng lặp --%>
<%--<c:forEach var="i" begin="0" end="9" step="1">--%>
<%--    <li>Vòng lặp thứ ${i+1}</li>--%>
<%--</c:forEach>--%>

<%--&lt;%&ndash; IF &ndash;%&gt;--%>
<%--<c:if test="${7>5}">--%>
<%--    <p>Điều kiện đúng</p>--%>
<%--</c:if>--%>
<%--<c:if test="${!(7>5)}">--%>
<%--    <p>Điều kiện sai</p>--%>
<%--</c:if>--%>

<%--&lt;%&ndash; choose when &ndash;%&gt;--%>
<%--<c:choose>--%>

<%--    <c:when test="">--%>
<%--        <p>Điều kiện 1 đúng</p>--%>
<%--    </c:when>--%>
<%--    <c:when test="">--%>
<%--        <p>Điều kiện 2 đúng</p>--%>
<%--    </c:when>--%>
<%--    <c:otherwise>--%>
<%--        <p>Không có điều kiện nào đúng</p>--%>
<%--    </c:otherwise>--%>
<%--</c:choose>--%>

<%--<p>Hôm nay là : <%=today.format(DateTimeFormatter.BASIC_ISO_DATE)%></p>--%>

<%--<a href="hello-servlet">Hello Servlet</a>--%>
<%--<form action="/user" method="post">--%>
<%--    &lt;%&ndash; comment   &ndash;%&gt;--%>
<%--    <input type="text" name="name" placeholder="Enter your name" required>--%>
<%--    <input type="number" name="age" placeholder="Enter your age" required>--%>
<%--    <button type="submit">Submit</button>--%>
<%--</form>--%>

<h1>Welcome to JSP!</h1>
<a href="/students">Danh sách sinh viên</a>
</body>
</html>