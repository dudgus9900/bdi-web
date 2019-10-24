<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String biTitle = request.getParameter("bi_title");
String biUser = request.getParameter("bi_user");
String biContent = request.getParameter("bi_content");

String sql = "insert into board_info(bi_num, bi_title, bi_user, bi_content, bi_credat, bi_cretim, bi_moddat, bi_modtim)";
sql += " values (seq_bi_num.nextval, ?,?,?,to_char(sysdate,'YYYYMMDD'),TO_CHAR(SYSDATE,'HH24MISS'),to_char(sysdate,'YYYYMMDD'),TO_CHAR(SYSDATE,'HH24MISS'))";

Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,biTitle);
ps.setString(2,biUser);
ps.setString(3,biContent);
int result = ps.executeUpdate();
if(result==1){
	con.commit();
%>
	게시물 등록 완료<br>
	<a href="/bdi-web/jsp/board/list.jsp">게시판 돌아가기</a>
<%
}else{
%>
	뭔지 모르겠지만 에러남!
<%
}
%>




