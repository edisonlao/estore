<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'blog.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<frameset rows="66%,1.2%,*" border="15px" bordercolor="#ffffff" frameborder="no" >

	<frameset cols="40%,1%,*" bordercolor="#ffffff" >
		<frameset rows="49%,2%,*" >
			<frame src="blog/b1.jsp" scrolling="no">
			<frame src="blog/empty.jsp">
			<frame src="blog/b2.jsp" scrolling="no">
		</frameset>
		<frame src="blog/empty.jsp">
		<frame src="blog/b3.jsp" scrolling="no">
	</frameset>
	
	<frame src="blog/empty.jsp">
	
	<frameset cols="49.5%,1%,*" bordercolor="#ffffff">
		<frame src="blog/b4.jsp" scrolling="no">
		<frame src="blog/empty.jsp">
		<frame src="blog/b5.jsp" scrolling="no">
	</frameset>
</frameset>
</html>
