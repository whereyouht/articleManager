<%@  page language="java" contentType="text/html;  charset=UTF-8"
import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>所有共享文章</title>
</head>
<body>
<h1> 111111111111</h1>
<%List<String> list1 = (List<String>)session.getAttribute("allshare");
for(int i = 0; i < list1.size(); i+=7){
	out.print("<h3>"+"<a href = information?articleid="+list1.get(i+0)+">"+list1.get(i+1)+"  "+list1.get(i+5)+"</h3>");

}%>
</body>
</html>