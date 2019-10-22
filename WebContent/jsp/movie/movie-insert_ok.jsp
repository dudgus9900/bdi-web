<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.Statement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%
String miNum=request.getParameter("mi_num");
String miName=request.getParameter("mi_name");
String miPrice=request.getParameter("mi_price");
String miDate=request.getParameter("mi_date");
miDate=miDate.replace("-","");
String miDesc=request.getParameter("mi_desc");
String miAge=request.getParameter("mi_age");
String miStarRate=request.getParameter("mi_star_rate");

String sql="insert into movie_info(mi_num, mi_name, mi_price, mi_date, mi_desc, mi_age, mi_star_rate)";
sql+="values('"+miNum+"',";
sql+="values('"+miPrice+"',";
sql+="values('"+miDate+"',";
sql+="values('"+miDesc+"',";
sql+="values('"+miAge+"',";
sql+="values('"+miStarRate+"',)";
out.println(sql);
Connection con = DBCon.getCon();
			Statement stmt = con.createStatement();
			sql += " values('" + miNum+ "','" + miName + "','" + miPrice + "','" + miDate + "','" + miDesc + "','"+ miAge+ "'"+ miStarRate+"')";
			int result = stmt.executeUpdate(sql);
			if (result == 1) {
				out.println("");
			}
			con.commit();
			%>