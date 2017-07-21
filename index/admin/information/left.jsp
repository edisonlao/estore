<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>left</title>
<style type="text/css">
body{
	background-color: #ccc;
	margin: 0px;
}
#l1{
background-color: #a7a7a7;
width:100%;
padding: 0px;
border: 0px;
margin: 0px;
}
#no{
height: 10px;
}
span{
	margin-left: 10px;
	font-weight: lighter;
}
#l2,#l3,#l4{
	margin-left: 10px;
}
#a1,#a2,#a3,#a4,#a5,#a6,#a7,#a8,#a9{
	font-weight: lighter;	
	text-decoration: none;
	color: black;
}
p{
padding: 0px;
margin: 0px;
border: 0px;
}
</style>
  </head>
    <%
  	int id = Integer.parseInt(request.getParameter("id"));	
   %>
  <body>
  	<div id="no"></div>
    	<div id="l1">
    		<span>我的账户</span>
    	</div>
    	<div id="l2">
    		<b>设置</b>
    		<p><a id="a1" href="bsbuyer/queryAll2.do?admin=1" target="order">买家信息</a></p>
    		<p><a id="a2" href="bsseller/queryAll2.do?admin=1" target="order">卖家信息</a></p>
    	</div>
    	
    	<div id="l3">
    		<b>商品中心</b>
    		<p><a id="a3" href="bscommodity/queryCommodity.do" target="order">商品名称</a></p>
    		<p><a id="a4" href="bscommodity/queryCommodity.do" target="order">商品类型</a></p>
    		<p><a id="a5" href="bscommodity/queryCommodity.do" target="order">商品价格</a></p>
    		<p><a id="a6" href="bscommodity/queryCommodity.do" target="order">商品库存</a></p>
    		<p><a id="a7" href="bscommodity/queryCommodity2.do?admin=1" target="order">商品上架</a></p>
    		<p><a id="a8" >商品下架</a></p>
    	</div>
    	
  </body>
</html>
