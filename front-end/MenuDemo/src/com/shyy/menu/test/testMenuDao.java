package com.shyy.menu.test;

import java.util.List;

import com.shyy.menu.dao.MenuDao;
import com.shyy.menu.entitys.Menu;

public class testMenuDao {

	/**
	 * ≤‚ ‘≤Àµ•–≈œ¢
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.print("hello world");
		MenuDao menuDao=new MenuDao();
		List menuList=menuDao.getAllMenuInfo();
		for(int i=0;i<menuList.size();i++){
			Menu menu=new Menu();
			System.out.println(menu.getId());
			System.out.println(menu.getName());
		}
	}

}
