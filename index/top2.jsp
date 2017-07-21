<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  
    <title>top2</title>
    
<script type="text/javascript">
		function jump(){
			window.parent.location.href="index/index.jsp";
		}
		
		function index(username,id){

			window.parent.location.href="chuanmain.do?username="+username+"&id="+parseInt(id);
		}
		function mybm(username,id){

			window.parent.location.href="chuanall.do?username="+username+"&id="+parseInt(id);
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
   <%
  	String username = request.getParameter("username");
  	String id = request.getParameter("id");
   %> 
  <body>
    	<p style="margin-top: 3px;margin-left: 250px;float: left;">
	    	<a type="button" onclick="mybm('<%=username %>','<%=id %>')">我的黑市</a>
	    	<a>|</a>
	    	<a type="button" onclick="index('<%=username %>','<%=id %>')">首页</a>
	    	<a>|</a>
	    	<a type="button" onclick="jump()">退出</a>
    	</p>
    	<button style="background: #4b4b4b;height: 100%;width: 100px;border: none;float: right;margin-right: 300px;color: #fff9f3">我的购物车</button>
  </body>
</html>
