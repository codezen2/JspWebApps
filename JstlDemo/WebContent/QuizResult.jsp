<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.pass {
	color: blue;
}

.fail {
	color: red;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Results</title>
</head>
<body>
	<%@include file="Header.jsp"%>


	<c:set var="score" value="0"></c:set>

	<c:if test="${param.ques1 eq '4' }">
		<c:set var="score" value="${score+1}"></c:set>
	</c:if>

	<c:if test="${param.ques2 eq '1' }">
		<c:set var="score" value="${score+1}"></c:set>
	</c:if>

	<c:if test="${param.ques3 eq 'list' }">
		<c:set var="score" value="${score+1}"></c:set>
	</c:if>

	<c:if test="${param.ques4 eq 'set' }">
		<c:set var="score" value="${score+1}"></c:set>
	</c:if>

	<c:set var="per" value="${(score/4)*100}"></c:set>

	<h1 align="center">Quiz Result</h1>
	<hr />
	<div align="center">
		${initParam.headstr} <a href="${initParam.headstr}">Home</a>
	</div>
	<div style="width: 80%; margin: 0 auto; background-color: wheat;">
		<table cellpadding="10" style="margin: 0 auto;">
			<tr>
				<td>No of Questions Answered Corretly:</td>
				<td style="color: green;">${score}<span style="color: black;">/4</span></td>
			</tr>
			<tr>
				<td>Percentage of Questions Answered Corretly:</td>
				<td>${per}<span style="font-weight: bold;">%</span></td>
			</tr>
			<tr>
				<td>Result:</td>
				<td><c:choose>
						<c:when test="${per>=75}">
							<span class="pass"> pass</span>
						</c:when>
						<c:otherwise>
							<span class="fail"> fail</span>
						</c:otherwise>
					</c:choose></td>
			</tr>
		</table>

	</div>
</body>
</html>