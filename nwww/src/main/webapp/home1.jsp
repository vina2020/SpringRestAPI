<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.Date,java.util.ArrayList" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <table>
<tr>
<th>ID</th> <th>Name</th> <th>ROLE</th>
</tr>
 <c:forEach items="${emplists}" var="e">
 <tr><td><c:out value="${e.getId()}"></c:out></td> 
  <td><c:out value="${e.getName()}"></c:out></td> 
 <td><c:out value="${e.getRole()}"></c:out></td></tr>
 </c:forEach>

</table> -->

 <br><br>
 
 
 <table>
<tr>
<th>ID</th> <th>Name</th> <th>ROLE</th>
</tr>
 <c:forEach items="${emplists}" var="e">
 <tr><td><c:out value="${e.getId()}"></c:out></td> 
  <td><c:out value="${e.getName()}"></c:out></td> 
  
  
 <td>
 <c:choose>
 <c:when test="${e.getName()=='Fresher'}">
 F
 </c:when>
 
 <c:otherwise>
 Not F
 </c:otherwise>
 
 </c:choose>
 </td>
 
 </tr>
 </c:forEach>

</table>
</body>
</html>