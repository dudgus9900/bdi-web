<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String sql = "select bi_num, bi_title, bi_content, bi_user, to_char(to_date(bi_credat),'YYYY-MM-DD') as bi_credat,";
sql += "bi_cretim, to_char(to_date(bi_moddat),'YYYY-MM-DD') as bi_moddat, bi_modtim from board_info  where bi_num=?";
System.out.println(sql);
Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,request.getParameter("bi_num"));
ResultSet rs = ps.executeQuery();
int i=0;
if(rs.next()){
%>
	<form method="post" action="/bdi-web/jsp/board/update-ok.jsp">
		<table border="1">
			<tr>
				<th>번호</th>
				<td><%=rs.getString("bi_num")%></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="bi_title" value="<%=rs.getString("bi_title")%>"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="bi_user" value="<%=rs.getString("bi_user")%>"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="bi_content" cols="22" rows="10"><%=rs.getString("bi_content")%></textarea></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><%=rs.getString("bi_credat") %> <%=rs.getString("bi_cretim") %></td>
			</tr>
			<tr>
				<th>수정일</th>
				<td><%=rs.getString("bi_moddat") %> <%=rs.getString("bi_modtim") %></td>
			</tr>
			<tr>
				<th colspan="2"><button>게시글 수정</button></th>
			</tr>
		</table>
		<input type="hidden" name="bi_num" value="<%=rs.getString("bi_num") %>">
	</form>
<%
}else{
	out.println("수정할 게시물이 없습니다.");
}
%>
</body>
</html>