package com.shyy.menu.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class JDBCDao {

	public static final String Driver_Class="com.microsoft.jdbc.sqlserver.SQLServerDriver";
	public static final String Driver_URL="jdbc:sqlserver://localhost:3306;DatabaseName=demodb";
	public static final String Driver_UserName="root";
	public static final String Driver_Pwd="HT19970915";
	/*
	 * CREATE DATABASE demodb DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
		create table menu(
		id int unsigned not null auto_increment primary key,
		pId int unsigned not null,
		name varchar(100) not null,	
		rootPId int unsigned not null);
	 */
	protected static Connection conn=null;
	protected static PreparedStatement pst=null;
	protected static ResultSet rs=null;
	

	public static Connection getConn(){
		try{
			Class.forName(Driver_Class);
			conn=DriverManager.getConnection(Driver_URL,Driver_UserName,Driver_Pwd);
			if(conn==null){
				System.out.println("���ݿ�����ʧ�ܣ�");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}

	public static void CloseAllConn(Connection conn,PreparedStatement pst,ResultSet rs){
		if(rs!=null){try{rs.close();}catch(Exception e){e.printStackTrace();}}
		if(pst!=null){try{pst.close();}catch(Exception e){e.printStackTrace();}}
		if(conn!=null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
	}
	
}
