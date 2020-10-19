<%--
  Created by IntelliJ IDEA.
  User: abz
  Date: 19.10.20
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <title>todo list</title>
</head>
<body>

<jsp:include page="add.jsp" />
<hr>
<sql:query var="result" dataSource="jdbc/testdb">
    SELECT * FROM todo
</sql:query>
<table>
    <tr><th>task</th></tr>

    <c:forEach items="${result.rows}" var="row">
        <tr><td>${row.task}</td></tr>
    </c:forEach>

</table>
</body>
</html>
