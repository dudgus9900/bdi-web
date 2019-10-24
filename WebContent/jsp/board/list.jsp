<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
	<select name="search">
		<option value="1">제목</option>
		<option value="2">작성자</option>
		<option value="3">내용</option>
		<option value="4">제목+작성자</option>
		<option value="5">제목+작성자+내용</option>
	</select>
	<input type="text" name="searchStr"><button>검색</button>
</form>
<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>작성시간</th>
		<th>수정일</th>
		<th>수정시간</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
<%
String search = request.getParameter("search");
String searchStr = request.getParameter("searchStr");
String sql = "select * from board_info ";
if(search!=null){
	if("1".equals(search)){
		sql += " where bi_title like ? ";
	}else if("2".equals(search)){
		sql += " where bi_user like ? ";
	}else if("3".equals(search)){
		sql += " where bi_content like ? ";
	}else if("4".equals(search)){
		sql += " where bi_title like ? or bi_user like ? ";
	}else if("5".equals(search)){
		sql += " where bi_title like ? or bi_user like ?  or bi_content like ?  ";
	}
}
sql += " order by bi_num desc";
Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
if(search!=null){
	if("1".equals(search) || "2".equals(search) || "3".equals(search)){
		ps.setString(1,"%" + searchStr + "%");
	}else if("4".equals(search)){
		ps.setString(1,"%" + searchStr + "%");
		ps.setString(2,"%" + searchStr + "%");
	}else if("5".equals(search)){
		ps.setString(1,"%" + searchStr + "%");
		ps.setString(2,"%" + searchStr + "%");
		ps.setString(3,"%" + searchStr + "%");
	}
}
ResultSet rs = ps.executeQuery();
int i=0;
while(rs.next()){
	final String biNum = rs.getString("bi_num") ;
	i++;
%>
	<tr>
		<td><%=biNum%></td>
		<td><%=rs.getString("bi_title") %></td>
		<td><%=rs.getString("bi_user") %></td>
		<td><%=rs.getString("bi_credat") %></td>
		<td><%=rs.getString("bi_cretim") %></td>
		<td><%=rs.getString("bi_moddat") %></td>
		<td><%=rs.getString("bi_modtim") %></td>
		<td><a href="/bdi-web/jsp/board/update.jsp?bi_num=<%=biNum%>">수정</a></td>
		<td><a href="/bdi-web/jsp/board/delete-ok.jsp?bi_num=<%=biNum%>">삭제</a></td>
	</tr>
<%
}
if(i==0){
%>
	<tr>
		<td colspan="9" align="center"> 게시물이 없습니다.</td>
	</tr>
<%
}
%>
</table>
<a href="/bdi-web/jsp/board/insert.jsp">게시글쓰기</a>
</body>
</html>