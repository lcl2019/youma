<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>东渡科技设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/script/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/jquery-ui.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/ui.js"></script>
<script src="${pageContext.request.contextPath}/script/common.js"></script>
</head>
<body>

	<div class="page_title">销售机会管理</div>
	<div class="button_bar">
		<button class="common_button" onclick="help('');">帮助</button>
		<button class="common_button"
			onclick="to('${pageContext.request.contextPath}/sale/salesLickController/createNoAndEmp');">新建</button>
		<button class="common_button" onclick="submit('tjForm');">查询</button>
	</div>
	<form action="getLickList" id="tjForm" method="get">
	<table class="query_form_table">
		<tr>
			<th>客户名称</th>
			<td><input name="map['customerName']" type="text" /></td>
			<th>概要</th>
			<td><input name="map['outline']"  type="text"/></td>
			<th>联系人</th>
			<td><input name="map['contact']" size="20"  type="text"/></td>
		</tr>
	</table>
	</form>
	<br />
	<table class="data_list_table">
		<tr>
			<th>编号</th>
			<th>客户名称</th>
			<th>概要</th>
			<th>联系人</th>
			<th>联系人电话</th>
			<th>创建时间</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${requestScope.pageLick.list }" var="lick">
			<tr>
				<td class="list_data_number">${lick.no}</td>
				<td class="list_data_text">${lick.customerName }</td>
				<td class="list_data_ltext">${lick.outline }</td>
				<td class="list_data_text">${lick.contact }</td>
				<td class="list_data_text">${lick.tel }</td>
				<td class="list_data_text"><fmt:formatDate
						value="${lick.created }" type="both" /></td>
				<td class="list_data_op"><img onclick="to('${pageContext.request.contextPath}/sale/dispatch.html');"
					title="指派"
					src="${pageContext.request.contextPath}/images/bt_linkman.gif"
					class="op_button" /> <img
					onclick="to('findSalesLickById?id=${lick.id}');" title="编辑"
					src="${pageContext.request.contextPath}/images/bt_edit.gif"
					class="op_button" /> <img onclick="del(${lick.no});" title="删除"
					src="${pageContext.request.contextPath}/images/bt_del.gif"
					class="op_button" /></td>
			</tr>
		</c:forEach>
		<tr>
			<th colspan="7" class="pager">
				<div class="pager">
				<form action="getLickList" id="controlForm" method="get">
					共${pageLick.totalCount }条记录 每页<input value="${pageLick.pageSize }" size="2" name="pageSize"/>条
					 第${pageLick.pageNow }页/共${pageLick.pageCount }页
					<a href="getLickList?pageNow=1&pageSize=${pageLick.pageSize }">第一页</a> <a href="getLickList?pageNow=${pageLick.pageNow-1}&pageSize=${pageLick.pageSize }">上一页</a> 
					<a href="getLickList?pageNow=${pageLick.pageNow+1}&pageSize=${pageLick.pageSize }">下一页</a> <a href="getLickList?pageNow=${pageLick.pageCount}&pageSize=${pageLick.pageSize }">最后一页</a> 转到<input name="pageNow"  size="2" value="${pageLick.pageNow }"/>页
					    <button width="20" onclick="submit('controlForm');">GO  </button>
					</form>
				</div>
			</th>
		</tr>
	</table>
	<div id="dialog" title="销售机会管理">
		<h5></h5>

	</div>
</body>
</html>