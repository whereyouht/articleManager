<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
</html>