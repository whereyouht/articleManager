<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>查询结果</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8">
 <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<h2>
<%
String searchType = (String)session.getAttribute("searchType");
List<String> list;
if (searchType.equals("1")){
	list = (List<String>)session.getAttribute("resultForsearchbytime");
}

else if (searchType.equals("2")){
	list = (List<String>)session.getAttribute("resultForsearchbykeywords");
}

else if (searchType.equals("3")){
	list = (List<String>)session.getAttribute("resultForsearchbytitle");
}

else if(searchType.equals("4")){
	list = (List<String>)session.getAttribute("resultForsearchbytype");
}
else{
	list = (List<String>)session.getAttribute("resultForsearchbycontent");
}
%></h2>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		<div class="page-header">
				<h1>
					文章管理系统 <small>查询结果</small>
				</h1>
		</div>
		</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			
			<table class="table">
				<thead>
					<tr>
						<th>
							题目
						</th>
						<th>
							内容
						</th>
						<th>
							作者
						</th>
					</tr>
				</thead>
				<tbody>
						<%
						for (int i = 0; i < list.size(); i += 7) 
						{
							out.print("<tr class='success'>");
							out.print("<td><a href=information?articleid="+list.get(i)+">"+list.get(i+1)+"</a>"+"</td>");
						  	out.print("<td>"+list.get(i+2)+"</td>");
						  	out.print("<td>"+list.get(i+5)+"</td>");
						  	
						  	out.print("</tr>");
						}
						 %>
				</tbody>
			</table>
		</div>
	</div>
<canvas id="background"></canvas>
<script async type="text/javascript" src="js/background.js"></script>
</body>
</html>