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
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String etc = request.getParameter("etc");
		if (id != null) {
			out.println("니가 입력한 아이디 :" + id + "<br>");
			out.println("니가 입력한 pwd :" + pwd + "<br>");
			out.println("니가 입력한 name :" + name + "<br>");
			out.println("니가 입력한 age :" + age + "<br>");
			out.println("니가 입력한 etc :" + etc + "<br>");

			Connection con = DBCon.getCon();//전화를 걸었다.(DBCon에서 생성된 전화기로)
			Statement stmt = con.createStatement();
			String sql = "insert into user_info(mi_num, mi_name, mi_price, mi_date, mi_desc, mi_age, mi_star_rate)";
			sql += " values('" + id + "','" + pwd + "','" + name + "','" + age + "','" + etc + "')";
			int result = stmt.executeUpdate(sql);
			if (result == 1) {
				out.println("회원가입완료");
			}
			con.commit();
		}
	%>	
</body>
</html>
		
	<a href="bdi-web/jsp/signup.jsp">돌아가기</a>
