<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<script type="text/javascript" src="index/jsutil/jquery-1.7.2.js"></script>
		<title>movepic</title>
		<script language="javascript">
	var curIndex = 0;
	//时间间隔 单位毫秒 
	var timeInterval = 3000;
	var arr = new Array();
	arr[0] = "index/pic/sale.png";
	arr[1] = "index/pic/macbook.png";
	arr[2] = "index/pic/kouhong.png";

	setInterval(changeImg, timeInterval);
	function changeImg() {
		var obj = document.getElementById("obj");
		if (curIndex == arr.length - 1) {
			curIndex = 0;
		} else {
			curIndex += 1;
		}
		obj.src = arr[curIndex];
	}
</script>
		<style type="text/css">
body {
	padding: 0px;
	border: 0px;
	margin: 0px;
	background: #ffffff;
}

#div1 {
	width: 100%;
	height: 95%;
}

span {
	color: 
}
</style>
	</head>

	<body>
		<center>
			<div id="div1">
				<img id="obj" src="index/pic/sale.png"></img>
			</div>
		</center>
	</body>
</html>
