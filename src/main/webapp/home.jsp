<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<h1>home of attendance</h1>
<table border="1">
<tr>
<th>Date</th>
<th>Student Year</th>
<th>Subject</th>
<th>Student Semester</th>
<th>Student Name</th>
<th>Attendance</th>
</tr>
 <c:forEach var="obj" items="${student}">
 <tr>
<td>${obj.date}</td>
<td>${obj.stdYear}</td>
<td>${obj.subject}</td>
<td>${obj.stdsem}</td>
<td>${obj.stdname}</td>
<td>${obj.attendance}</td>
</tr>
</c:forEach>
</table>
</body>
</html>