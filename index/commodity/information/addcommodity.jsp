<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
    
    <title>商品上架</title>
<style type="text/css">
select{
	width: 173px;
}
</style>
  </head>
  
  <body>
   		<center>
			<form action="bscommodity/add.do">

							<input type="hidden" name="bscommodity.url" value="index/pic3/kongbai.jpg"/>
							<input type="hidden" name="bscommodity.seller.id" value="${sid }"/>
							<input type="hidden" name="bscommodity.state" value="0"/>
					
							<p>
								产品编号:<input type="text" name="bscommodity.commodityNo" value=""/>
							</p>
							<p>
								产品名称:<input type="text" name="bscommodity.name" value=""/>
							</p>
							<p>
								产品类型:<select name="bscommodity.type">
									<option value="0">请选择</option>
									<option value="1">男装</option>
									<option value="2">女装</option>
									<option value="3">手机</option>
									<option value="4">摄影</option>
									<option value="5">电脑</option>
									<option value="6">美妆</option>
								</select>
							</p>
							<p>
								产品价格:<input type="text" name="bscommodity.price" value=""/>
							</p>
							<p>
								产品库存:<input type="text" name="bscommodity.stock" value=""/>
							</p>
							<p>
								产品简介:<input type="text" name="bscommodity.remark" value=""/>
							</p>	
							<p>
								<input type="submit" value="提交"/>
								<input type="reset" value="重置"/>
							</p>

			</form>
		</center>
  </body>
</html>
