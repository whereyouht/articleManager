<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人信息中心</title>
<style>
	body, html {
		position: absolute;
		top: 0;
		bottom: 0;
		left: 0;
		right: 0;

		margin: 0;
		padding: 0;
	}
	#background {
		position: fixed;
		top: 0;
		left: 0;

		z-index: -100;
	}
</style>

<style type="text/css">
/* ----表单控件CSS开始---- ↓ */
.WellForm *{margin:0;padding:0;}
.WellForm{font-size:12px;font-family:arial;line-height:21px;}
.WellForm pre{float:left;margin-right:10px;}
/*background*/
.WellForm .TextL, .WellForm .TextR, .WellForm .WellText, .WellForm .SelectL, .WellForm .SelectR, .WellForm .WellSelect, .WellForm .WellTextArea .T, .WellForm .WellTextArea .T .TL, .WellForm .WellTextArea .T .TM, .WellForm .WellTextArea .B, .WellForm .WellTextArea .B .BL, .WellForm .WellTextArea .B .BM, .WellForm .WellRadio, .WellForm .WellCheckBox, .WellForm .ButtonL, .WellForm .ButtonR, .WellForm .WellButton{background:url(WellForm/WellForm.gif) no-repeat;}
/*WellText*/
.WellForm .TextL, .WellForm .TextR, .WellForm .WellText{float:left;width:5px;height:21px;}
.WellForm .TextL{background-position:0 0;}
.WellForm .TextR{background-position:right 0;}
.WellForm .TextLH{background-position:0 -21px;}
.WellForm .TextRH{background-position:right -21px;}
.WellForm .WellText{border:0;width:auto;height:17px;padding:2px 0;padding:3px 0 1px\9;*padding:3px 0 1px;font-family:arial;background-repeat:repeat-x;background-position:0 -42px;}
.WellForm .WellTextH{background-position:0 -63px;}
/*WellSelect*/
.WellForm .SelectL, .WellForm .SelectR, .WellForm .WellSelect{float:left;height:21px;}
.WellForm .SelectL{width:3px;background-position:0 -84px;}
.WellForm .SelectR{width:16px;cursor:pointer;background-position:right -84px;margin-right:5px;}
.WellForm .WellSelect{position:relative;cursor:pointer;background-repeat:repeat-x;background-position:0 -105px;}
.WellForm .WellSelect select{display:none;}
.WellForm .WellSelect em{position:absolute;top:0;left:3px;color:#fff;height:21px;display:block;line-height:21px;font-style:normal;}
.WellForm .WellSelect ul{list-style-type:none;position:absolute;top:18px;left:0;z-index:1000;display:none;background:#6C6D70;}
.WellForm .WellSelect ul li{color:#fff;height:20px;cursor:pointer;line-height:20px;padding-left:3px;}
.WellForm .WellSelect ul li.hover{background:#333;}
/*WellTextArea*/
.WellForm .WellTextArea{float:left;}
.WellForm .WellTextArea .T, .WellForm .WellTextArea .T .TL, .WellForm .WellTextArea .T .TM, .WellForm .WellTextArea .B, .WellForm .WellTextArea .B .BL, .WellForm .WellTextArea .B .BM{height:5px;overflow:hidden;}
.WellForm .WellTextArea .T{float:left;width:100%;background-position:right -126px;}
.WellForm .WellTextArea .TH{float:left;width:100%;background-position:right -131px;}
.WellForm .WellTextArea .T .TL{background-position:0 -126px;}
.WellForm .WellTextArea .TH .TL{background-position:0 -131px;}
.WellForm .WellTextArea .T .TM{margin:0 5px;background-repeat:repeat-x;background-position:0 -136px;}
.WellForm .WellTextArea .TH .TM{margin:0 5px;background-repeat:repeat-x;background-position:0 -141px;}
.WellForm .WellTextArea .B{float:left;width:100%;background-position:right -146px;}
.WellForm .WellTextArea .BH{float:left;width:100%;background-position:right -151px;}
.WellForm .WellTextArea .B .BL{background-position:0 -146px;}
.WellForm .WellTextArea .BH .BL{background-position:0 -151px;}
.WellForm .WellTextArea .B .BM{margin:0 5px;background-repeat:repeat-x;background-position:0 -156px;}
.WellForm .WellTextArea .BH .BM{margin:0 5px;background-repeat:repeat-x;background-position:0 -161px;}
.WellForm .WellTextArea .M, .WellForm .WellTextArea .M .MR{float:left;background:url(WellForm/TextArea-1.gif) repeat-y;}
.WellForm .WellTextArea .M{background-position:0 0;}
.WellForm .WellTextArea .M .MR{background-position:right 0;}
.WellForm .WellTextArea .MH, .WellForm .WellTextArea .MH .MR{float:left;background:url(WellForm/TextArea-2.gif) repeat-y;}
.WellForm .WellTextArea .MH{background-position:0 0;}
.WellForm .WellTextArea .MH .MR{background-position:right 0;}
.WellForm .WellTextArea textarea{float:left;border:0;margin:0 5px;overflow:auto;background:url(WellForm/TextArea.gif);font-family:arial;font-size:12px;resize:none;}
/*WellRadio*/
.WellForm .WellRadio{float:left;width:13px;height:13px;cursor:pointer;overflow:hidden;margin:4px 5px 0 0;background-position:-15px -270px;}
.WellForm .WellRadioH{background-position:-15px -284px;}
.WellForm .WellRadio input{margin-top:13px;display:none;}
/*WellCheckBox*/
.WellForm .WellCheckBox{float:left;width:12px;height:12px;cursor:pointer;overflow:hidden;margin:4px 5px 0 0;background-position:0 -270px;}
.WellForm .WellCheckBoxH{background-position:0 -283px;}
.WellForm .WellCheckBox input{margin-top:12px;display:none;}
/*WellButton*/
.WellForm .ButtonL, .WellForm .ButtonR, .WellForm .WellButton{cursor:pointer;float:left;width:5px;height:26px;}
.WellForm .ButtonL{background-position:0 -166px;}
.WellForm .ButtonR{background-position:right -166px;margin-right:10px;}
.WellForm .ButtonLH{background-position:0 -192px;}
.WellForm .ButtonRH{background-position:right -192px;}
.WellForm .WellButton{border:0;width:auto;font-size:12px;color:#fff!important;height:26px;padding:0 10px 3px;*padding-bottom:0;padding-bottom:0\9;font-family:arial;background-repeat:repeat-x;background-position:0 -218px;}
.WellForm .WellButtonH{background-position:0 -244px;}
/* ----表单控件CSS结束---- ↑ */

/* form */
form{float:center;padding:20px;border:2px dashed #ccc;margin:20px 0 0 40px;width:380px;
form .item{float:left;clear:both;width:100%;margin-bottom:10px;}
.WellForm label{float:left;width:4em;height:21px;text-align:right;}
</style>

<script type="text/javascript" src="js/form.js"></script>

</head>
<BODY>
<center>
<h1>个人信息中心</h1>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
			<form action="Edit">
       			<div class="item">
            <label>邮箱：</label>
                   <input type="text" class="form-control" id="EmailOrTel" name="EmailOrTel"  readonly="true" 
                         value="<% List<String> list = (List<String>)session.getAttribute("userInformation");
                         out.print(list.get(2));%>" />
       </div>

       <div class="item">
             <label>用户名：</label>
             <input type="text" class="form-control" id="username" name="username" 
                   value="<% out.print(list.get(1));%>"/> 
       </div>

       <div class="item">
             <label>年龄：</label>
                    <input type="text" class="form-control" id="age" name = "age"
                          value="<% out.print(list.get(4));%> "/>
       </div>

  <div class="item">
    <label>生日：</label>
	<select name="year">
	<option value="1987">1987年</option>
	<option value="1988">1988年</option>
	<option value="1989">1989年</option>
	<option value="1990">1990年</option>
	<option value="1991">1991年</option>
	<option value="1992">1992年</option>
	<option value="1993">1993年</option>
	<option value="1994">1994年</option>
	<option value="1995">1995年</option>
	<option value="1996">1996年</option>
	<option value="1997">1997年</option>
	<option value="1998">1998年</option>
	<option value="1999">1999年</option>
      <option value="2000">2000年</option>
      <option value="2001">2001年</option>
      <option value="2002">2002年</option>
      <option value="2003">2003年</option>
      <option value="2004">2004年</option>
      <option value="2005">2005年</option>
      <option value="2006">2006年</option>
      <option value="2007">2007年</option>
      <option value="2008">2008年</option>
      <option value="2009">2009年</option>
      <option value="2010" selected="selected">2010年</option>
      <option value="2011">2011年</option>
      <option value="2012">2012年</option>
      <option value="2013">2013年</option>
    </select>
    <select name="month">
      <option value="1">1月</option>
      <option value="2">2月</option>
      <option value="3">3月</option>
      <option value="4">4月</option>
      <option value="5">5月</option>
      <option value="6">6月</option>
      <option value="7" selected="selected">7月</option>
      <option value="8">8月</option>
      <option value="9">9月</option>
      <option value="10">10月</option>
      <option value="11">11月</option>
      <option value="10">12月</option>
    </select>
    <select name="day">
      <option value="1">1号</option>
      <option value="2">2号</option>
      <option value="3">3号</option>
      <option value="4">4号</option>
      <option value="5">5号</option>
      <option value="6" selected="selected">6号</option>
      <option value="7">7号</option>
      <option value="8">8号</option>
      <option value="9">9号</option>
      <option value="10">10号</option>
      <option value="11">11号</option>
      <option value="12">12号</option>
      <option value="13">13号</option>
      <option value="14">14号</option>
      <option value="15">15号</option>
      <option value="16">16号</option>
	  <option value="17">17号</option>
	  <option value="18">18号</option>
	  <option value="19">19号</option>
	  <option value="20">20号</option>
	  <option value="21">21号</option>
	  <option value="22">22号</option>
	  <option value="26">23号</option>
	  <option value="24">24号</option>
	  <option value="25">25号</option>
	  <option value="26">26号</option>
	  <option value="27">27号</option>
	  <option value="28">28号</option>
	  <option value="29">29号</option>
	  <option value="30">30号</option>
	  <option value="31">31号</option>
    </select>
  </div>
  
<div class="item">
       <label>性别：</label>
       <% if(list.get(6).equals("man")){
    	   out.print("<input type='radio' name='sex' value='man' checked='checked'/>男   <input type='radio' name='sex' value='woman';  />女");
       } 
       else{
    	   out.print("<input type='radio' name='sex' value='man' />男   <input type='radio' name='sex' value='woman'; checked='checked' />女");
       }%>
</div>


 <div class="item">
       <label>个人简介：</label>
             <textarea cols="50" rows="5" style="width:300px;" name="message" 
             ><% out.print(list.get(7));%></textarea>
</div>
  
<div class="form-group">
       <div class="btn-group btn-group-lg">
      <button class="btn btn-default" type="submit">
          添加</button> 
       </button> <button class="btn btn-default" type="reset">
         重置</button>
    </div>
  </div>
  </div>
</form>
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
</div>
</center>

<canvas id="background"></canvas>
<script async type="text/javascript" src="js/background.js"></script>
</body>
</html>


<!--  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
         value="<%// List<String> list = (List<String>)session.getAttribute("userInformation");
    		//out.print(list.get(2));%>" />
    </div>
  </div>
  
  <div class="form-group">
    <label for="username" class="col-sm-5 control-label">用户名</label>
    <div class="col-sm-3">
      	<input type="text" class="form-control" id="username" name="username" 
      		value="<%	//out.print(list.get(1));%>"/>   <!-- readonly = true 代表不可修改 
    </div>
  </div>

  <div class="form-group">
    <label for="age" class="col-sm-5 control-label">年龄</label>
    <div class="col-sm-3">
      	<input type="text" class="form-control" id="age" name = "age"
         	  value="<%	//out.print(list.get(4));%> "/>
    </div>
  </div>

  <div class="form-group">
    <label for="sex" class="col-sm-5 control-label">性别</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="sex" name = "sex"
           value="<%	//out.print(list.get(5));%> ">
    </div>
  </div>
	  <div class="form-group">
    <label for="birthday" class="col-sm-5 control-label">生日</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="birthday" name = "birthday"
           value="<%//out.print(list.get(6));%> ">
    </div>
  </div>
  
  <div class="form-group">
    <label for="message" class="col-sm-5 control-label">个人简介</label>
    <div class="col-sm-3">
    
      <input type="text" class="form-control"  id="message" name = "message"
         value="<%	//out.print(list.get(7));%> ">
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
</html>-->