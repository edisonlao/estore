<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
		<title>登录教务管理系统</title>
		<script type="text/javascript">
    $(function(){
		$("#username").bind("focusout",function(){
			$.get("AjaxServlet",{username:$("#username").val()},function(result){
				$("#show").html(result.substring(0,8));
			});
		});	
		
		$("#password").bind("focusout",function(){
			$.get("AjaxServlet",{password:$("#password").val()},function(result){
				$("#show2").html(result.substring(8,19));
				
			});
		});	
		
		$("#sumit").click(function(){
			$.get("AjaxServlet",{username:$("#username").val(),password:$("#password").val()},function(result){
				$("#show").html(result.substring(0,8));
				$("#show2").html(result.substring(8,19));
			
			});
		});	
		
		
	});
	
    </script>
		<style type="text/css">
span {
	font-weight: lighter;
}

body {
	background: url("index/pic/register.png") no-repeat;
}

div {
	margin-left: 695px;
	margin-top: 335px;
	width: 500px;
	height: 300px;
}

tr {
	margin-top: 100px;
	margin-left: 50px;
	font-family: 微软雅黑;
	font-size: 20px;
}

#tr1 {
	margin-top: 10px;
	color: black;
}

#sumit {
	width: 375px;
	height: 50px;
	margin-top: 265px;
	margin-left: 13px;
	background-color: rgba(255, 255, 255, 0);
	border: 0px;
}

input:-webkit-autofill {
	-webkit-box-shadow: 0 0 0px 1000px white inset;
}
#name {
	height: 50px;
	width: 295px;
	position: absolute;
	margin-top: 10px;
	margin-left: 90px;
	border: 0px;
	background-color: transparent;
	font-size: 20px;
	outline: none;
}

#username {
	height: 50px;
	width: 295px;
	position: absolute;
	margin-top: 79px;
	margin-left: 90px;
	border: 0px;
	background-color: transparent;
	font-size: 20px;
	outline: none;
}

#password {
	height: 49px;
	width: 295px;
	position: absolute;
	margin-top: 149px;
	margin-left: 90px;
	border: 0px;
	background-color: transparent;
	font-size: 20px;
	outline: none;
}

#r1 {
	position: absolute;
	margin-top: 220px;
}
</style>


	</head>

	<body>


		<div>
			<form action="register.do" method="post">
				<center>
					<br>
					<br>
					<br>
					<br>
					<table>
						<tr>
							<td>
								<input type="text" id="name" name="name" value=""
									onblur="zhanghao()" />
							</td>

						</tr>
						<tr>
							<td>
								<input type="text" id="username" name="username" value=""
									onblur="zhanghao()" />
							</td>

						</tr>
						<tr>
							<td>
								<input type="password" id="password" name="password" value="" />
							</td>

						</tr>
						<tr>
							<td>
								<center>
									<span> <%
    						Object error = request.getAttribute("error");
    						String error2 = "";
    						if(error!=null&&!error.equals("")&&!error.equals("null")){
    							error2 = (String)error;
    						}
    					 %> <%=error2 %> </span>
								</center>
							</td>
						</tr>
						<tr>
							<td id="r1">
								&nbsp;
								
								<input type="radio" name="role" value="1" />
								<span>买&nbsp;家</span>
								<input type="radio" name="role" value="2" />
								<span>卖&nbsp;家</span>
							</td>
						</tr>
						<tr>

							<td>
								<center>
									<input id="sumit" type="submit" name="submit" value=""
										onclick="zhanghao()" />
								</center>
							</td>
						</tr>
					</table>
				</center>
			</form>
		</div>


	</body>
</html>
