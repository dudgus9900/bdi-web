<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%//public void test(){
//	out.println("하하하~"); -굳이 이게 되게 하려면
//} public void test(JspWriter out)throws Exception{
//out.println("하하하~"); - 이렇게 만들어줘야한다.
//	} 
%>
<%// 메소드 사용 불가, 왜?? 이미 메소드 안에 있어서 작동하고 있는것이어서!!
//System.out.println 은 써도 웹에서 나오지않는다.  System은 이클립스에 하는거라 Console에서는 나오지만
//웹까지 갈 수가 없는것!! (out.println과System.out.println은 다르다)
String num1=request.getParameter("num1");//jsp를 java파일로 바꿔서 실행을 하는것인데, 
//그때 request라는 변수가 선언되서 request사용가능하다.
//request같은 변수를 내장 변수라고 부른다.	
int result=0; 
if(num1!=null){
	int i=Integer.parseInt(num1);
	String num2=request.getParameter("num2");
	int j=Integer.parseInt(num2);

	 String op=request.getParameter("op");
	if("+".equals(op)){   // 비교할때는 이 로직을 써라
		 result=i+j;
		//out.println(op.equals("+")); 에러(null.equals에서 에러가나온다.).
	}else if("-".equals(op)){
		result=i-j;
	}else if("*".equals(op)){
		result=i*j;
	}else{
		result=i/j;
	}
}

%>
<form action="/bdi-web/jsp/CalC/calc_ok.jsp">
	숫자1 : <input type="number"name="num1">
	<select name="op">
	<option value="+">더하기</option>
	<option value="-">빼기</option>
	<option value="*">곱하기</option>
	<option value="/">나누기</option>
	</select>
	숫자2 : <input type="number"name="num2">
<button>계산</button>
</form>
</body>
</html>