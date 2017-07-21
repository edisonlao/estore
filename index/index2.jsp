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
    <title>黑市网络商城</title>
<script language="javascript" type="text/javascript">
	$(document).ready(function(){
		$("#guide").mouseover(function(){
			var doc = window.parent.document;
			var iframe = doc.getElementById("guide");
			iframe.style.height="330px";
		});
		$("#guide").mouseout(function(){
			var doc = window.parent.document;
			var iframe = doc.getElementById("guide");
			iframe.style.height="150px";
		});
		
			var msg = $("#msg").val();
         	var ui =document.getElementById("commodity");

         		if(msg>0){
         			$("#movepic").hide();	
         			$("#blog").hide();
         			ui.style.display="block";
         		}else{
         			$("#empty").hide();
         		}
		
	});
	

</script>
	
<style type="text/css">
body{
	padding: 0px;
	border: 0px;
	margin:0px;
}
guide{
	
	opacity:0.5;

}
</style>
  </head>
  
  <body>
  		<input type="hidden" id="msg" value="${msg }"/>
	<center>	
	    <iframe width="100%" height="30px" frameborder="0" src="index/top2.jsp?username=${username }&id=${id }"  scrolling="no">
	    
	    </iframe>
		
		<iframe id="guide" width="27.3%" height="150px" frameborder="0" src="index/guide.jsp?username=${username }&id=${id }" scrolling="no" style="background-color:rgba(255,255,255,0);margin-left:700px; position:absolute;z-index: 999" >
				    
		</iframe>
		
	    <iframe width="100%" height="20px" frameborder="0" src="index/msg.jsp" style="margin-top:152px; z-index: 1;">
	    
	    </iframe>
	    
	    <iframe width="100%" height="30px" id="empty" frameborder="0" src="blog/empty.jsp">
	    
	    </iframe>
	    
	    <iframe id="commodity" frameborder="0" style="display: none;border: 1px;border-style: solid" width="80%" height="1000px" src="index/commodity/index.jsp?msg=${msg }&id=${id }" >
		
		</iframe>
	    
	    <iframe width="84%" height="510px" id="movepic" frameborder="0" src="index/movepic.jsp">
	    
	    </iframe>
	    
	   	<iframe width="66%" height="800px" id="blog" frameborder="0" src="index/blog.jsp">
	    
	    </iframe>
	    
	   	<iframe width="100%" height="30px" frameborder="0" src="blog/empty.jsp">
	    
	    </iframe>
	    
	   	<iframe width="100%" height="30px" frameborder="0" src="index/server.jsp">
	    
	    </iframe>
	    
	    <iframe width="100%" height="230px" frameborder="0" src="index/bottom.jsp">
	    
	    </iframe>
	    
	    <iframe width="100%" height="50px" frameborder="0" src="index/copyright.jsp">
	    
	    </iframe>
    </center>
  </body>
</html>
