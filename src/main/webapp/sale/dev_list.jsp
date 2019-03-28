<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>东渡科技设计项目</title>
<link href="${pageContext.request.contextPath }/css/style.css"
	rel="stylesheet" type="text/css">
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/script/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/jquery-ui.min.css">
<script src="${pageContext.request.contextPath }/script/common.js"></script>
<script type="text/javascript">
  /*  $(document).ready(function(){
	   
	   var lick='${lick}';
	   alert(lick)
	   if(lick==null){
		   $("#dialog>h5").text("还未制定计划");
		     $("#dialog").dialog("open"); 
	   }
   }) */
</script>
</head>
<body>
    
	<div class="page_title">客户开发计划</div>
	<div class="button_bar">
		<button class="common_button" onclick="help('');">帮助</button>
		<button class="common_button" onclick="submit('tjForm');">查询</button>
	</div>
	<form action="getSalesPlanList" id="tjForm">
	<table class="query_form_table">
		<tr>
			<th>客户名称</th>
			<td><input name="map['customerName']"/></td>
			<th>概要</th>
			<td><input name="map['outline']"/></td>
			<th>联系人</th>
			<td><input name="map['contact']" size="20" /></td>
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
			<th>状态</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${requestScope.pageLicks.list }" var="devLick">
		<tr>
			<td class="list_data_number">${devLick.no }</td>
			<td class="list_data_text">${devLick.customerName }</td>
			<td class="list_data_ltext">${devLick.outline }</td>
			<td class="list_data_text">${devLick.contact }</td>
			<td class="list_data_text">${devLick.tel }</td>
			<td class="list_data_text"><fmt:formatDate value="${devLick.created }" type="both"/></td>
			<td class="list_data_text">${devLick.statusName }</td>
			<td class="list_data_op"><c:if
					test="${devLick.status=='DEVELOPING' }">
					<img onclick="to('getSalesPlan?id=${devLick.id}');" title="制定计划"
						src="${pageContext.request.contextPath }/images/bt_plan.gif"
						class="op_button" />
					<img onclick="to('lookSalesPlan/execute?lickId=${devLick.id}');" title="执行计划"
						src="${pageContext.request.contextPath }/images/bt_feedback.gif"
						class="op_button" />
					<img onclick="alert('用户开发成功，已添加新客户记录。');" title="开发成功"
						src="${pageContext.request.contextPath }/images/bt_yes.gif"
						class="op_button" />
					<img onclick="to('lookSalesPlan/look?lickId=${devLick.id}');" title="查看"
						src="${pageContext.request.contextPath }/images/bt_detail.gif"
						class="op_button" />
				</c:if> 
				<c:if test="${devLick.status=='ARCHIVED' ||devLick.status=='DEVELOP_SUCCESS'}">
					<img onclick="to('lookSalesPlan/look?lickId=${devLick.id}');" title="查看"
						src="${pageContext.request.contextPath }/images/bt_detail.gif"
						class="op_button" />
				</c:if></td>
		</tr>
		</c:forEach>
		<!-- <tr>
		<td class="list_data_number">2</td>
		<td class="list_data_text">泰宝实业</td>
		<td class="list_data_ltext">采购笔记本电脑意向</td>
		<td class="list_data_text">刘女士</td>
		<td class="list_data_text">13833239239</td>
		<td class="list_data_text">2012年11月16日</td>
		<td class="list_data_text">已归档</td>
		<td class="list_data_op">
			<img onclick="to('dev_detail.html');" title="查看" src="../images/bt_detail.gif" class="op_button" />
		</td>
	</tr> -->
		<tr>
			<th colspan="10" class="pager">
				<form action="getSalesPlanList" id="devForm">
					<div class="pager">
						共${pageLicks.totalCount}条记录 每页<input value="${pageLicks.pageSize}"
							size="2" />条 第${pageLicks.pageNow}页/共5页 
							<a href="getSalesPlanList?pageNow=1&pageSize=${pageLicks.pageSize}">第一页</a> <a
							href="getSalesPlanList?pageNow=${pageLicks.pageNow-1}&pageSize=${pageLicks.pageSize}">上一页</a>
							 <a href="getSalesPlanList?pageNow=${pageLicks.pageNow+1}&pageSize=${pageLicks.pageSize}">下一页</a>
							  <a href="getSalesPlanList?pageNow=${pageLicks.pageCount}&pageSize=${pageLicks.pageSize}">最后一页</a> 
							  转到<input value="${pageLicks.pageNow}" size="2" />页
						<button width="20" onclick="submit('devForm');">GO</button>
					</div>
				</form>
			</th>
		</tr>
	</table>
	<div id="dialog" title="客户开发计划">
		<h5></h5>

	</div>
</body>
</html>