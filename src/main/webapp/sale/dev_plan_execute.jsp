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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/script/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/jquery-ui.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/ui.js"></script>
<script src="${pageContext.request.contextPath }/script/common.js"></script>
<script type="text/javascript">
  function edit(id){
	
	  var resultSelector="#"+id+" input[name='result']";
	  var result=$(resultSelector).val();
	  $.post("${pageContext.request.contextPath }/sale/salesPlanContrller/editSalesPlan","id="+id+"&result="+result,function(count){
		  if(count>0){
			  dialog(count, "保存", null);
		  }
	  })
  }
  function mark(path,data,msg){
	  var url="${pageContext.request.contextPath }/sale/salesLickController/"+path;
	  $.post(url,
			  data,
			  function(count){
		  if(count==-1){
			  dialog(count, "客户已增加，重复提交", null); 
		  }
		   if(count>0){
				  dialog(count, msg, null);
			  }
	  })
  }

</script>
</head>
<body>

<div class="page_title">客户开发计划 &gt; 执行计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="mark('markStatus','id=${requestScope.lick.id}','客户归档');">终止开发</button>
	<button class="common_button" onclick="to('${pageContext.request.contextPath }/sale/salesPlanContrller/getSalesPlanList');">返回</button>
	<button class="common_button" onclick="to('${pageContext.request.contextPath }/sale/salesPlanContrller/getSalesPlan?id=${requestScope.lick.id}');">制定计划</button>
	<button class="common_button" onclick="mark('markSuccess','id=${requestScope.lick.id}','新客户已增加，客户开发');">开发成功</button>

	</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>${requestScope.lick.no }</td>
		<th>机会来源</th>
		<td>${requestScope.lick.lickOrigin }
			　</td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td>${requestScope.lick.customerName }</td>
		<th>成功机率（%）</th>
		<td>&nbsp;${requestScope.lick.successOdds }</td>
	</tr>	
	<tr>
		<th>概要</th>
		<td colspan="3">${requestScope.lick.outline }</td>
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
		<td>
			<fmt:formatDate value="${requestScope.lick.assignTime }" type="both"/></td>
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
	
	<tr id="${plan.id}">
		<td class="list_data_text"><fmt:formatDate value="${plan.planDate }" type="both"/></td>
		<td class="list_data_ltext">${plan.todo }</td>
        <td class="list_data_ltext"><input name="result" class="result"/><button class="common_button" onclick="edit('${plan.id}');">保存</button>
		</td>
	</tr>
	
	</c:forEach>
	
	<!-- <tr>
		<td class="list_data_text">2008年02月22日</td>
		<td class="list_data_ltext">推介产品。</td>
		<td class="list_data_ltext"><input name="T1" size="20" />　
	<button class="common_button" onclick="save('editSalesPlan');">保存</button>
		</td>
	</tr> -->
	</table>
	<div id="dialog" title="销售机会管理">
		<h5></h5>

	</div>
</body>
</html>