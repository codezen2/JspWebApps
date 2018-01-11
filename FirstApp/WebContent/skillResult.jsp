<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int count=0; %>

<%! public void jspInit()
{
	System.out.println("Jsp Init");
}
public void jspDestroy()
{
	System.out.println("Jsp Destroyed");
}
%>
<%System.out.println(request.getRemoteAddr());%>
	<h1 align="center">Your Updated Profile</h1>
	<br />
	<div align="center">
		<%=application.getInitParameter("headstr")%>
		<a href=<%=application.getInitParameter("homepg")%>>Home</a>
	</div>
	<table align="center" cellpadding="10" bgcolor="#e3e3e3">
		<tr>
			<td>Name</td>
			<td><%=request.getParameter("txtname")%></td>
		</tr>
		<tr>
			<td>Team</td>
			<td><%=request.getParameter("team")%></td>
		</tr>
		<tr>
			<td>Visitor</td>
			<td><%=++count%></td>
		</tr>
		<tr>
			<td>Skills</td>
			<td>
				<ul>
					<%
						String[] skills = request.getParameterValues("chkskills");
						for (String str : skills) {
							out.println("<li>" + str + "</li>");
						}
					%>
				</ul>
			</td>
		</tr>
	</table>
</body>
</html>