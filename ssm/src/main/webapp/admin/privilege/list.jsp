<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
		<script type="text/javascript">
			function del(id){
				if(confirm("你确认删除吗?")){
				    window.location.href = "${pageContext.request.contextPath }/adminPrivilege/del.do?id="+id;
				}
			}
			function add(){
				window.location.href = "${pageContext.request.contextPath}/adminPrivilege/toAdd.do";
			}
			function query(){
				var name=$("#name").val();
				window.location.href = "${pageContext.request.contextPath}/adminPrivilege/list.do?name="+name;
			}
			function fenye(curPage){
				var name=$("#name").val();
				window.location.href = "${pageContext.request.contextPath}/adminPrivilege/list.do?name="+name+"&curPage="+curPage;
			}
		</script>
	</HEAD>
	<body>
		<br>
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					<tr>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<strong>权限列表</strong>
						</TD>
					</tr>
					<tr>
						<td class="ta_01" align="right">
							<button type="button" id="add" name="add" value="添加" class="button_add" onclick="add()">
&#28155;&#21152;
</button>

						</td>
					</tr>
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
						    <div>
						    请输入要查询的名字:<input type="text" name="name" id="name" value="${name}"/>
						    <button onclick="query()">查询</button>
						    </div>
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

									<td align="center" width="18%">
										序号
									</td>
									<td align="center" width="17%">
										权限名称
									</td>
									<td align="center" width="17%">
										权限模块
									</td>
									<td align="center" width="17%">
										权限值
									</td>
									<td width="7%" align="center">
										编辑
									</td>
									<td width="7%" align="center">
										删除
									</td>
								</tr>
									<c:forEach items="${list}" var="entry" varStatus="status">
										<tr onmouseover="this.style.backgroundColor = 'white'"
											onmouseout="this.style.backgroundColor = '#F5FAFE';">
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="18%">
												${status.count}
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												${entry.name}
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												${entry.module}
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												${entry.value}
											</td>
											<td align="center" style="HEIGHT: 22px">
												<a href="${ pageContext.request.contextPath }/adminPrivilege/getById.do?id=${entry.id}">
													<img src="${pageContext.request.contextPath}/images/i_edit.gif" border="0" style="CURSOR: hand">
												</a>
											</td>
									
											<td align="center" style="HEIGHT: 22px">
												<a href="javascript:del(${entry.id})">
													<img src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
												</a>
											</td>
										</tr>
									</c:forEach>
									<tr>
									<td colspan="10">
									  ${page.currentPage}/${page.pageCount}
									  <button onclick="fenye(1)">首页</button>
									  <button onclick="fenye(${page.prevPage})">上一页</button>
									  <button onclick="fenye(${page.nextPage})">下一页</button>
									  <button onclick="fenye(${page.pageCount})">尾页</button>
									 </td>
									</tr>	
							</table>
						</td>
					</tr>
				</TBODY>
			</table>
	</body>
</HTML>

