<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>b1</title>

<style type="text/css">
body{
	padding: 0px;
	border: 0px;
	margin:0px;
	background:url("index/pic2/blog1.jpg") center no-repeat;
}
p{
	font-size: 40px;
	color: #ffffff;
	margin-left: 30px;
	margin-top: 10px;
}
span{
	font-size: 20px;
	color: #ffffff;
}
</style>
  </head>
  
  <body>
    	<p>应季箱包
    	<br>
    	<span>立即选购 ></span>
    	</p>
  </body>
</html>
