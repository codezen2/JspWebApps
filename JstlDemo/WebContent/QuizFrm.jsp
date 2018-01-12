<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>QUIZ</title>
</head>
<body>
		<%@include file="Header.jsp"%>

<h1 align="center">Play Java Quiz</h1>

<hr/>


<form action="QuizResult.jsp">
 <div style="width:40%; background-color:aqua;margin:0 auto;"> 
		 1. Type of int type?<br/>
		 <input type="radio" name ="ques1" value="1"/>1<br/>
		 <input type="radio" name ="ques1" value="2"/>2<br/>
		 <input type="radio" name ="ques1" value="4"/>4<br/>
		   <hr/>
		 2. Type of byte type?<br/>
		 <input type="radio" name ="ques2" value="1"/>1<br/>
		 <input type="radio" name ="ques2" value="2"/>2<br/>
		 <input type="radio" name ="ques2" value="4"/>4<br/>
		  <hr/>
		 3. Which collection allows duplicates?<br/>
		 <input type="radio" name= "ques3" value="list"/>List<br/>
		 <input type="radio" name ="ques3" value="set"/>Set<br/>
		 <input type="radio" name ="ques3" value="map"/>Map<br/>
		  <hr/>
		 4. Which collection allows unqiue elements?<br/>
		 <input type="radio" name= "ques4" value="list"/>List<br/>
		 <input type="radio" name= "ques4" value="set"/>Set<br/>
		 <input type="radio" name= "ques4" value="map"/>Map<br/>
		  <hr/>
 <input type="submit" value="finsh">
 
 
 </div>


</form>

</body>
</html>