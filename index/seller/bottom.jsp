<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'bottom.jsp' starting page</title>

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
}
p{
	color:#7f7f7f;
	font-size: 13px;
	font-weight: normal;
}
#d1{
	margin-left:400px;
	margin-top: 20px;
	float: left;
}
#d2{
	margin-left:50px;
	margin-top: 20px;
	float: left;
}
#d3{
	margin-left:50px;
	margin-top: 20px;
	float: left;
}
#d4{
	margin-left:50px;
	margin-top: 25px;
	float: left;
}
span{
	font-size: 20px;
	color:#7f7f7f; 
}
</style>
	</head>

	<body>
	
	<div style="float：none">
		<div id="d1">
			<p>探索</p>
			    <div style="width:150px;height:1px;padding:0px;background-color:#7f7f7f;overflow:hidden;"></div>
			    <p>牛仔休闲系列</p>
			    <p>内衣系列</p>
			    <p>配件系列</p>
			    <p>休闲运动系列</p>
			    <p>香水系列</p>
		</div>
		<div id="d2">
			<p>关于我们</p>
			    <div style="width:150px;height:1px;padding:0px;background-color:#7f7f7f;overflow:hidden;"></div>
			    <p>关于BlackMarket</p>
			    <p>门店地址</p>
			    <p>隐私条款</p>
			    <p>联系我们</p>
			   
		</div>
		<div id="d3">
			<p>购物指南</p>
			    <div style="width:150px;height:1px;padding:0px;background-color:#7f7f7f;overflow:hidden;"></div>
			    <p>网上购买</p>
			    <p>订单追踪</p>
			    <p>在线客服</p>
			    <p>如何成为VIP</p>
			   
		</div>
		<div id="d4">
			<span>邮件订阅</span>
			  <p> <input type="text" style="width: 200px"/></p>
			  <p> <button value="订阅" style="background-color:#4b4b4b;color: #ffffff; border: none;width: 50px;height: 23px">订阅</button></p>
			   
		</div>
	</div>	
		
		
	
	
	</body>
</html>
