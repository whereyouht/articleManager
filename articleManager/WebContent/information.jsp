<%@ page language="java" contentType="text/html;  charset=UTF-8"
import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>文章详细信息</title>
</head>
<body>
<%
List<String> list1 = (List<String>)session.getAttribute("information");
for (int i = 0; i < list1.size(); i++){
	out.print(list1.get(i));
}
out.print("****");
List<String> list2 = (List<String>)session.getAttribute("comment");
for ( int i = 0; i < list2.size(); i+=5){
	out.print(list2.get(i+4));
}
%>

  <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form class="form-horizontal" role="form" action = "<% out.print("setcommentMessage?username="+list1.get(5)+"&&articleid="+list1.get(0));%>">
 <div class="col-sm-6">
	<input type="text" name= "commentMessage" class="form-control" id="commentMessage" />
</div>  
<div class="col-sm-offset-2 col-sm-10">
	<button type="submit" class="btn btn-default" >发表评论</button>
</div>
</body>
</html>