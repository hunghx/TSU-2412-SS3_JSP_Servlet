<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 7/11/2025
  Time: 7:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Thông tin bạn vừa nhập </h1>
<ul>
<%--   Expression Language  --%>
<%--    <li>Tên : ${name}</li>--%>
<%--    <li>Tuổi : ${age}</li>--%>
    <li>Tên : <%=request.getAttribute("name")%></li>
    <li>Tuổi : <%=request.getAttribute("age")%></li>

    <c:forEach var="lang" items="${list}" varStatus="loop">
        <li>Ngôn ngữ :${lang} </li>
    </c:forEach>

</ul>
</body>
</html>
