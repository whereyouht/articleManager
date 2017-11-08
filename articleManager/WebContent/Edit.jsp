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
<title>修改个人信息</title>
</head>
<body>

<form class="form-horizontal" role="form" action ="Edit">
	<div class="form-group">
    <label for="EmailOrTel" class="col-sm-5 control-label">注册邮箱</label>
    <div class="col-sm-3">
    	<input type="text" class="form-control" id="EmailOrTel" name="EmailOrTel"  readonly="true" 
         value="<% List<String> list = (List<String>)session.getAttribute("userInformation");
    		out.print(list.get(2));%>" />
    </div>
  </div>
  
  <div class="form-group">
    <label for="username" class="col-sm-5 control-label">用户名</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="username" name="username" 
      value="<%	out.print(list.get(1));%>"/>   <!-- readonly = true 代表不可修改 -->
    </div>
  </div>

  <div class="form-group">
    <label for="age" class="col-sm-5 control-label">年龄</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="age" name = "age"
           value="<%	out.print(list.get(4));%> "/>
    </div>
  </div>

  <div class="form-group">
    <label for="sex" class="col-sm-5 control-label">性别</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="sex" name = "sex"
           value="<%	out.print(list.get(5));%> ">
    </div>
  </div>
	  <div class="form-group">
    <label for="birthday" class="col-sm-5 control-label">生日</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="birthday" name = "birthday"
           value="<%out.print(list.get(6));%> ">
    </div>
  </div>
  
  <div class="form-group">
    <label for="message" class="col-sm-5 control-label">个人简介</label>
    <div class="col-sm-3">
    
      <input type="text" class="form-control"  id="message" name = "message"
         value="<%	out.print(list.get(7));%> ">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-4">
		<div class="btn-group btn-group-lg">
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