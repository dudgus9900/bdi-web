
<%@page import="com.bdi.test.test01.Member3"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!//Java Resources.com.bdi.test.test01.Member를 보고 같이 공부하자!
public void test(){
	//request.getParameter("abc");
	int a=1;
}//1. 굳이 선언부를 사용하여 메소드를 만들바에는 class를 하나 더 만들어 사용하는게 훨씬 합리적이고
 //가독성이 좋고 하여튼 다 좋다!!%>
<%
	//여기다가 메소드를 만들 수 가 없다.(왜? 이미 _jspService()라는 메소드 안에 있기때문에)
Member3 map=new	Member3();//2. 이렇게 같은 패키지의 class를 불러와서!!
request.getParameter("abc");
response.addCookie(null);		
List<String> strList=new ArrayList<String>();
%>
</body>
</html>