package com.bdi.test.test01;
class Mother{
	static int a=3;
	static {
		System.out.println(123);
	}
	Mother(){
		System.out.println(1);
	}
}
public class Construtor extends Mother{
	Construtor(){ // 이 다음에 super() 생략되어 있다.
		System.out.println(3);
	}
	public static void main(String[]args) {
		System.out.println(Mother.a); //값이 나오는 이유는
		Mother m =new Construtor();//메모리생성되기전에 static을 읽는거다.
	}
}
/*static 은 한번만 loading 된다.(그럼으로 한번만 선언하고싶은 값을 지정해서 쓸때 쓰면 되겠다.)
static이 없다면 new Mother();해서 써야한다.*/