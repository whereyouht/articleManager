<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ page import ="java.util.*,com.shyy.menu.entitys.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Java¶¯Ì¬Ê÷ÐÎ²Ëµ¥</title>
<link rel="stylesheet" href="/MenuDemo/css/demo.css" type="text/css">
	<link rel="stylesheet" href="/MenuDemo/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="/MenuDemo/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="/MenuDemo/js/jquery.ztree.core-3.0.js"></script>
	<!--  <script type="text/javascript" src="/MenuDemo/js/jquery.ztree.excheck-3.0.js"></script>
	  <script type="text/javascript" src="/MenuDemo/js/jquery.ztree.exedit-3.0.js"></script>-->
	<SCRIPT type="text/javascript">
	<!--
		var setting = {
			view: {
				dblClickExpand: false,
				showLine: false
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				onClick: onClick
			}
		};

		var zNodes =[
		<%
		List menuList=(List)request.getAttribute("menuList");
		for(int i=0;i<menuList.size();i++){
			Menu menu=(Menu)menuList.get(i);
			if(i!=menuList.size()-1){%>
				{ id:<%=menu.getId()%>, pId:<%=menu.getpId()%>, name:"<%=menu.getName()%>", rootPId:<%=menu.getRootPId()%> ,url:"<%=menu.getUrl()%>" },
			<%	
			}else{%>
				{ id:<%=menu.getId()%>, pId:<%=menu.getpId()%>, name:"<%=menu.getName()%>", rootPId:<%=menu.getRootPId()%> ,url:"<%=menu.getUrl()%>" }
			<%
			}
		}
		%>
		];

		function onClick(e,treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			zTree.expandNode(treeNode);
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
	<style type="text/css">
		.ztree li button.switch {visibility:hidden; width:1px;}
		.ztree li button.switch.roots_docu {visibility:visible; width:16px;}
		.ztree li button.switch.center_docu {visibility:visible; width:16px;}
		.ztree li button.switch.bottom_docu {visibility:visible; width:16px;}
	</style>
</head>
<body>
<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
</div>
</body>
</html>