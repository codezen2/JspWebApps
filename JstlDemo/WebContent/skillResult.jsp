<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="Header.jsp"%>
	<c:set var="count" value="0" scope="application"></c:set>
	<h1 align="center">Your Updated Profile</h1>
	<br />
	
	<table align="center" cellpadding="10" bgcolor="#e3e3e3">
		<tr>
			<td>Name</td>
			<td>${param.txtname}</td>
		</tr>
		<tr>
			<td>Team</td>
			<td>${param.team}</td>
		</tr>
		<tr>
			<td>Visitor</td>
			<td><c:set var="count" value="${count+1}" scope="application"></c:set>
			${count}</td>
		</tr>
		<tr>
			<td>Skills</td>
			<td>
				<ul>
					<c:forEach items="${paramValues.chkskills}" var="str">
						<li>${str}</li>
					</c:forEach>
				</ul>
			</td>
		</tr>
			<tr>
			<td>Images</td>
			<td>
			<c:forEach begin="1" end="3" var="idx">			
				<img alt="comp-img" src="images/computer${idx}.jpg" height="50" width="50"/>
			</c:forEach>			
			</td>
		</tr>
	</table>
</body>
</html>