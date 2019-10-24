<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String sql = "delete from board_info where bi_num=?";

Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,request.getParameter("bi_num"));
int result = ps.executeUpdate();
if(result==1){
	con.commit();
%>
	삭제완료<br>
	<a href="/bdi-web/jsp/board/list.jsp">게시판 돌아가기</a>
<%
}else{
%>
	삭제 안됨!
<%
}
%>
