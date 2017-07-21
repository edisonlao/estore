<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>账号信息</title>
<style type="text/css">

#d2{
	background-color: #ccc;	
}
span{
	margin-left: 30px;
	font-size: 30px;
	font-weight: lighter;
}
p{
	margin-left: 30px;
}
table{
	background-color: #ccc;	
	width:100%;
	height:100%;
}
</style>
  </head>
  
  <body>
 	<table>
    	<tr id="d2">
    		<td><span>会员账号</span>
    		<% String username = request.getParameter("username"); %>
    		<p><%=username %></p>
    		</td>
    	</tr>
	</table>
  </body>
</html>
