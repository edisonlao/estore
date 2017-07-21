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
      <% 
	  	String msg = request.getParameter("msg");
	  	String currentPage = request.getParameter("currentpage");
	  	String username = request.getParameter("username");
	  	String id = request.getParameter("id");
   	  %>
       <script type="text/javascript" src="index/jsutil/jquery-1.7.2.js"></script>
    <title>商品列表</title>
<script type="text/javascript">
	$(function(){
		$.ajax(
			{
				type:"post",
				url:"bscommodity/queryByPage.do",
				dateType:"json",
				success:function(result){
					var obj = jQuery.parseJSON(result);
					var currentPage = null;
					var pageCount = null;
					$.each(obj,function(i,val){
						$("#form").append("<table><tr><td><div><input type='hidden' name='id' value='"+val.id+"'/><img src='"+val.url+"' style='width: 250px;height: 150px;margin-left: 20px'></div></td><td><div style='max-width: 300px;max-height:30px;overflow: hidden; white-space: nowrap;text-overflow: ellipsis'><b>"+val.remark+"</b></div><div><ul><li>免邮费</li><li>9999人付款</li><li>上海</li></ul></div></td><td><span>￥"+val.price+"</span></td><td><input type='button' class='buy' value='购买' onclick='buy("+val.id+","+<%=id %>+")'/></td><td><input type='button' class='add' value='加入购物车'/></td></tr><tr><th></th></tr></table>");						
						currentPage = val.currentPage;
						pageCount = val.pageCount;
					});
					for(var j=0;j<parseInt(pageCount);j++){
						$("center").append("<div><input type='button' value='"+(j+1)+"' onclick='next("+(j+1)+","+<%=id %>+")'/></div>");
					}
				},
				error:function(){
					alert("请求出错");
				}
			}
		);
	});
	
	function next(fr,id){
		window.parent.location.href="bscommodity/queryAll.do?currentPage="+fr+"&bid="+id;
	}
	
	function buy(id,bid){
		window.location.href="bsorder/add.do?commodityId="+parseInt(id)+"&bid="+parseInt(bid);
	}
</script>
<link href="index/css/commodity.css" type="text/css" rel="stylesheet">
  </head>

  <body>
  	<input id="msg" type="hidden" value="${msg }"/>
  	<input id="currentPage" type="hidden" value="<%=currentPage %>"/>
  	<form action="" style="height: 10%;border-bottom-color:#ccc;border-bottom: 1px;border-bottom-style: solid;">
		
    	<div align="center">筛选条件，待开发.........</div>	
  	    
	</form>
  		<form action="" id="form">
			
	 	</form>
		<center>
			
		</center>
  </body>
</html>
