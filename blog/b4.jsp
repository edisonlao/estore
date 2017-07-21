<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'b1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body{
	padding: 0px;
	border: 0px;
	margin:0px;
	background:url("index/pic2/blog4.jpg") right no-repeat;
}
p{
	font-size: 40px;
	color: #ffffff;
	margin-right: 15px;
	margin-top: 10px;
	float: right;
}
span{
	font-size: 20px;
	color: #ffffff;
}
</style>
  </head>
  
  <body>
     <p>男士新款
    	<br>
    	<span>立即选购 ></span>
    	</p>
  </body>
</html>
