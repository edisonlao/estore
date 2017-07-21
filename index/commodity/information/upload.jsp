<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Struts2上传测试</title>
 <style type="text/css">
 

 </style>
  </head>
  
  <body>

 
  	<center>
  	<br>
  	<br/>
  	<br/>
  		<form action="upload/uploads.do" method="post" enctype="multipart/form-data"> 
  			<input type="file" name="file"/><br>
  			<input type="submit" value="上传">
  		</form>
    </center>
  </body>
</html>
