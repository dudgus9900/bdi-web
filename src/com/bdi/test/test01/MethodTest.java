package com.bdi.test.test01;
//overloading, overriding 심화학습
class Mother01{
	int a=3;

	public String test(int a,int b) {
		return "abc";
	}
}
public class MethodTest extends Mother01 {
	String a="123";/*변수는 overriding의 개념에  상관 않고 각각의 class꺼이며 .
	메모리생성했을때의 데이터타입을 따라갑니다.*/
	public void test(int a,boolean b) {
		System.out.println(a+","+b);
	}
	public void test(int a,String b) {
		System.out.println(a+b);  
	}
	public void test(String b,int a) {
		System.out.println(a+b); //overloading이 적용됬다.
	}
	public static void mani(String[]args) {
		MethodTest mt=new MethodTest();
		mt.test(2,3);
	}
}
