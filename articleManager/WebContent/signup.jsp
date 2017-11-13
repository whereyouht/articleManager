<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
        <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>文章管理系统</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <script src="js/html5.js"></script>
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
    //检测用户名是否已经被注册  
    function checkUsername()  
    {  
        var username = document.getElementById("inputUsername").value;  
        if(username=="")  
        {  
            alert("用户名必须填写！");  
            return false;  
        }  
        
        createXmlHttpRequest();  //首先创建精灵对象  
        xmlHttpReq.onreadystatechange=handle;  //指明准备状态改变时回调的函数名  
        var url = "signupUsername.jsp?username="+username;//尝试以异步的get方式访问某个URL   //请求服务器端的一个servlet  
        xmlHttpReq.open("get",url,true);      //向服务器发送请求  
        xmlHttpReq.send(null);  
    }  
    function handle() //状态发生改变时回调的函数    
    {  
        if(xmlHttpReq.readyState==4)  //准备状态为4  
        {     
               if(xmlHttpReq.status==200)  //响应状态码为200，代表一切正常  
               {  
                   var res = xmlHttpReq.responseText;  
                   var result = document.getElementById("resultUsername");  
                   if (res!="") result.innerHTML = "<br><font color=red>"+res+"</font>";
               }  
         }  
    } 
        
    function checkEmail()  
    {  
        var Email = document.getElementById("inputEmail").value;  
        if(Email=="")  
        {  
            alert("邮箱必须填写！");  
            return false;  
        }  
        createXmlHttpRequest();   //首先创建精灵对象  
        xmlHttpReq.onreadystatechange=handleEmail;   //指明准备状态改变时回调的函数名  
        var url = "signupEmail.jsp?Email="+Email;//尝试以异步的get方式访问某个URL  //请求服务器端的一个servlet  
        xmlHttpReq.open("get",url,true);  //向服务器发送请求  
        xmlHttpReq.send(null);  
    } 
    function handleEmail()  
    {  
        if(xmlHttpReq.readyState==4)   //准备状态为4  
        {     
               if(xmlHttpReq.status==200)   //响应状态码为200，代表一切正常  
               {  
                   var res = xmlHttpReq.responseText;  
                   var result = document.getElementById("resultEmail");  
                   if (res!="") result.innerHTML = "<br><font color=red>"+res+"</font>";
               }  
         }  
    } 
</script>
</head>
<body>

<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <div class="logo_box">
                <h1>注册界面</h1>
                <form action="Signup" class="Project.Action" method="signup" id="input">
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="username" id="inputUsername" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入用户名" onchange="checkUsername()">
                     <span id= "resultUsername"></span>
                    </div>

                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="EmailOrTel" id="inputEmail" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" type="email"  placeholder="请输入邮箱" onchange="checkEmail()">
                        <span id= "resultEmail"></span>
                    </div>
                    
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" type="text" placeholder="请输入密码">
                    </div>

                    <div>
                        <td><p><font size = "5" face ="arial" color ="grey">性别：</font></td>
                        <td> <input type="radio" name="sex" value="man" checked />男</td>
                        <td> <input type="radio" name="sex" value="woman"  />女</td>
                    </div>
                   
            		<div class="mb2"><a class="act-but submit" onclick="document.getElementById('input').submit();"  style="color: #FFFFFF">注册</a></div>
					<div class="mb2"><a class="act-but submit" href="SignIn.jsp"   style="color: #FFFFFF">返回</a></div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /container -->
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
</html>-->