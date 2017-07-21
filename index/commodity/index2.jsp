<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品页面</title>
<style type="text/css">

</style>
  </head>
  <% 
  	String msg = request.getParameter("msg"); 
  	String currentPage = request.getParameter("currentPage");
  	if(currentPage==null||currentPage.equals("")){
  		currentPage="1";
  		System.out.println("第一关:"+currentPage);
  	}
  %>
	<frameset rows="*" border="0px">

		
		<frame src="bscommodity/queryAll2.do?msg=<%=msg %>&currentPage=<%=currentPage %>"  name="condition" noresize="noresize" scrolling="no"/>
	</frameset>

</html>
