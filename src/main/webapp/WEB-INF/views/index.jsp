<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>You are in home controller</title>
</head>
<body>
<h1>
This is home page
</h1>
<h2>
this is inside home controller
</h2>
<%
String name=(String)request.getAttribute("name");
List<String> list=(List<String>)request.getAttribute("list");
Integer id=(Integer)request.getAttribute("id");
%>
<h4>
My name is <%=name%>
</h4>
<h5>
Id = <%=id  %>
</h5>
<%
for(String s:list){
%>
<h1>
<%=s%>
</h1>
<%
}%>


</body>
</html>