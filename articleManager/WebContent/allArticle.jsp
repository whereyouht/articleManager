<%@ page contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.botCenter{ 
width:100%; height:60px; line-height:10px;
 position:fixed; 
 bottom:0px; 
 left:0px; 
 font-size:14px; 
 color:#000; 
 text-align:center;
 }
        .center-in-center{
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

</style>
</head>
 <body>
  <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		<div class="page-header">
				<h1>
					文章管理系统 <small>详细信息</small>
				</h1>
		</div>
		</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<h3>
				文章信息
			</h3>
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
							发表时间
						</th>
						<th>是否共享</th>
						<th>修改</th>
						<th>删除</th>
					</tr>
				</thead>
				<tbody>
						<%List<String> list = (List<String>)session.getAttribute("allarticle");
						for (int i = 0; i < list.size(); i += 7) 
						{
							out.print("<tr class='success'>");
						  	
						  	out.print("<td>"+list.get(i+1)+"</td>");
						  	out.print("<td>"+list.get(i+2)+"</td>");
						  	out.print("<td>"+list.get(i+4)+"</td>");
						  	if(list.get(i+3).equals("1") || list.get(i+3).equals("on")){
						  		out.print("<td>"+"是"+"</td>");
						  	}
						  	else{
						  		out.print("<td>"+"否"+"</td>");
						  	}
						  	out.print("<td><a href=gotoEdit?articleid="+list.get(i)+"><button class='btn btn-default btn-primary' type=\"button\">修改</button></a></td>");
						  	out.print("<td><a href=Delete?articleid="+list.get(i)+"><button class='btn btn-default btn-primary' type=\"button\">删除</button></a></td>");
						  	out.print("</tr>");
						}
						 %>
				</tbody>
			</table>
		</div>
	</div>
		
</body>
</html>
<!--  
 <html>
  <head>
    <title>展示所有文章</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=GB2312">
    <link rel="stylesheet" href="jquery.treeview.css" />
    <script src="jquery.js" type="text/javascript"></script>
    <script src="jquery.cookie.js" type="text/javascript"></script>
    <script src="jquery.treeview.js" type="text/javascript"></script>

  </head>
  
  <body>
  	<button  type="button"  onchange="add()">增加</button>
	<button  type="button"  onchange="add()">删除</button>
	<button  type="button"  onchange="add()">重命名</button>
    
    <ul id="tree" class="filetree">
        <li><span class="folder">系统管理</span>
            <ul>
                <li><span class="folder">部门管理</span></li>
                <li><span class="folder">岗位管理</span>
                    <ul>
                        <li><span class="folder">岗位添加</span>
                        <ul></ul></li>
                        <li><span class="folder">岗位删除</span></li>
                    </ul>
                </li>
                <li><span class="folder">用户管理</span>
                    <ul>
                        <li><span class="folder">添加用户</span></li>
                        <li><span class="folder">修改用户</span></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><span class="folder">审批流转</span></li>
    </ul>
    
   <script type="text/javascript">
    $("#tree").treeview();
   </script>
  </body>
</html>
 -->