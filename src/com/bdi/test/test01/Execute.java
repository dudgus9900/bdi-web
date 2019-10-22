package com.bdi.test.test01;

import java.util.ArrayList;
import java.util.List;

public class Execute {
	public static void main(String[]args) {
		List<Food> menus=new ArrayList <Food>();
		
		Food.addMenu(menus, "치킨", 20000, "JMT");
		Food.addMenu(menus, "맥주", 3000, "500cc");
		Food.addMenu(menus, "소주", 4000, "300cc");
		
		for(Food f: menus) {
			System.out.println(f);
		}
	}
}