<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>查询结果</title>
</head>
<body>
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
out.print(list.size()+"<br>");
for (int i = 0; i < list.size(); i+=7){
	out.print(list.get(i)+"   "+list.get(i+1)+"   "+list.get(i+5)+"<br>");
}
%>
</body>
</html>