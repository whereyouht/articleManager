<%@ page contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
    <TITLE> ZTREE DEMO - Simple Data</TITLE>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
	
    <link rel="stylesheet" href="css/bootstrapStyle/bootstrapStyle.css" type="text/css">
	
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="js/jquery.ztree.excheck.js"></script>
    <script type="text/javascript" src="js/jquery.ztree.exedit.js"></script>
    <SCRIPT type="text/javascript">
        <!--
        var setting = {
            view: {
                addHoverDom: addHoverDom,
                removeHoverDom: removeHoverDom,
                selectedMulti: false
            },
            check: {
                enable: true
            },
            data: {
                simpleData: {
                    enable: true
                }
            },
            edit: {
                enable: true
            }
        };

        var zNodes =[
            {id:1, pId:0, name:"玄幻类", open:true},

	{id:2, pId:0, name:"科幻类", open:false},

	{id:3, pId:0, name:"爱情类", open:false},

	{id:4, pId:0, name:"E1", open:false},

	{id:5, pId:0, name:"E2", open:false},

	{id:6, pId:0, name:"E3", open:false},

            {id:7, pId:0, name:"E4", open:false},

            {id:8, pId:0, name:"E5", open:false},

            {id:9, pId:0, name:"E6", open:false},

            {id:10, pId:0, name:"E7", open:false},
        ];

             $(document).ready(function(){
             $.fn.zTree.init($("#treeDemo"), setting, zNodes);
        });

        var newCount = 1;
        function addHoverDom(treeId, treeNode) {
             var sObj = $("#" + treeNode.tId + "_span");
             if (treeNode.editNameFlag || $("#addBtn_"+treeNode.tId).length>0) return;
             var addStr = "<span class='button add' id='addBtn_" + treeNode.tId +
              "' title='add node' onfocus='this.blur();'></span>";
             sObj.after(addStr);
             var btn = $("#addBtn_"+treeNode.tId);
             if (btn) btn.bind("click", function(){
                         var zTree = $.fn.zTree.getZTreeObj("treeDemo");
                zTree.addNodes(treeNode, {id:(100 + newCount), pId:treeNode.id, name:"new node" + (newCount++)});
                return false;
            });
        };
             function removeHoverDom(treeId, treeNode) {
             $("#addBtn_"+treeNode.tId).unbind().remove();
            };
        //-->
    </SCRIPT>
</script>
<script>
$(document).ready(function(){
	$("button").click(function(){
	   var users=[
	   {

	       name:'wangwu',

	       age:'20',

	       birth:'1995-12-11'

	    }];

	   $.ajax({

	        type:'POST',

	        data:JSON.stringify(users),

	        contentType :'application/json',

	        dataType:'json',

	        url :'updatetree,jsp?data='+JSON.stringify(zNodes),

	        success :function(data) {

	            alert("OK");

	        },

	       error :function(e) {

	          alert("error");

	       }});
	});
});
</script>
</HEAD>

<BODY >
<h1>欢迎来到您的文章管理器</h1>
<div style="text-align:center;clear:both;margin-top:50px">
    <script src="/gg_bd_ad_720x90-2.js" type="text/javascript"></script>
    <script src="/follow.js" type="text/javascript"></script>
</div>
<ul id="treeDemo" class="ztree"></ul>
<button>修改内容</button>
</BODY>
</HTML>