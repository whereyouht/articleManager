<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" 
    import="java.io.IOException"  import="java.util.LinkedList,java.util.List"
import="javax.servlet.ServletException"  
import="javax.servlet.http.HttpServlet" 
import="javax.servlet.http.HttpServletRequest"  
import=" javax.servlet.http.HttpServletResponse" import="Project.DBConnection" 
import="java.sql.DriverManager"
import="java.sql.PreparedStatement"
import="java.sql.ResultSet"
import="java.sql.SQLException"
import="java.sql.Statement"
import="java.util.LinkedList"
import="java.util.List"
import="java.sql.Connection" import ="Project.DBConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
String dbDriver="com.mysql.jdbc.Driver";
String dbUrl="jdbc:mysql://localhost:3306/articleManager?characterEncoding=utf8";
String dbUser="root";
String dbPass="wp784499673";
response.setCharacterEncoding("utf-8");  
String username = request.getParameter("username");   
username = new String(username.getBytes("iso-8859-1"),"gb2312");
String sqlForusername = "select * from User where username=";
sqlForusername+='"'+username+'"';//解决中文乱码问题
//System.out.println(sqlForusername);
	Connection conn=null;
	try
    {
        Class.forName(dbDriver);
    }
    catch (ClassNotFoundException e)
    {
        e.printStackTrace();
    }
    try
    {
        conn = DriverManager.getConnection(dbUrl,dbUser,dbPass);
    }
    catch (SQLException e)
    {
        e.printStackTrace();
    }
	
    int i;
    List<String> list = new LinkedList<String>();
    try
    {
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sqlForusername);
        while(rs.next())
        {
        	//System.out.println("***************");
            for(i = 1;i<=rs.getMetaData().getColumnCount();i++){
                list.add(rs.getString(i));}
        }
    }
    catch (SQLException e)
    {
        e.printStackTrace();
    }
    
    for (String  str : list){
		System.out.println(str);	    
	 }
    
    if (list.size() == 0 ){
    	//System.out.print("*****************");
    	response.getWriter().println("该用户名并不存在，点此注册");
    }
    else {
    	//System.out.print("##########");
    	response.getWriter().println("");
    }
%>
</body>
</html>