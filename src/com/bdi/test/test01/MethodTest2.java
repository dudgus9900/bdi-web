package com.bdi.test.test01;

class Mother02{
	int a=10;
	Mother02(){
		System.out.println("엄마1");
	}
	public void test() {
		System.out.println("난 엄마꺼");
	}
}
public class MethodTest2 extends Mother02 {
	int a=20;
	MethodTest2(){
		super.test();/*평소에는 요놈이 숨어있는것이다.
		 				그래서 Mother class에서 기본생성자 Mother()가 없으면 에러 난다.*/
		System.out.println(this.a);
		System.out.println("나도 실행");
	}
	public void test() {
		System.out.println("난 아들꺼");
	}
	public static void main(String[]args) {
		Mother02 mt=new MethodTest2();
		mt.test();
	}
}
