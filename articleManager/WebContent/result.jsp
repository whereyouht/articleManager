<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"
import="java.util.LinkedList,java.util.List"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Daxiu Huang">
    <meta name="time" content="2017/9/15 9:51">
		<meta charset="utf-8" />
		<title>GridView</title>
		<link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css">

<link href="jqgrid/css/ui.jqgrid-bootstrap.min.css" rel="stylesheet" />
<link href="jqgrid/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" charset="utf-8"src="jqgrid/js/jquery-3.0.0.min.js"></script>	
<script type="text/javascript" charset="utf-8"src="jqgrid/js/jquery.jqGrid.min.js"></script>
<script type="text/javascript" charset="utf-8"src="jqgrid/js/grid.locale-cn.min.js"></script>
<script type="text/javascript" charset="utf-8"src="jqgrid/js/layer/layer.min.js"></script>
<script type="text/javascript" charset="utf-8"src="jqgrid/js/layer/extend/layer.ext.min.js"></script>
<script type="text/javascript" charset="utf-8" src="jqgrid/js/form.min.js"></script>

	
<script>




</script>
</head>

<body>
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

<style>
.in{height:30px;border-radius:4px;}
.getS{background:#69Ea7c;color:#fff;padding:5px;padding-left:20px;padding-right:20px;border-radius:4px;}
.getS:HOVER{background:#49D44d;cursor:pointer;}
.mesd{color:#C12E2A}
.mesq{color:#4CAE4C}

</style>

</style>
<%List<String> list1 = (List<String>)session.getAttribute("information");%>
		 <div style="padding-Top:5px;background:#ddd;height:40px">
			<label style="margin-left:45px">作者姓名：</label> <input class="in" id="userName" readonly="true"  value=<% out.print(list1.get(1)); %>>
			<label>发布时间：</label> <input class="in" id="honestName" readonly="true" value=<% out.print(list1.get(5)); %>>

			<a href= comment.jsp ><button> 评论 </button></a>
			<a href= deleteshare?articleid=<%out.print(list1.get(0)); %> ><button>删除</button></a>
			<td colspan="2"> <div align="center"><h1>文章内容</h1><br> <textarea name="textfield3" cols="80" rows="20" border="0" readonly="true" ><% out.print(list1.get(2));%></textarea>

</div>
</td>
<input type="text" style="border:0;background:none;">
		 </div>
		 
<canvas id="background"></canvas>

<script async type="text/javascript" src="js/background.js"></script>
</body>
</html>