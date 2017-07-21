<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>买家信息表</title>
    

  </head>
  <%
  	String username = request.getParameter("username");
  	String id = request.getParameter("id");
   %>
<frameset cols="14.6%,1%,*" border="none">
	
	<frame src="index/seller/information/left.jsp?id=<%=id %>"  name="left" scrolling="no" noresize="noresize"/>
	
	<frame src="blog/empty.jsp"  name="kong" scrolling="no" noresize="noresize"/>
	
	<frameset rows="7.6%,20%,7.6%,*">
		
		<frame src="index/seller/information/myuser.jsp"  name="top1" scrolling="no" noresize="noresize"/>
		
		<frame src="index/seller/information/userinfo.jsp?username=<%=username %>&id=<%=id %>"  name="top2" scrolling="no" noresize="noresize"/>
		
		<frame src="index/seller/information/latest.jsp"  name="top3" scrolling="no" noresize="noresize"/>
		
		<frame src="index/seller/information/myorder.jsp"  name="order" scrolling="no" noresize="noresize"/>
		
	</frameset>
	
</frameset>
</html>
