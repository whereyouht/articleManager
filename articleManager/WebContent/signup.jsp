<%@ page language="java" pageEncoding="utf-8"%>
<%
    String test = request.getParameter("test"); // 接收aaa.jsp界面传来的test参数<br>%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>log-up</title>
    <link rel="stylesheet" href="css/common_form.css">
    <script >
	var xmlHttpReq;  
	//创建一个XmlHttpRequest对象  
	function createXmlHttpRequest()  
	{  
	    if(window.XMLHttpRequest)  
	    {  
	       xmlHttpReq = new XMLHttpRequest();//非IE浏览器  
	    }else  
	    {  
	       xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");//IE浏览器  
	    }  
	}  
	//检测用户名是否已经被注册  
	function checkUsername()  
	{  
		var username = document.getElementById("inputUsername").value;  
		if(username=="")  
		{  
	    	alert("用户名必须填写！");  
	    	return false;  
		}  
		//首先创建精灵对象  
		createXmlHttpRequest();  
		//指明准备状态改变时回调的函数名  
		xmlHttpReq.onreadystatechange=handle;  
		//尝试以异步的get方式访问某个URL  
		//请求服务器端的一个servlet  
		var url = "signupUsername.jsp?username="+username;
		xmlHttpReq.open("get",url,true);  
		//向服务器发送请求  
		xmlHttpReq.send(null);  
	}  
		//状态发生改变时回调的函数  
	function handle()  
	{  
	//准备状态为4  
		if(xmlHttpReq.readyState==4)  
		{	  
		    //响应状态码为200，代表一切正常  
		       if(xmlHttpReq.status==200)  
		       {  
		           var res = xmlHttpReq.responseText;  
		           var result = document.getElementById("resultUsername");  
		           if (res!="") result.innerHTML = "<font color=red>"+res+"</font>";
		       }  
		 }  
	} 
		
	function checkEmail()  
	{  
		var Email = document.getElementById("inputEmail3").value;  
		if(Email=="")  
		{  
	    	alert("邮箱必须填写！");  
	    	return false;  
		}  
		//首先创建精灵对象  
		createXmlHttpRequest();  
		//指明准备状态改变时回调的函数名  
		xmlHttpReq.onreadystatechange=handleEmail;  
		//尝试以异步的get方式访问某个URL  
		//请求服务器端的一个servlet  
		var url = "signupEmail.jsp?Email="+Email;
		xmlHttpReq.open("get",url,true);  
		//向服务器发送请求  
		xmlHttpReq.send(null);  
	} 
	function handleEmail()  
	{  
	//准备状态为4  
		if(xmlHttpReq.readyState==4)  
		{	  
		    //响应状态码为200，代表一切正常  
		       if(xmlHttpReq.status==200)  
		       {  
		           var res = xmlHttpReq.responseText;  
		           var result = document.getElementById("resultEmail");  
		           if (res!="") result.innerHTML = "<font color=red>"+res+"</font>";
		       }  
		 }  
	} 
</script>
</head>
<body>
    <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form class="form-horizontal" role="form" action = "Signup">
				
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
					<div class="col-sm-10">
						<input type="email" name = "EmailOrTel" class="form-control" id="inputEmail3"  onchange="checkEmail()"/>
						<span id="resultEmail"></span>
					</div>
				</div>
				
				<div class="form-group">
					 <label for="inputUsername" class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-10">
						<input type="text" name = "username" class="form-control" id="inputUsername" onchange="checkUsername()"/>
						<span id="resultUsername"></span>
					</div>
				</div>
				
				<div class="form-group">
					 <label for="inputPassword1" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-10">
						<input type="text"   name = "password" class="form-control" id="inputPassword" />
					</div>
				</div>
				
				<div class="form-group">
					 <label for="birthday" class="col-sm-2 control-label">生日</label>
					<div class="col-sm-10">
						<input type="text"   name = "birthday" class="form-control" id="birthday" />
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default" >注册</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>