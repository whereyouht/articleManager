<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>login</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script >
	var xmlHttpReq;  //创建一个XmlHttpRequest对象  
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
	
	function checkUsername()  //检测用户名是否已经被注册  
	{  
		var username = document.getElementById("inputUsername").value;  
		if(username=="")  
		{  
	    		alert("用户名必须填写！");  
	    		return false;  
		}  
		
		createXmlHttpRequest();  //首先创建精灵对象  
		xmlHttpReq.onreadystatechange=handle;  //指明准备状态改变时回调的函数名    
		var url = "checkusername.jsp?username="+username;////尝试以异步的get方式访问某个URL请求服务器端的一个servlet  
		xmlHttpReq.open("get",url,true);  
		xmlHttpReq.send(null);  //向服务器发送请求  
	}  
		
	function handle()  //状态发生改变时回调的函数  
	{  
		if(xmlHttpReq.readyState==4)  //准备状态为4 
		{	  
		       if(xmlHttpReq.status==200)  //响应状态码为200，代表一切正常 
		       {  
		           var res = xmlHttpReq.responseText;  
		           var result = document.getElementById("result");  
		           if (res!="") result.innerHTML = "<br><a href = 'signup.jsp' style='color:red' >"+res+"</a>";
		       }  
		 }  
	} 
</script>
</head>
<body  >
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3>文章管理系统欢迎您</h3>
						<form action="Signin" name="Project.Action" method="signin">
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="username" class="text" id="inputUsername" onblur="checkUsername()" style="color: #FFFFFF !important" 
									type="text" placeholder="请输入账户" type="submit">
									<span id="result"></span>
							</div>
							
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"
									 id="inputPassword3" type="password" placeholder="请输入密码" type="submit">
							</div>
							<div class="mb2"><button type="submit" class="btn btn-primary btn-lg btn-block">登录</button></div>
							<div class="mb2"><a class="act-but submit" href="signup.jsp"   style="color: #FFFFFF">注册</a></div>
							
						</form>
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script src="js/TweenLite.min.js"></script>
		<script src="js/EasePack.min.js"></script>
		<script src="js/rAF.js"></script>
		<script src="js/demo-1.js"></script>
	</body>
</html>
<!--  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>sign-in</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
		var url = "checkusername.jsp?username="+username;
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
		           var result = document.getElementById("result");  
		           if (res!="") result.innerHTML = "<font color=red>"+"<a href = 'signup.jsp'>"+res+"</font>";
		       }  
		 }  
	} 
</script>
</head>
<body>
    <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form class="form-horizontal" role="form" action = "Signin">
				<div class="form-group">
					 <label for="inputEmail3"  class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-6">
						<input type="text"  name= "username" class="form-control" id="inputUsername" onblur="checkUsername()"/>
						<span id="result"></span>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-6">
						<input type="password" name= "password" class="form-control" id="inputPassword3" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default" >Sign in</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>-->