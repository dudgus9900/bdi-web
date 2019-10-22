package com.bdi.test.test01;
//응용 문제 → Member3을 먼저보고와
import java.util.ArrayList;
import java.util.List;


public class Member {
	int a;
	public String test(int a) {
		return "abc";
	}
	public static void changeMember(Member m) {
		m=new Member();
		m.a=10;
	}//10은 여기서 죽는다.(얘를 나오게 하고싶으면 이 영역에 S.O.P하면된다.)
	public static void main (String[]args) {
		Member m =new Member();
		List<Member>mList=new ArrayList<Member>();
		m.a=10;
		mList.add(m);
		m.a=20;
		mList.add(m);
		m.a=30;
		mList.add(m);
		
		for(int i=0;i<mList.size();i++) {
			System.out.println(mList.get(i).a);	//30,30,30이 나온다. 왜?메모리의 a를 30으로 바꿨으니까 아무리더해도 
												//a는 계속 30이다.
		}
		System.out.println(m.a);
		changeMember(m);
		System.out.println(m.a);
	}
}
/*이러면 결과는 0,0이 나온다.
	왜? 13번의 메모리생성한 m은 Member3를 바라본다.
	9번에서 메모리생성을 하지만 9번m은 새로운 메모리를 바라보고 있는것*/