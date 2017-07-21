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
						$("form").append("<table><tr><td><div><input type='hidden' name='id' value='"+val.id+"'/><img src='"+val.url+"' style='width: 250px;height: 150px;margin-left: 20px'></div></td><td><div style='max-width: 300px;max-height:30px;overflow: hidden; white-space: nowrap;text-overflow: ellipsis'><b>"+val.remark+"</b></div><div><ul><li>免邮费</li><li>9999人付款</li><li>上海</li></ul></div></td><td><span>￥"+val.price+"</span></td></tr><tr><th></th></tr></table>");
						currentPage = val.currentPage;
						pageCount = val.pageCount;
					});
					for(var j=0;j<parseInt(pageCount);j++){
						$("center").append("<div><input type='button' value='"+(j+1)+"' onclick='next("+(j+1)+")'/></div>");
					}
				},
				error:function(){
					alert("请求出错");
				}
			}
		);
	});
	
	function next(fr){
		window.parent.location.href="bscommodity/queryAll2.do?currentPage="+fr;
	}
</script>
<link href="index/css/commodity1.css" type="text/css" rel="stylesheet">
  </head>
  <% 
  	String msg = request.getParameter("msg");
  	String username = request.getParameter("username");
  	String id = request.getParameter("id");
   %>
  <body>
  	<input id="msg" type="hidden" value="${msg }"/>
  		<form action="">
			
	 	</form>
		<center>
			
		</center>
  </body>
</html>
