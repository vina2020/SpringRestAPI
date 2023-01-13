    <%@ page import="java.io.*,java.util.*,java.sql.*"%>  
    <%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
      
    <html>  
    <head>  
    <title>sql:query Tag</title>  
    </head>  
    <body>  
       
    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
         url="jdbc:mysql://localhost/db1"  
         user="root"  password="lucycyrus"/>  
      
    <sql:query dataSource="${db}" var="rs">  
    SELECT * from employee;  
    </sql:query>  
       
    <table border="2" width="100%">  
    <tr>  
    <th>ID</th>  
    <th>Name</th>  
    <th>Salary</th>  
     
    </tr>  
    <c:forEach var="table" items="${rs.rows}">  
    <tr>  
    <td><c:out value="${table.id}"/></td>  
    <td><c:out value="${table.name}"/></td>  
    <td><c:out value="${table.salary}"/></td>  
 
    </tr>  
    </c:forEach>  
    </table>  
      
    </body>  
    </html>  