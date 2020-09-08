<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="span10 last">
	<div class="topNav clearfix">
		<ul>
			<c:if test="${user == null}">
			<li id="headerLogin" class="headerLogin" style="display: list-item;">
				<a href="${ pageContext.request.contextPath }/jsp/login.jsp">登录</a>|</li>
			<li id="headerRegister" class="headerRegister"
				style="display: list-item;"><a href="${ pageContext.request.contextPath }/jsp/regist.jsp">注册</a>|
			</li>
			</c:if>
			<c:if test="${user != null}">
			<li id="headerLogin" class="headerLogin" style="display: list-item;">
				${user.name}
				|</li>
			<li id="headerLogin" class="headerLogin" style="display: list-item;">
				<a href="${ pageContext.request.contextPath }/order/OrderServlet?m=list">我的订单</a>
			|</li>
			<li id="headerRegister" class="headerRegister"
				style="display: list-item;"><a href="${ pageContext.request.contextPath }/UserServlet?m=quit">退出</a>|
			</li>
			</c:if>
		
			<li><a>会员中心</a> |</li>
			<li><a>购物指南</a> |</li>
			<li><a>关于我们</a></li>
		</ul>
	</div>
	<div class="cart">
		<a href="${ pageContext.request.contextPath }/CartServlet?m=myCart">购物车</a>
	</div>
	<div class="phone">
		客服热线: <strong>96008/53277764</strong>
	</div>
</div>
<div class="span24">
	<ul class="mainNav">
		<li><a href="${ pageContext.request.contextPath }/">首页</a> |</li>
		<c:forEach items="${categories}" var="category">
			<li><a href="${pageContext.request.contextPath }/ProductServlet?m=list&cid=${category.id}">${category.name}</a> |</li>
		</c:forEach>

	</ul>
</div>