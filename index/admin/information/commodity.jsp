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
    
    <title>卖家商品</title>
    
<link href="index/css/commodity2.css" type="text/css" rel="stylesheet">
  </head>
  
  <body>
    	<form action="">
    		<center>
	  			<div id="title1"><b>图片</b></div>
	  			<div id="title2"><b>标题</b></div>
	  			<div id="title3"><b>价格</b></div>
	  			<div id="title4"><b>库存</b></div>
	  			<div id="title5"><b>操作</b></div>
			</center>
  			<table>
				<c:forEach var="val" items="${list}">
					<tr>
						<td>
							<div>
								<input type="hidden" name="id" value="val.id"/>
								<img src="${val.url }" style="width: 250px;height: 150px;margin-left: 20px">
							</div>
						</td>
						<td>
							<div style="max-width: 300px;max-height:30px;overflow: hidden; white-space: nowrap;text-overflow: ellipsis">
								<b>${val.remark }</b>
							</div>
						</td>
						<td>
							<span>￥${val.price }</span>
						</td>
						<td>
							<span>${val.stock }</span>
						</td>
						<td>
							<input type="button" value="修改" onclick="javascript:location='bscommodity/queryById.do?id=${val.id}&sid=${sid }'"/>
						</td>
					</tr>
					<tr>
						<th></th>
					</tr>
				</c:forEach>
			</table>
	 	</form>
	 	<center>
  		总数：${total }&nbsp;&nbsp;当前页：${sp }总页：${pageCount }&nbsp;&nbsp;
  		<a  href="bscommodity/queryCommodity.do?currentPage=1&sid=${sid }"><span>首页</span></a>&nbsp;
  		<a  href="bscommodity/queryCommodity.do?currentPage=${sp-1 }&sid=${sid }"><span>上页</span></a>&nbsp;
  		<form action="bscommodity/queryCommodity.do?sid=${sid }" method="post" style="display: inline;">
  			<input type="text" name="currentPage" size="1"/>
  		</form>
  		<a  href="bscommodity/queryCommodity.do?currentPage=${sp+1 }&sid=${sid }"><span>下页</span></a>&nbsp;
  		<a  href="bscommodity/queryCommodity.do?currentPage=${pageCount }&sid=${sid }"><span>末页</span></a>&nbsp;

</center>
  </body>
</html>
