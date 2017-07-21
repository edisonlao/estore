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
    <script type="text/javascript" src="index/jsutil/jquery-1.7.2.js"></script>
    <title>买家订单</title>
 <SCRIPT LANGUAGE="javascript">
	function kan(ad){
		$("#showadd").empty();
		$("#showadd").append(""+ad+"");
	}
</SCRIPT>     
<link href="index/css/order1.css" type="text/css" rel="stylesheet">
  </head>
  
  <body>
  <div>
		卖家发货地址:<span id="showadd"></span>	
  </div>
    	<form action="">

  			<table>
  				<tr>
  					<td><b>商品名称</b></td>
  					<td><b>卖家</b></td>
  					<td><b>价格</b></td>
  					<td><b>发货地址</b></td>
  					<td><b>订单状态</b></td>
  				</tr>
				<c:forEach var="val" items="${list}">
					<tr>
						<td>
							<div>
								<input type="hidden" name="id" value="val.id"/>
					
								<b>${val.commodity.name }</b>
							</div>
						</td>
						<td>
							<div style="max-width: 300px;max-height:30px;overflow: hidden; white-space: nowrap;text-overflow: ellipsis">
								<b>${val.seller.name }</b>
							</div>
						</td>
						<td>
							<span>￥${val.commodity.price }</span>
						</td>
						<td>
							
								<span><input type="button" value="查看地址" onclick="kan('${val.seller.address }')"/></span>
							
						</td>
						<td>
							
								<c:if test="${val.state=='0'}">订单取消</c:if>
								<c:if test="${val.state=='6'}">待付款</c:if>
								<c:if test="${val.state=='5'}">待发货</c:if>
								<c:if test="${val.state=='4'}">待收货</c:if>
								<c:if test="${val.state=='3'}">已收货</c:if>
								<c:if test="${val.state=='2'}">退货中</c:if>
								<c:if test="${val.state=='1'}">退货成功</c:if>
							
						</td>
						
								<c:if test="${val.state=='6'}">
									<td>
										<input type="button" value="付款" onclick="javascript:location='bsorder/update.do?id=${val.id}&bid=${bid }&change=5'"/>
									</td>
									<td>
										<span><b><input id="quxiao" type="button" value="取消订单" onclick="javascript:location='bsorder/update.do?id=${val.id}&bid=${bid }&change=0'"/></b></span>
									</td>
								</c:if>
								<c:if test="${val.state=='5'}">
									<td>
										<input type="button" value="退货" onclick="javascript:location='bsorder/update.do?id=${val.id}&bid=${bid }&change=2'"/>
									</td>
								</c:if>
								<c:if test="${val.state=='4'}">
									<td>
										<input type="button" value="确认收货" onclick="javascript:location='bsorder/update.do?id=${val.id}&bid=${bid }&change=3'"/>
									</td>
									<td>
										<span><b><input type="button" value="退货" onclick="javascript:location='bsorder/update.do?id=${val.id}&bid=${bid }&change=2'"/></b></span>
									</td>
								</c:if>
						
					</tr>
					<tr>
						<th></th>
					</tr>
				</c:forEach>
			</table>
	 	</form>
	 	<center>
  		总数：${total }&nbsp;&nbsp;当前页：${sp }总页：${pageCount }&nbsp;&nbsp;
  		<a  href="bsorder/queryOrder1.do?currentPage=1&bid=${bid }"><span>首页</span></a>&nbsp;
  		<a  href="bsorder/queryOrder1.do?currentPage=${sp-1 }&bid=${bid }"><span>上页</span></a>&nbsp;
  		<form action="bsorder/queryOrder1.do?bid=${bid }" method="post" style="display: inline;">
  			<input type="text" name="currentPage" size="1"/>
  		</form>
  		<a  href="bsorder/queryOrder1.do?currentPage=${sp+1 }&bid=${bid }"><span>下页</span></a>&nbsp;
  		<a  href="bsorder/queryOrder1.do?currentPage=${pageCount }&bid=${bid }"><span>末页</span></a>&nbsp;

</center>
  </body>
</html>
