<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <script type="text/javascript" src="index/jsutil/jquery-1.7.2.js"></script>
     <%
  	String username = request.getParameter("username");
  	String id = request.getParameter("id");	
   %> 
    <title>guide</title>
<script src="index/js/guide.js">

</script>
<script type="text/javascript">
		
		function index(username,id,type){
			window.parent.location.href="chuanmain2.do?username="+username+"&id="+parseInt(id)+"&msg="+parseInt(type);
		}
		
</script>
<style type="text/css">
body{
	padding: 0px;
	border: 0px;
	margin:0px;
	background-color:rgba(255,255,255,0);
}
#s1{
	font-size: 55px;
	font-family: Segoe UI;
	font-weight: lighter;
}
#s2{
	font-size: 40px;
	font-family: Segoe UI;
	font-weight: lighter;
}
div{
	text-align: center;
	background-color:rgba(255,255,255,0.9);
	margin-bottom: 1px;
}
a{
	padding: 10px;
	background-color:rgba(255,255,255,0);
}
#d1{
	width:80px;
	margin-left: 10px;
}
#d2{
	width:90px;
	margin-left: 90px;
}
#d3{
	width:90px;
	margin-left: 175px;
}
#d4{
	width:90px;
	margin-left: 260px;
}
#d5{
	width:85px;
	margin-left: 350px;
}
#d6{
	width:90px;
	margin-left: 435px;
}

p{
	background-color:rgba(255,255,255,0);
}
</style>
  </head>
  
  <body>
   	<center>
   		<br>
   		<span id="s1">B</span><span id="s2">lack</span><span id="s1">M</span><span id="s2">arket</span>	
   		<br><br>

			
	   		<a id="a1" type="button" onclick="index('<%=username %>','<%=id %>','1')">&nbsp;男装</a>
	   		<a>|</a>

   				
	   		<a id="a2" type="button" onclick="index('<%=username %>','<%=id %>','2')">女装</a>
	   		<a>|</a>

   					
   			<a id="a3" type="button" onclick="index('<%=username %>','<%=id %>','3')">手机</a>		
   			<a>|</a>	
   				
   			<a id="a4" type="button" onclick="index('<%=username %>','<%=id %>','4')">摄影</a>	
   			<a>|</a>
   					
   			<a id="a5" type="button" onclick="index('<%=username %>','<%=id %>','5')">电脑</a>
   			<a>|</a>
   			
   			<a id="a6" type="button" onclick="index('<%=username %>','<%=id %>','6')">美妆</a>
   			

   	</center>
   			<div id="d1" >
		   			<p><a>上衣</a></p>
		   			<p><a>裤子</a></p>
		   			<p><a>鞋子</a></p>
		   			<p><a>夹克</a></p>
		   			<p><a>卫衣</a></p>
		   			<p><a></a></p>
		   	</div>
		   	<div id="d2" >
		   			<p><a>上衣</a></p>
		   			<p><a>裤子</a></p>
		   			<p><a>鞋子</a></p>
		   			<p><a>裙子</a></p>
		   			<p><a>包包</a></p>
		   			<p><a></a></p>
		   	</div>
		   	<div id="d3" >
		   			<p><a>苹果</a></p>
		   			<p><a>三星</a></p>
		   			<p><a>华为</a></p>
		   			<p><a>HTC</a></p>
		   			<p><a>魅族</a></p>
		   			<p><a></a></p>
		   	</div>
		   	<div id="d4" >
		   			<p><a>佳能</a></p>
		   			<p><a>尼康</a></p>
		   			<p><a>莱卡</a></p>
		   			<p><a>索尼</a></p>
		   			<p><a>宾得</a></p>
		   			<p><a></a></p>
		   	</div>
		   <div id="d5" >
		   			<p><a>苹果</a></p>
		   			<p><a>联想</a></p>
		   			<p><a>宏碁</a></p>
		   			<p><a>索尼</a></p>
		   			<p><a>神舟</a></p>
		   			<p><a></a></p>
		   	</div>
		   	<div id="d6" >
		   			<p><a>Dior</a></p>
		   			<p><a>YSL</a></p>
		   			<p><a>Chanel</a></p>
		   			<p><a>Givenchy</a></p>
		   			<p><a>MAC</a></p>
		   			<p><a></a></p>
		   	</div>
  </body>
</html>
