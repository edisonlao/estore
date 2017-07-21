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
		<script type="text/javascript" src="index/jsutil/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="index/js/ajaxfileupload.js"> </script>
		<title>修改商品信息</title>
<script type="text/javascript">
  	 $(document).ready(function(){
  		 $("#file").change(function () {
  	 		var file = document.getElementById("file").value;
  		 		$("#imgDiv").val("index/phone/"+file.substring(12));
  		 		frmTest.enctype = 'multipart/form-data';
  		 });
  	 });	
</script>
<STYLE type="text/css">
td {
	width: 200px;
	text-align: center;
}
</STYLE>
	</head>

	<body>
		<center>
			<form action="bscommodity/update.do" method="post"  id="frmTest">

				<table>
					<tr>
						<td>
							产品图片
						</td>
						<td>
							产品名称
						</td>
						<td>
							产品类型
						</td>
						<td>
							产品价格
						</td>
						<td>
							产品库存
						</td>
						<td>
							操作
						</td>
					</tr>

					<c:forEach var="commodity" items="${list}">

						<input type="hidden" name="bscommodity.id"
							value="${commodity.id }" />
						<input type="hidden" name="bscommodity.commodityNo"
							value="${commodity.commodityNo }" />
						<input type="hidden" name="bscommodity.url" id="imgDiv"
							value="${commodity.url }" />
						<input type="hidden" name="bscommodity.remark"
							value="${commodity.remark }" />
						<input type="hidden" name="bscommodity.seller.id"
							value="${commodity.seller.id }" />
						<input type="hidden" name="bscommodity.createDate"
							value="${commodity.createDate }" />
						<tr>

							<td>
								<input type="file" id="file" name="file"/>
							</td>
							<td>
								<input type="text" name="bscommodity.name"
									value="${commodity.name }" />
							</td>
							<td>
								<select name="bscommodity.type">
									<c:if test="${commodity.type=='1'}">
										<option value="1">
											男装
										</option>
									</c:if>
									<c:if test="${commodity.type=='2'}">
										<option value="2">
											女装
										</option>
									</c:if>
									<c:if test="${commodity.type=='3'}">
										<option value="3">
											手机
										</option>
									</c:if>
									<c:if test="${commodity.type=='4'}">
										<option value="4">
											摄影
										</option>
									</c:if>
									<c:if test="${commodity.type=='5'}">
										<option value="5">
											电脑
										</option>
									</c:if>
									<c:if test="${commodity.type=='6'}">
										<option value="6">
											美妆
										</option>
									</c:if>
									<option value="1">
										男装
									</option>
									<option value="2">
										女装
									</option>
									<option value="3">
										手机
									</option>
									<option value="4">
										摄影
									</option>
									<option value="5">
										电脑
									</option>
									<option value="6">
										美妆
									</option>
								</select>
							</td>
							<td>
								<input type="text" name="bscommodity.price"
									value="${commodity.price }" />
							</td>
							<td>
								<input type="text" name="bscommodity.stock"
									value="${commodity.stock }" />
							</td>
							<td>
								<input type="submit" value="提交" />
							</td>
						</tr>
					</c:forEach>
				</table>
			</form>
		</center>
	</body>
</html>
