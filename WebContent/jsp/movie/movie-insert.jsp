
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/bdi-web/jsp/movie/movie-insert_ok.jsp">
	번호:<input type="number"name="miNum">
	영화제목:<input type="text"name="miName">
	티켓가격:<input type="number"name="miPrice">
	개봉일:<input type="date"name="miDate">
	영화연령:<input type="number"name="miAge">
	영화설명:<input type="text"name="miDesc">
	평점:<input type="number"name="miStarRate">
	<button>글쓰기</button>
</form>
</body>
</html>