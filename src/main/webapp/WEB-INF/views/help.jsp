<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>
My name is ${name}
</h1>
<h2>
Roll no============ ${rollnumber}
</h2>
<h4>
Date Time ============== ${date} 
</h4>
<hr>
<c:forEach var="item" items="${marks}">
<h4>
${item}
</h4>
</c:forEach>
</body>
</html>