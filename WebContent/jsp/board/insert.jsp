<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/bdi-web/jsp/board/insert-ok.jsp">
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="bi_title"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="bi_user"></td>
			
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="bi_content" cols="22" rows="10"></textarea></td>
			</tr>
			<tr>
				<th colspan="2"><button>게시글 작성</button></th>
			</tr>
		</table>
	</form>
</body>
</html>