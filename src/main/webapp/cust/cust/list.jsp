<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>东渡科技设计项目</title>
<link href="${pageContext.request.contextPath }/css/style.css"
	rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath }/script/common.js"></script>
</head>
<body>

	<div class="page_title">客户信息管理</div>
	<div class="button_bar">
		<button class="common_button" onclick="help('');">帮助</button>
		<button class="common_button" onclick="reload();">查询</button>
	</div>
	<table class="query_form_table">
		<tr>
			<th>客户编号</th>
			<td><input /></td>
			<th>名称</th>
			<td><input /></td>
			<th>地区</th>
			<td><select>
					<option>全部</option>
					<option>北京</option>
					<option>华北</option>
					<option>中南</option>
					<option>东北</option>
					<option>西部</option>
			</select></td>
		</tr>
		<tr>
			<th>客户经理</th>
			<td><input /></td>
			<th>客户等级</th>
			<td><select>
					<option>全部</option>
					<option>战略合作伙伴</option>
					<option>合作伙伴</option>
					<option>大客户</option>
					<option>普通客户</option>
			</select></td>
			<th></th>
			<td></td>
		</tr>
	</table>
	<br />
	<table class="data_list_table">
		<tr>
			<th>序号</th>
			<th>客户编号</th>
			<th>名称</th>
			<th>地区</th>
			<th>客户经理</th>
			<th>客户等级</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${requestScope.page.list }" var="cust"
			varStatus="status">
			<tr>
				<td class="list_data_number">${status.index+1}</td>
				<td class="list_data_text">${cust.no}</td>
				<td class="list_data_ltext">${cust.name}</td>
				<td class="list_data_text">${cust.region}</td>
				<td class="list_data_text">${cust.managerName}</td>
				<td class="list_data_text">${cust.levelLabel}</td>
				<td class="list_data_op"><img onclick="to('getCustomer?id=${cust.id}');"
					title="编辑"
					src="${pageContext.request.contextPath }/images/bt_edit.gif"
					class="op_button" /> <img onclick="to('${pageContext.request.contextPath }/cust/cust/linkman.html');"
					title="联系人"
					src="${pageContext.request.contextPath }/images/bt_linkman.gif"
					class="op_button" /> <img onclick="to('${pageContext.request.contextPath }/cust/cust/activities.html');"
					title="交往记录"
					src="${pageContext.request.contextPath }/images/bt_acti.gif"
					class="op_button" /> <img onclick="to('${pageContext.request.contextPath }/cust/cust/orders.html');"
					title="历史订单"
					src="${pageContext.request.contextPath }/images/bt_orders.gif"
					class="op_button" /> <img onclick="del('“客户：聪海信息科技有限公司”');"
					title="删除"
					src="${pageContext.request.contextPath }/images/bt_del.gif"
					class="op_button" /></td>
			</tr>
		</c:forEach>
		<tr>
			<td class="list_data_number">2</td>
			<td class="list_data_text">KH071201008</td>
			<td class="list_data_ltext">北京明科科技有限公司</td>
			<td class="list_data_text">北京</td>
			<td class="list_data_text">小明</td>
			<td class="list_data_text">普通客户</td>
			<td class="list_data_op"><img onclick="to('${pageContext.request.contextPath }/cust/cust/edit.html');"
				title="编辑"
				src="${pageContext.request.contextPath }/images/bt_edit.gif"
				class="op_button" /> <img onclick="to('${pageContext.request.contextPath }/cust/cust/linkman.html');" title="联系人"
				src="${pageContext.request.contextPath }/images/bt_linkman.gif"
				class="op_button" /> <img onclick="to('${pageContext.request.contextPath }/cust/cust/activities.html');"
				title="交往记录"
				src="${pageContext.request.contextPath }/images/bt_acti.gif"
				class="op_button" /> <img onclick="to('${pageContext.request.contextPath }/cust/cust/orders.html');" title="历史订单"
				src="${pageContext.request.contextPath }/images/bt_orders.gif"
				class="op_button" /> <img onclick="del('“客户：聪海信息科技有限公司”');"
				title="删除"
				src="${pageContext.request.contextPath }/images/bt_del.gif"
				class="op_button" /></td>
		</tr>
		<tr>
			<td class="list_data_number">3</td>
			<td class="list_data_text">KH071201007</td>
			<td class="list_data_ltext">太阳药业</td>
			<td class="list_data_text">华北</td>
			<td class="list_data_text">旺财</td>
			<td class="list_data_text">重点开发客户</td>
			<td class="list_data_op"><img onclick="to('${pageContext.request.contextPath }/cust/cust/edit.html');"
				title="编辑"
				src="${pageContext.request.contextPath }/images/bt_edit.gif"
				class="op_button" />&nbsp;<img onclick="to('${pageContext.request.contextPath }/cust/cust/linkman.html');"
				title="联系人" src="../../images/bt_linkman.gif" class="op_button" />
				<img onclick="to('activities.html');" title="交往记录"
				src="${pageContext.request.contextPath }/images/bt_acti.gif"
				class="op_button" /> <img onclick="to('${pageContext.request.contextPath }/cust/cust/orders.html');" title="历史订单"
				src="${pageContext.request.contextPath }/images/bt_orders.gif"
				class="op_button" /></td>
		</tr>
		<tr>
			<td class="list_data_number">4</td>
			<td class="list_data_text">KH071201006</td>
			<td class="list_data_ltext">云南天河烟草公司</td>
			<td class="list_data_text">中南</td>
			<td class="list_data_text">球球</td>

			<td class="list_data_text">重点开发客户</td>
			<td class="list_data_op"><img onclick="to('${pageContext.request.contextPath }/cust/cust/edit.html');"
				title="编辑"
				src="${pageContext.request.contextPath }/images/bt_edit.gif"
				class="op_button" /> <img onclick="to('${pageContext.request.contextPath }/cust/cust/linkman.html');" title="联系人"
				src="${pageContext.request.contextPath }/images/bt_linkman.gif"
				class="op_button" /> <img onclick="to('activities.html');"
				title="交往记录"
				src="${pageContext.request.contextPath }/images/bt_acti.gif"
				class="op_button" /> <img onclick="to('orders.html');" title="历史订单"
				src="${pageContext.request.contextPath }/images/bt_orders.gif"
				class="op_button" /></td>
		</tr>
		<tr>
			<td class="list_data_number">5</td>
			<td class="list_data_text">KH071201005</td>
			<td class="list_data_ltext">北京天桥信息技术有限公司</td>
			<td class="list_data_text">北京</td>
			<td class="list_data_text">小明</td>
			<td class="list_data_text">大客户</td>
			<td class="list_data_op"><img onclick="to('edit.html');"
				title="编辑"
				src="${pageContext.request.contextPath }/images/bt_edit.gif"
				class="op_button" /> <img onclick="to('linkman.html');" title="联系人"
				src="${pageContext.request.contextPath }/images/bt_linkman.gif"
				class="op_button" /> <img onclick="to('activities.html');"
				title="交往记录"
				src="${pageContext.request.contextPath }/images/bt_acti.gif"
				class="op_button" /> <img onclick="to('orders.html');" title="历史订单"
				src="${pageContext.request.contextPath }/images/bt_orders.gif"
				class="op_button" /> <img onclick="del('“客户：聪海信息科技有限公司”');"
				title="删除"
				src="${pageContext.request.contextPath }/images/bt_del.gif"
				class="op_button" /></td>
		</tr>
		<tr>
			<th colspan="100" class="pager">
				<div class="pager">
					共59条记录 每页<input value="10" size="2" />条 第<input value="1" size="2" />页/共5页
					<a href="#">第一页</a> <a href="#">上一页</a> <a href="#">下一页</a> <a
						href="#">最后一页</a> 转到<input value="1" size="2" />页
					<button width="20" onclick="reload();">GO</button>
				</div>
			</th>
		</tr>
	</table>
</body>
</html>