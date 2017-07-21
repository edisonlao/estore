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
	margin-left: 280px;
	margin-top:20px;
	position: absolute;
	float: left;
}

th,td {
	text-align: left;
	font-size:30px;
	width: 100px;
	font-weight: lighter;
}
#pic{
	width:150px;
	height:210px;
	background-color:#ccc;
	margin-top:30px;
	margin-left: 100px;
	float: left;
}
#change{
	position:absolute;
	margin-top:300px;
	margin-left:50px;
	width: 100px;
	height: 30px;
}
</style>
	</head>

	<body>
		<b>个人信息</b>
		<center>
		<div id="pic"></div>
			<table>
				
				<c:forEach var="buyer" items="${list}">
					<tr>
						<td>
							姓&nbsp;&nbsp;名:${buyer.name }
						</td>
					</tr>
					<tr>
						<td>
							账&nbsp;&nbsp;号:${buyer.username }
						</td>
					</tr>
					<tr>
						<td>
							密&nbsp;&nbsp;码:${buyer.password }
						</td>
					</tr>
					<tr>
						<td>
							注册日期:${buyer.createDate }
						</td>
					</tr>
					<tr>
						<td>
							最近登录:${buyer.createTime }
						</td>
					</tr>
				</c:forEach>
			</table>
		</center>
			<input type="button" id="change" value="修改信息" onclick="javascript:location='bsbuyer/queryById.do?id=${id}'"/>
	</body>
</html>
