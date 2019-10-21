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
String op=request.getParameter("op");
out.println("원하는 연산자는"+op);
String num1=request.getParameter("num1");//calc의 변수의 값과 똑같은 놈이 와야한다.
String num2=request.getParameter("num2");

int i=Integer.parseInt(num1);
int j=Integer.parseInt(num2);

 if("+".equals(op)){   // 비교할때는 이 로직을 써라
	out.println(i+j);
	//out.println(op.equals("+")); 에러(null.equals에서 에러가나온다.).
}else if("-".equals(op)){
	out.println(i-j);
}else if("*".equals(op)){
	out.println(i*j);
}else{
	out.println(i/j);
}
//* if(op.equals("+"))  / if("+".equals(op)   두개다 같은 말이다(오른쪽이 가독성이 더 좋다)
%>
</body>
</html> 