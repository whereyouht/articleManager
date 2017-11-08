<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加共享文章</title>
</head>
<body>
<h1>发表共享文章</h1>
<form class="form-horizontal" role="form" action ="setshareArticle">
	<div class="form-group">
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
      <input type="text" class="form-control" id="keywords" name = "keywords" />
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



</body>
</html>