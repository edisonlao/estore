<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'copyright.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	padding: 0px;
	border: 0px;
	margin: 0px;
	background: #2e2e2e;
	color: #7f7f7f;
}
</style>
  </head>
  
  <body>
  	<center>
    	<div id="Content" style="margin-top: 10px;float：none">
			COPYRIGHT &copy; 2011&nbsp;-&nbsp;2016&nbsp;&nbsp;
			<a><font style="color:#7f7f7f">黑市商贸有限公司</font>
			</a>
		</div>
	</center>
  </body>
</html>
