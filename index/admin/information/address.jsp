<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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

		<title>个人信息</title>

		<style type="text/css">
table {
	width: 100%;
	margin-top:20px;
	float: left;
	float: right;
}

th,td {

	font-weight:lighter;
	font-size:30px;
	width: 100px;
}
#pic{
	width:900px;
	height:300px;
	background-color:#ccc;
	float:right;
	float: left;
	background:url("index/pic3/map1.png") center no-repeat;
}
#change{
	float:left;
	width: 100px;
	height: 30px;
}
</style>
	</head>

	<body>
		<b>发货地址</b>
		<center>
		
			<table align="center">
				
				<c:forEach var="seller" items="${list}">
					<tr>
						<td>
							${seller.address }
						</td>
					</tr>
					<tr>
						<td><div id="pic"></div></td>
					</tr>
					<tr>
						<td><input type="button" id="change" value="修改信息" onclick=""/></td>
					</tr>
				</c:forEach>
			</table>
		</center>
	</body>
</html>
