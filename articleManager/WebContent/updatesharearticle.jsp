<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改共享文章</title>
</head>
<body>
<center>
<h1>修改共享文章</h1>
<%List<String> list1 = (List<String>)session.getAttribute("list"); %>
<form class="form-horizontal" role="form" action ="updateshareArticle?articleid="+<%out.print(list1.get(0)); %>>
	<div class="form-group">
	<label for="keywords">文章分类</label>
    <select name= "shareClassfyid" ><!--这里的font-family代表字体 -->
			<option value="1" >计算机科学</option>
			<option value="2" >人文</option>
			<option value="3" >地理</option>
			<option value="4" >随笔</option>
			
		</select>
  </div>
  <div class="form-group">
    <label for="keywords" class="col-sm-5 control-label">文章关键字</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="keywords" name = "keywords" 
      value = "<%
    		out.print(list1.get(3));
    		%>"/>
    </div>
  </div>
  
  	
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-4">
		<div class="btn-group btn-group-lg">
				 <button class="btn btn-default" type="submit">
				  添加</button> 
			<button class="btn btn-default" type="reset">
				 重置</button>
				  
		</div>
	</div>
  </div>
</form>
</center>
</body>
</html>