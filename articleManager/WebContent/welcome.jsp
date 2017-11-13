<%@ page language="java" contentType="text/html;  charset=UTF-8"
pageEncoding="UTF-8"
import="java.util.LinkedList,java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8">
 <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>首页</title>
<script src="search/jq.js" type="text/javascript"></script>
<script src="search/la.js" type="text/javascript"></script>
<script src="search/time.js" type="text/javascript"></script>
<link href="search/dist/mfb.css" rel="stylesheet">
<script src="search/dist/lib/modernizr.touch.js"></script>
<LINK href="search/main.css" type="text/css" rel=stylesheet>
<link href="search/base.css" type="text/css" rel="stylesheet" />
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
</head>
<body> 

<% 
String username = (String)session.getAttribute("username"); %>


<div>
	<form id= "input" class = "Project.Action" method="search" action = "gosearch">
		<select name= "searchType" id="type"><!--这里的font-family代表字体 -->
			<option value="1" >按时间查询</option>
			<option value="2" >按关键字查询</option>
			<option value="3" >按题目查询</option>
			<option value="4" >按类型查询</option>
			<option value="5" >全文检索</option>
		</select>
		<input class="inp_srh" name="searchText"  placeholder="对共享文章进行搜索" >
		<input class="btn_srh" onclick="document.getElementById('input').submit();" type="submit" name="submit" value="搜索">
	</form>
</div>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-4 column">
				</div>
				<div class="col-md-4 column">
					<div class="tabbable" id="tabs-126706">
						<ul class="nav nav-tabs">
							<li class="active">
								 <a href="#panel-91376" data-toggle="tab">计算机科学</a>
							</li>
							<li>
								 <a href="#panel-589604" data-toggle="tab">人文</a>
							</li>
							<li>
								 <a href="#panel-599000" data-toggle="tab">地理</a>
							</li>
							<li>
								 <a href="#panel-500000" data-toggle="tab">随笔</a>
							</li>
							
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-91376">
								<p>
									<%List<String> list1 = (List<String>)session.getAttribute("list1");
									List<String> list2 = (List<String>)session.getAttribute("list2");
									List<String> list3 = (List<String>)session.getAttribute("list3");
									List<String> list4 = (List<String>)session.getAttribute("list4");
									for (int i=0; i<list1.size();i+=7){
										out.print("<a href=information?articleid="+list1.get(i)+">"+list1.get(i+1)+"</a>");
										out.print("<br>");
									}
									
									%>
								</p>
							</div>
							<div class="tab-pane" id="panel-589604">
								<p>
									<%
									for (int i=0; i<list2.size();i+=7){
										out.print("<a href=information?articleid="+list2.get(i)+">"+list2.get(i+1)+"</a>");
										out.print("<br>");
									}
								
									%>
								</p>
							</div>
							<div class="tab-pane" id="panel-599000">
								<p>
									<%

									for (int i=0; i<list3.size();i+=7){
										out.print("<a href=information?articleid="+list3.get(i)+">"+list3.get(i+1)+"</a>");
										out.print("<br>");
									}
									%>
								</p>
							</div>
							
							<div class="tab-pane" id="panel-500000">
								<p>
									<%
									
									for (int i=0; i<list4.size();i+=7){
										out.print("<a href=information?articleid="+list4.get(i)+">"+list4.get(i+1)+"</a>");
										out.print("<br>");
									}
									%>
								</p>
							</div>
							
						</div>
					</div>
				</div>
				<div class="col-md-4 column">
				</div>
			</div>
		</div>
	</div>
</div>

<ul id="menu" class="mfb-component--br mfb-zoomin" data-mfb-toggle="hover">
  <li class="mfb-component__wrap">
	<a href="#" class="mfb-component__button--main">
	  <i class="mfb-component__main-icon--resting ion-plus-round"></i>
	  <i class="mfb-component__main-icon--active ion-close-round"></i>
	</a>
	<ul class="mfb-component__list">
	  <li>
		<a  href = "allArticle?username=<%out.print(username);%>"  data-mfb-label="查看自己文章" class="mfb-component__button--child">
		  
		</a>
	  </li>
	    
	  <li>
		<a href ="setArticle.jsp" data-mfb-label="发表文章" class="mfb-component__button--child">
		  
		</a>
	  </li>
	  <li>
		<a href = goEdit?username=<%out.print(username); %>  data-mfb-label="个人信息" class="mfb-component__button--child">
		
		</a>
	  </li>

	  <li>
		<a href="SignIn.jsp" data-mfb-label="注销" class="mfb-component__button--child">		  
		</a>
	  </li>
	</ul>
  </li>
</ul>

<canvas id="background"></canvas>
<script async type="text/javascript" src="js/background.js"></script>
</body>
</html>