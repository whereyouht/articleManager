<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>发表文章</h1>
<form class="form-horizontal" role="form" action ="setArticle">
	<div class="form-group">
    <label for="Title" class="col-sm-5 control-label">文章题目</label>
    <div class="col-sm-3">
    	<input type="text" class="form-control" id="Title" name="Title"  
    	/>
    </div>
  </div>
 

  <div class="form-group">
    <label for="content" class="col-sm-5 control-label">文章内容</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="content" name = "content" />
    </div>
  </div>
 
				
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-4">
		<div class="btn-group btn-group-lg">
		 <div class="checkbox">
		<label><input type="checkbox" name="share"/>文章是否共享</label>
	</div>
				 <button class="btn btn-default" type="submit">
				  添加</button> 
				 </button> <button class="btn btn-default" type="reset">
				 重置</button>
				  
		</div>
	</div>
  </div>
</form>
</body>
</html>