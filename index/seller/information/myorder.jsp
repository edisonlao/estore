<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单详情</title>
<style type="text/css">
table{
	background-color: #ccc;
	width: 100%;
	height: 100%;
}
</style>
  </head>
  
  <body>
	<table>
  		<tr>
  			<td>
  				<input type="text" style="width: 100%;height: 100%" value="List<?> list = baseSerive.queryAll('from BsOrder where seller_id='+id,currentPage,pageSize);"/>
  			</td>
  		</tr>
  	</table>	</body>
</html>
