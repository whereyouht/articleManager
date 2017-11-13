<%@ page language="java" contentType="text/html;charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <style>
                         form {
                                margin: 0;
                          }
                         textarea {
                                display: block;
                          }
                    </style>
            <link rel="stylesheet" href="kindeditor/themes/default/default.css" />
		<script charset="utf-8" src="kindeditor/kindeditor-min.js"></script>
		<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
                   <script>
                         var editor;
                                KindEditor.ready(function(K) {
                                      editor = K.create('textarea[name="content"]', {
                                      resizeType : 1,
                                      allowPreviewEmoticons : false,
                                      allowImageUpload : false,
                                      items : [
                                              'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
                                              'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
                                              'insertunorderedlist', '|', 'emoticons', 'image', 'link']
                                      });
                                 });
                    </script>
<title>Insert title here</title>
</head>
<body>
<h3><%
List<String> list1 = (List<String>)session.getAttribute("updateArticle");

%></h3>
<center>
<h1 >修改文章</h1>

     
<div id="main" role="main">
  
            <form action = "<% out.print("updateArticle?username="+list1.get(5)+"&&"+"title="+list1.get(1)+"&&"+"articleid="+list1.get(0)); %>">
                    <div class="form-group">
                          <div class="col-sm-12">
                                 <div id="simple-editor">
                              <input type="text" class="form-control" id="Title" name="Title" value = "<%
    		out.print(list1.get(1));%>" style="width:700px;height:30px;" />
                             <textarea name="content" placeholder= "请在此输入文章正文"  style="width:700px;height:200px;visibility:hidden;"><%out.print(list1.get(2));%></textarea>
                                      </div>
                          </div>
                    </div>

  </div>    	
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-4">
		<div class="btn-group btn-group-lg">
		 <div class="checkbox">
		<label><input type="checkbox" name="share"/>文章是否共享</label>
	</div>
				 <button class="btn btn-default" type="submit">
				  添加</button> 
				 </button> <button class="btn btn-default" type="reset">
				 重置</button>
				  
		</div>
	</div>
  </div>
  </form>
</center>
</body>
</html>
