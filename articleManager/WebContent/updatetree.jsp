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
import="java.util.Map"
import="java.util.HashMap"
import="java.sql.Connection" 
import="net.sf.json.JSON" import= "net.sf.json.JSONArray" import="net.sf.json.JSONObject"
import ="Project.DBConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%

response.setCharacterEncoding("utf-8");  
String data = request.getParameter("data");
System.out.print(data);



%>
<!--  import="net.sf.json.JSON" import= "net.sf.json.JSONArray" import="net.sf.json.JSONObject"-->
</body>
</html>