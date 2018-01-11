<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Update Your Skills</h1>
<hr/>
	<div align="center">
		<%=application.getInitParameter("headstr")%>
		<a href=<%=application.getInitParameter("homepg")%>>Home</a>
	</div>
<form action="skillResult.jsp">
<table align="center" cellpadding="10" bgcolor="#e3e3e3">
 <tr>
	 <td>Name</td>
	 <td><input type="text" name="txtname"/></td>
 </tr>
 <tr>
	 <td>Team</td>
	 <td><input type="radio" name="team" value="gm"/>Sapient GM
		 <input type="radio" name="team" value="sr"/>Sapient Razorfish
		 <input type="radio" name="team" value="sc"/>Sapient Consulting
	 </td>
 </tr>
 <tr>
	 <td>Skills</td>
	 <td><input type="checkbox" name="chkskills" value="java"/>Java<br/>
	 <input type="checkbox" name="chkskills" value="jee"/>JEE<br/>
	 <input type="checkbox" name="chkskills" value="spring"/>Spring<br/>
	 <input type="checkbox" name="chkskills" value="hibernate"/>Hibernate<br/>
	 <input type="checkbox" name="chkskills" value="angular"/>Angular<br/>
	 <input type="checkbox" name="chkskills" value="react"/>React<br/>
	 <input type="checkbox" name="chkskills" value="mockito"/>Mockito<br/>
	 <input type="checkbox" name="chkskills" value="jquery"/>JQuery<br/>
	 <input type="checkbox" name="chkskills" value="nodejs"/>nodejs<br/>
	 </td>
 </tr>
<tr>
	 <td colspan="2" align="center"><input type="submit" value="Update Information"/></td>
	 </tr>
</table>


</form>
</body>
</html>