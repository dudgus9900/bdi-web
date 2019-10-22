package com.bdi.test.test01;
//멤버변수, static, 메소드의 이해 정리~
public class Member2 {
	int a;//2. 여기서 접근제어자를 안쓰면 default지!!!
	public String test(int a) {
		return "abc";
	}
	public static String test() {
		String str="abc";
		String str1="bbc";
		return "abc";
	}
	public static void main(String[]args) {
		//1. private String str="abc";  - 에러난다.  private를 지우면 가능하나 역시 default인것도 아님(접근제어자없음)
		test().equals("abc");//test()의 데이터타입에 접근한것이지 변수에 접근한것이 아니다.
		final String str=test(); //final은 영역안에서도 쓸 수 있다.
		//a=10; 
		//Member.test(1);- 얘넨 안되지(왜? static메모리에서는 static만 쓸 수 있다.)-쓰고 싶다면 메모리생성해주라!!
	}
}
/*영역안에서는 접근제어자/static 개념이없다. 접근제어자/static은 class안에 있으면서 다른영역에 포함안될때만 가능!!
 
 *명령어 default와 접근제어자 default는 다르다.(명령어 default는 interface에서만 사용가능하다.)
	-Interface는 기본 접근제어자가 public이기 때문에!	*/