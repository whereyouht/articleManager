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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%//判断用户名是不是存在
response.setCharacterEncoding("utf-8");  
String Email = request.getParameter("Email");   

String sqlForEmail = "select * from User where EmailOrTel=";
sqlForEmail+='"'+Email+'"';

String dbDriver="com.mysql.jdbc.Driver";
String dbUrl="jdbc:mysql://localhost:3306/articleManager?characterEncoding=utf8";
String dbUser="root";
String dbPass="wp784499673";

System.out.println(sqlForEmail);
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
        ResultSet rs = stmt.executeQuery(sqlForEmail);
        while(rs.next())
        {
        	System.out.println("***************");
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
    
    if (list.size() != 0 )response.getWriter().println("该邮箱已经被注册");
    else response.getWriter().println("");
%>
</body>
</html>