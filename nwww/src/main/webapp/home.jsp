<%@page import="com.sample.model.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="2px">
<tr>
<th>ID</th>
<th>NAME</th>
<th>ROLE</th>
</tr>
<%
ArrayList<Employee>e= (ArrayList<Employee>)request.getAttribute("emplists");
for(Employee e1:e)
{%>
<tr>
<td><%= e1.getId()%></td>
<td><%= e1.getName()%></td>
<td><%= e1.getRole()%></td> 
</tr>	
<%}%>

</table>
</body>
</html>