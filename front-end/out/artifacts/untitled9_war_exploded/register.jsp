<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
     <base href="<%=basePath%>">
       
     <title>注册页面</title>
       
     <meta http-equiv="pragma" content="no-cache">
     <meta http-equiv="cache-control" content="no-cache">
     <meta http-equiv="expires" content="0"> 
     <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
     <meta http-equiv="description" content="This is my page">
     <!--
 <link rel="stylesheet" type="text/css" href="styles.css">
 -->
     </head>
  
 <body>
 <form action="register_action.jsp" method="post">
      <table>
       <tr>
        <td colspan="2">注册窗口</td>
       </tr>
       <tr>
        <td>用户名：</td>
        <td><input type="text" name="username" /></td>
       </tr>
          <tr>
              <td>性别：</td>
              <td><input type="radio" name="sex" value="男" checked />男</td>>
              <td> <input type="radio" name="sex" value="女"  />女</td>>
          </tr>
    <tr>
        <td>地区:</td>
        <td><input type="text" name="area" /></td>
    </tr>
       <tr>
        <td>密码：</td>
        <td><input type="text" name="password1" /></td>
       </tr>
       <tr>
        <td>确认密码：</td>
        <td><input type="text" name="password2" /></td>
       </tr>
       <tr>
        <td>email：</td>
        <td><input type="text" name="email" /></td>
       </tr>

       <tr>
        <td colspan="2"><input type="submit" value="注册" /> <a href="login.jsp">返回</a></td>
       </tr>
      </table>
     </form>
</body>
</html>