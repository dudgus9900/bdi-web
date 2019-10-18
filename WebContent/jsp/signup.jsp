<%@page import="java.sql.Statement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
</head>
<body>
	<%
		
	%>
	<form method="get" action="/bdi-web/jsp/signup_ok.jsp">
		ID : <input type="text" name="id"><br>
	    PassWord : <input type="password" name="pwd"><br> 
	    Name : <input type="text" name="name"><br>
	    Age : <input type="number"name="age"><br>
	    Etc :<textarea name="etc"></textarea><br>
		<button>Signup</button>
	</form>
	<!-- 
	http://localhost:808/bdi-web/jsp/signup.jsp
	?
	id=%E3%85%81%E3%84%B4%E3%85%87&pwd=asd&name=%E3%85%81%E3%84%B4%E3%85%87&age=&etc=%E3%85%81%E3%84%B4%E3%85%87 
	-->

</body>
</html>