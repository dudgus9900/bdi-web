package com.bdi.test.test01;
//jsp.test01.test를 이해하기 위해 class로 보기!
import java.util.HashMap;
import java.util.Map;

public class Member3 {

	public static void neker(Map<String,String> map) {//3. 메소드를 하나 더 만든다.
													  //5.그럴경우 파라메터값에 Map<String,String> map을 넣으면된다.
		map.put("a","b");		//4. 그냥 얘만 넣으면 에러가난다.(왜? 얘는 파라메터값이 없어서 map이 들어올수가없다.)
	}
	public static void test(Map<String,String> map) {//1. 파라메터에 map을 넣어 값을 강요했다.
		map.put("a","b");
		int a=map.size();
		System.out.println(map);
		neker(map);
	}
	public static void main(String[]args) {
		Map<String,String> map = new HashMap<String,String>();
		test(map);		//2. 메소드를 호출할라면 map이라고 불릴 수 있는것들을 넣어서 호출해야한다.
	}
}
