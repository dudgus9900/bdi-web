package com.bdi.test.test01;

public class SplitTest {

	public static void main(String[] args) {
		String hobby="study,movie,game";
		String[] hobbies=hobby.split(",");
		String hob1="study";
		
		System.out.println(hobbies.length);
		System.out.println(hobbies[0]);
		System.out.println(hobbies[1]);
			/*for(int i=0;i<hobbies.length;i++) {
				System.out.println(hobbies[i]);
			}*/
			for(String str:hobbies) {	//향상된 for문(위의 for문을 줄인 것!)
				if(str.equals(hob1)) {
					System.out.println("checked");
					break;
				}
			}
		}
	}

