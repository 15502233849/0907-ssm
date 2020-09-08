<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0048)http://localhost:8080/mango/product/list/1.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>网上商城</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/product.css" rel="stylesheet" type="text/css"/>
<script>
function fenye(curPage){
	location.href="${pageContext.request.contextPath}/ProductServlet?m=list&curPage="+curPage+"&cid=${cid}&scid=${scid}";
}
</script>
</head>
<body>
<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="http://localhost:8080/mango/">
				<img src="${pageContext.request.contextPath}/image/vimly.gif" alt=""/>
			</a>
		</div>
	</div>
	<div class="span9">
<div class="headerAd">
					<img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障"/>
</div>	</div>
	
	<%@ include file="menu.jsp" %>
	
</div>	
<div class="container productList">
		<div class="span6">
			<div class="hotProductCategory">
				<c:forEach items="${categories}" var="category">
						<dl>
							<dt>
								<a href="${pageContext.request.contextPath}/ProductServlet?m=list&cid=${category.id}">${category.name}</a>
							</dt>
								<c:forEach items="${category.secondCategories}" var="second">
									<dd>
										<a href="${ pageContext.request.contextPath }/ProductServlet?m=list&scid=${second.id}">${second.name}</a>
									</dd>
								</c:forEach>	
						</dl>
				</c:forEach>		
			</div>
		</div>
		<div class="span18 last">
			
				<div id="result" class="result table clearfix">
						<ul>
							<c:forEach items="${list}" var="entry">
								<li>
										<a href="${pageContext.request.contextPath }/ProductServlet?m=show&id=${entry.id}">
											<img src="${pageContext.request.contextPath}/${entry.image}" width="170" height="170"  style="display: inline-block;"/>
											   
											<span style='color:green'>
											 ${entry.name }
											</span>
											 
											<span class="price">
												商城价： ￥${entry.shopPrice}
											</span>
											 
										</a>
								</li>
							</c:forEach>
								
						</ul>
				</div>
		
<font>
    当前页:第${page.currentPage}页 | 总记录数:${page.count}条 | 每页显示:${page.pageSize}条 | 总页数:${page.pageCount}页</font>　
<c:forEach begin="1" end="${page.pageCount}" var="wp">
    <c:if test="${page.currentPage==wp}"><b><font color="red">${wp}</font></b></c:if>
    <c:if test="${page.currentPage!=wp}"><a href="javascript:fenye('${wp}')" class="a03">${wp}</a></c:if>
</c:forEach>
			
		</div>
	</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
					<img src="${pageContext.request.contextPath}/image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势"/>
</div>	</div>
	<div class="span24">
		<ul class="bottomNav">
					<li>
						<a >关于我们</a>
						|
					</li>
					<li>
						<a>联系我们</a>
						|
					</li>
					<li>
						<a >诚聘英才</a>
						|
					</li>
					<li>
						<a >法律声明</a>
						|
					</li>
					<li>
						<a>友情链接</a>
						|
					</li>
					<li>
						<a target="_blank">支付方式</a>
						|
					</li>
					<li>
						<a  target="_blank">配送方式</a>
						|
					</li>
					<li>
						<a >官网</a>
						|
					</li>
					<li>
						<a >论坛</a>
						
					</li>
		</ul>
	</div>
	<div class="span24">
		<div class="copyright">Copyright©2005-2015 网上商城 版权所有</div>
	</div>
</div>
</body></html>