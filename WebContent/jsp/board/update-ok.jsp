<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String biNum = request.getParameter("bi_num");
String biTitle = request.getParameter("bi_title");
String biUser = request.getParameter("bi_user");
String biContent = request.getParameter("bi_content");

String sql = "update board_info";
sql += " set bi_title=?,";
sql += "  bi_user=?,";
sql += "  bi_content=?,";
sql += "  bi_moddat=to_char(sysdate,'YYYYMMDD'),";
sql += "  bi_modtim=to_char(sysdate,'HH24MISS')";
sql += " where bi_num=?";

Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,biTitle);
ps.setString(2,biUser);
ps.setString(3,biContent);
ps.setString(4,biNum);
int result = ps.executeUpdate();
if(result==1){
	con.commit();
%>
	게시물 수정 완료<br>
	<a href="/bdi-web/jsp/board/list.jsp">게시판 돌아가기</a>
<%
}else{
%>
	뭔지 모르겠지만 에러남!
<%
}
%>




