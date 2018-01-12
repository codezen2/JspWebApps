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
	<c:set var="income" value="${param.txtincome}"></c:set>
	<c:choose>
		<c:when test="${income>=1000000}">
			<c:set var="result" value="${750000*0.1 +(income-1000000)*0.15}"></c:set>
		</c:when>
		<c:when test="${income>=250000}">
			<c:set var="result" value="${(income-250000)*0.1}"></c:set>
		</c:when>
		<c:otherwise>
			<c:set var="result" value="0"></c:set>
		</c:otherwise>
	</c:choose>
	<h1 align="center">TAX CALCULATION</h1>
	<hr />
	<div align="center">
		${initParam.headstr} <a href="${initParam.headstr}">Home</a>
	</div>


	<table style="margin: 0 auto;" cellpadding="10" bgcolor="wheat">
		<tr>
			<td>Employee Name</td>
			<td>${param.txtname}</td>
		</tr>
		<tr>
			<td>Employee Income</td>
			<td><span style="color: grey;">Rs. </span>${param.txtincome}</td>
		</tr>
		<tr>
			<td>Employee Tax</td>
			<td><span style="color: grey;">Rs. </span>${result}</td>
		</tr>
	</table>
</body>
</html>