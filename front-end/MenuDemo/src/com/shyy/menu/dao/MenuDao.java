package com.shyy.menu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.shyy.menu.entitys.Menu;

public class MenuDao{

	public static Connection conn=null;
	public static PreparedStatement pst=null;
	public static ResultSet rs=null;
	

	public List getAllMenuInfo(){
		JDBCDao jb=new JDBCDao();
		List menuList=new ArrayList();
		String sql="select * from menu";
		try{
			conn=jb.getConn();
			pst=conn.prepareStatement(sql);
			rs=pst.executeQuery();
			while(rs.next()){
				Menu menu=new Menu();
				menu.setId(rs.getInt("id"));
				menu.setName(rs.getString("name"));
				menu.setpId(rs.getInt("pId"));
				menu.setRootPId(rs.getInt("rootPId"));
				menu.setUrl(rs.getString("url"));
				menuList.add(menu);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			jb.CloseAllConn(conn, pst, rs);
		}
		return menuList;
	}
}
