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
#submit{
	margin-left: 100px;
	margin-top: 20px;
}
</style>
	</head>

	<body>
		<b>个人信息</b>
		<center>
		<div id="pic"></div>
		<form action="bsbuyer/update.do">
			<input type="hidden" name="id" value="${id }"/>
			<input type="hidden" name="bsbuyer.id" value="${id }"/>
			
			<table>
				
				<c:forEach var="buyer" items="${list}">
				<input type="hidden" name="bsbuyer.createDate" value="${buyer.createDate }"/>
					<tr>
						<td>
							姓&nbsp;&nbsp;名:<input type="text" name="bsbuyer.name" value="${buyer.name }"/>
						</td>
					</tr>
					<tr>
						<td>
							账&nbsp;&nbsp;号:<input type="text" name="bsbuyer.username" value="${buyer.username }"/>
						</td>
					</tr>
					<tr>
						<td>
							密&nbsp;&nbsp;码:<input type="text" name="bsbuyer.password" value="${buyer.password }"/>
						</td>
					</tr>
					<tr>
						<td>
							地&nbsp;&nbsp;址:<input type="text" name="bsbuyer.address" value="${buyer.address }"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="submit" id="submit" value="提交"/>
						</td>
					</tr>
				</c:forEach>
			</table>
			</form>
		</center>
			
	</body>
</html>
