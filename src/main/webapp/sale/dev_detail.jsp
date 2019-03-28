<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>东渡科技设计项目</title>
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath }/script/common.js"></script>
</head>
<body>

<div class="page_title">客户开发计划 &gt; 查看</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="to('${pageContext.request.contextPath }/sale/salesPlanContrller/getSalesPlanList');">返回</button>
	</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>${requestScope.lick.no }</td>
		<th>机会来源</th>
		<td>${requestScope.lick.lickOrigin }</td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td>${requestScope.lick.customerName }</td>
		<th>成功机率（%）</th>
		<td>&nbsp;${requestScope.lick.successOdds }</td>
	</tr>	
	<tr>
		<th>概要</th>
		<td>${requestScope.lick.outline }</td>
		<th>状态</th>
		<td style="color:red;">${requestScope.lick.statusName }</td>	
	</tr>
	<tr>
		<th>联系人</th>
		<td>${requestScope.lick.contact }</td>
		<th>联系人电话</th>
		<td>${requestScope.lick.tel }</td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3">${requestScope.lick.lickDepict }</td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>${requestScope.lick.creatorName }</td>
		<th>创建时间</th>
		<td><fmt:formatDate value="${requestScope.lick.created }" type="both"/></td>
	</tr>
	<tr>
		<th>指派给</th>
		<td>
			${requestScope.lick.devName }</td>
		<th>指派时间</th>
		<td><fmt:formatDate value="${requestScope.lick.assignTime }" type="both"/>
			</td>
	</tr>
</table>
<br />
<table class="data_list_table" id="table1">
	<tr>
		<th>日期</th>
		<th>计划</th>
		<th>执行效果</th>
	</tr>
	<c:forEach items="${requestScope.lick.plans }" var="plan">
	<tr>
		<td class="list_data_text"><fmt:formatDate value="${plan.planDate }" type="both"/></td>
		<td class="list_data_ltext">${plan.todo }</td>
		<td class="list_data_ltext">${plan.result }
		</td>
	</tr>
	</c:forEach>
	<!-- <tr>
		<td class="list_data_text">2008年02月22日</td>
		<td class="list_data_ltext">推介产品。</td>
		<td class="list_data_ltext">客户同意采购本公司产品。但希望就价格达成一致。
		</td>
	</tr> -->
	</table>
	
</body>
</html>