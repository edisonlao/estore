<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>top1</title>
    
<script type="text/javascript">
		function login(){
			window.parent.location.href="index/Login.jsp";
		}
		
		function register(){
			window.parent.location.href="index/Register.jsp";
		}
		function index(){
			window.parent.location.href="index/index.jsp";
		}
</script>
<style type="text/css">
body{
	padding: 0px;
	border: 0px;
	margin:0px;
	background:#e0e0e0;
}
a{
	padding: 10px;
	font-size:10px;
	background-color:rgba(255,255,255,0);
	color:black;
	text-decoration: none;
}
</style>
  </head>
  
  <body>
    	<p style="margin-top: 3px;margin-left: 250px;float: left;">
	    	<a type="button" onclick="login()">登录</a>
	    	<a>|</a>
	    	<a type="button" onclick="register()">注册</a>
	    	<a>|</a>
	    	<a type="button" onclick="index()">首页</a>
    	</p>
    	
  </body>
</html>
