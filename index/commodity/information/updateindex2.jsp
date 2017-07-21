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
		<title>修改商品信息</title>

		<STYLE type="text/css">
td {
	width: 200px;
	text-align: center;
}
</STYLE>
	</head>

	<body>
		<center>
		

			<form action="bscommodity/update.do">
				
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
								<img src="${commodity.url }">
							</td>
							<td>
								<input type="text" name="bscommodity.name"
									value="${commodity.name }" />
							</td>
							<td>
								<select name="bscommodity.type">
									<c:if test="${commodity.type=='11'}">
										<option value="11">
											苹果
										</option>
									</c:if>
									<c:if test="${commodity.type=='12'}">
										<option value="12">
											三星
										</option>
									</c:if>
									<c:if test="${commodity.type=='13'}">
										<option value="13">
											华为
										</option>
									</c:if>
									<c:if test="${commodity.type=='14'}">
										<option value="14">
											HTC
										</option>
									</c:if>
									<c:if test="${commodity.type=='15'}">
										<option value="15">
											魅族
										</option>
									</c:if>
									<option value="11">
										苹果
									</option>
									<option value="12">
										三星
									</option>
									<option value="13">
										华为
									</option>
									<option value="14">
										HTC
									</option>
									<option value="15">
										魅族
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
								<input type="submit" value="修改" />
							</td>
						</tr>
					</c:forEach>
				</table>
			</form>
		</center>
	</body>
</html>
