<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>${tittle}</h1>
  <p>${desc}</p>
  <hr>
<h1>
Welcome, ${userclass.username}
</h1>
<h2>

Your=r email address is ${userclass.emailAddress}

</h2>
<h3>

Your password is ${userclass.password} </h3>

<h1>
${id}
</h1>
</body>
</html>