<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://localhost:8080/mango/cart/list.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>订单页面</title>
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/cart.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/product.css"
	rel="stylesheet" type="text/css" />
<script>
function fenye(curPage){
	location.href="${pageContext.request.contextPath}/order/OrderServlet?m=list&curPage="+curPage;
}
 </script>
</head>
<body>

	<div class="container header">
		<div class="span5">
			<div class="logo">
				<a href="./网上商城/index.htm"> <img
					src="${pageContext.request.contextPath}/image/vimly.gif"
					alt="" /> </a>
			</div>
		</div>
		<div class="span9">
			<div class="headerAd">
				<img src="${pageContext.request.contextPath}/image/header.jpg"
					width="320" height="50" alt="正品保障" title="正品保障" />
			</div>
		</div>

		<%@ include file="menu.jsp"%>

	</div>

	<div class="container cart">

		<div class="span24">

			<div class="step step1">
				<ul>

					<li class="current"></li>
					<li>我的订单</li>
				</ul>
			</div>

			<table>
				<tbody>
					<c:forEach items="${list}" var="order">
						<tr>
							<th colspan="5">订单编号:${order.id}&nbsp;&nbsp;&nbsp;&nbsp;订单金额:<font
								color="red">${order.total}
							</font>
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">
								<c:if test="${order.state == 1}">
									<a href="${ pageContext.request.contextPath }/order/OrderServlet?m=payMoney&id=${order.id}">付款</a>
								</c:if>
								<c:if test="${order.state == 2}">
									已付款
								</c:if>
								<c:if test="${order.state == 3}">
									<a href="${ pageContext.request.contextPath }/order/OrderServlet?m=receive&id=${order.id}">确认收货</a>
								</c:if>
								<c:if test="${order.state == 4}">
									交易成功
								</c:if>
							</font>
							</th>
						</tr>
						<tr>
							<th>图片</th>
							<th>商品</th>
							<th>价格</th>
							<th>数量</th>
							<th>小计</th>
						</tr>
						<c:forEach items="${order.orderItems}" var="item">
							<tr>
								<td width="60"><img
									src="${pageContext.request.contextPath}/${item.product.image}" />
								</td>
								<td>${item.product.name}</td>
								<td>${item.product.shopPrice}</td>
								<td class="quantity" width="60">${item.count}</td>
								<td width="140"><span class="subtotal">￥${item.subtotal}
								</span></td>
							</tr>
						</c:forEach>
					</c:forEach>
					<font>
    当前页:第${page.currentPage}页 | 总记录数:${page.count}条 | 每页显示:${page.pageSize}条 | 总页数:${page.pageCount}页</font>　
<c:forEach begin="1" end="${page.pageCount}" var="wp">
    <c:if test="${page.currentPage==wp}"><b><font color="red">${wp}</font></b></c:if>
    <c:if test="${page.currentPage!=wp}"><a href="javascript:fenye('${wp}')" class="a03">${wp}</a></c:if>
</c:forEach>
				</tbody>
			</table>

		</div>

	</div>
	<div class="container footer">
		<div class="span24">
			<div class="footerAd">
				<img src="${pageContext.request.contextPath}/image/r___________renleipic_01/footer.jpg" alt="我们的优势"
					title="我们的优势" height="52" width="950"/>
			</div>
		</div>
		<div class="span24">
			<ul class="bottomNav">
				<li><a href="#">关于我们</a> |</li>
				<li><a href="#">联系我们</a> |</li>
				<li><a href="#">诚聘英才</a> |</li>
				<li><a href="#">法律声明</a> |</li>
				<li><a>友情链接</a> |</li>
				<li><a target="_blank">支付方式</a> |</li>
				<li><a target="_blank">配送方式</a> |</li>
				<li><a>SHOP++官网</a> |</li>
				<li><a>SHOP++论坛</a></li>
			</ul>
		</div>
		<div class="span24">
			<div class="copyright">Copyright © 2005-2015 网上商城 版权所有</div>
		</div>
	</div>
</body>
</html>