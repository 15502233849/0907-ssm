
<%@ page language="java" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/vip.css" type="text/css">
<font>
    当前页:第${page.currentPage}页 | 总记录数:${page.count}条 | 每页显示:${page.pageSize}条 | 总页数:${page.pageCount}页</font>　
<c:forEach begin="1" end="${page.pageCount}" var="wp">
    <c:if test="${page.currentPage==wp}"><b><font color="red">${wp}</font></b></c:if>
    <c:if test="${page.currentPage!=wp}"><a href="javascript:fenye('${wp}')" class="a03">${wp}</a></c:if>
</c:forEach>