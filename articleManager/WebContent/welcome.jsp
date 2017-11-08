<%@ page language="java" contentType="text/html;  charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<% 
String username = (String)session.getAttribute("username"); 
out.print("<h1>"+username+",欢迎你"+"</h1>");%>
<a href =gotoEdit?username=<%out.print(username);%>> <button  type="button" >修改</button></a>
<a href ="setArticle.jsp"> <button  type="button">发表文章</button></a>
<a href = allArticle?username=<%out.print(username); %> > <button  type="button">查看自己所有文章</button></a>
<a href = allshare?username=<%out.print(username); %> ><button type="button"> 查看所有共享文章</button></a>
<a herf = "SignIn.jsp">   <button  type="button">注销登陆</button></a>

<form class="bs-example bs-example-form" role="form" action = "search">
<span><select name= "searchType" ><!--这里的font-family代表字体 -->
	<option value="1" >按时间查询</option>
	<option value="2" >按关键字查询</option>
	<option value="3" >按题目查询</option>
	<option value="4" >按类型查询</option>
	<option value="5" >全文检索</option>
</select>
<input type="text" class="form-control" name = "searchText">
<button type="Submit">查询</button></span></form>
</body>
</html>