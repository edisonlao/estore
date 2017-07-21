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
    <title>商品浏览</title>
    <script type="text/javascript">
	$(function(){
		var msg = document.getElementById("msg").value; 
		$.ajax(
			{
				type:"post",
				url:"bscommodity/queryByPage.do?msg="+msg,
				dateType:"json",
				success:function(result){
					var obj = jQuery.parseJSON(result);
					var currentPage = null;
					var pageCount = null;
					$.each(obj,function(i,val){
						currentPage = val.currentPage;
						pageCount = val.pageCount;
					});
					for(var j=0;j<parseInt(pageCount);j++){
						$("#center").append("<div><input type='button' value='"+(j+1)+"' onclick='next("+(j+1)+","+${hot }+","+${msg }+")'/></div>");
					}
				},
				error:function(){
					alert("请求出错");
				}
			}
		);
	});
	
	function next(fr,hot,msg){
		window.location.href="bscommodity/queryAll2.do?currentPage="+fr+"&hot="+hot+"&msg="+parseInt(msg);
	}
	
	function hot(){
		var msg = document.getElementById("msg").value; 
		window.location.href="bscommodity/queryAll2.do?hot=1&msg="+parseInt(msg);
	}
</script>
<link href="index/css/commodity.css" type="text/css" rel="stylesheet">
  </head>
 <body>
	<form action="" style="height: 10%;border-bottom-color:#ccc;border-bottom: 1px;border-bottom-style: solid;">
		
    	<center>
    		<b><input type="button" value="热卖" onclick="hot()"/></b>
    	</center>
  	    
	</form>
      	<input id="msg" type="hidden" value="${msg }"/>
   
  		<form action="">
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
							<div>
								<ul>
									<li>免邮费</li>
									<li>库存:${val.stock }</li>
									<li>总销量:${val.sales }</li>
									<li>发货地址:${val.seller.address }</li>
								</ul>
							</div>
						</td>
						<td>
							<span>￥${val.price }</span>
						</td>
						
					</tr>
					<tr>
						<th></th>
					</tr>
				</c:forEach>
			</table>
	 	</form>
		<center id="center">
		
		</center>
</body> 
</html>
