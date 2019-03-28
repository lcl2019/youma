<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>东渡科技设计项目</title>
<link href="${pageContext.request.contextPath }/css/style.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/css/jquery.date_input.pack.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/script/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/jquery-ui.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/ui.js"></script>
<script
	src="${pageContext.request.contextPath }/script/jquery.date_input.pack.js"></script>
<script src="${pageContext.request.contextPath }/script/json2.js"></script>
<script src="${pageContext.request.contextPath }/script/common.js"></script>
<script type="text/javascript">
 $(document).ready(function(){
	 $('.date_picker').date_input(); 
	 var planElement='';
	$("#plan_add").click(function(){
		 var dateVal= $('.date_picker').val();
		 var planItem=$('#plan_item').val();
		if(dateVal!=null&&dateVal!=''){
			planElement='<tr><td class="list_data_text" id="plan_date">'+dateVal+'</td><td class="list_data_ltext"><input size="50" value="'+
			planItem+'" name="T1" id="plan_todo"/><button class="common_button" onclick="savePlan();">保存</button><button class="common_button" onclick="del("");">删除</button></td></tr>';
			 $('.data_list_table').append(planElement);
		}
	
	})
	
	
 });
 
	function savePlan() {
		var planArray = new Array();
		
	 	$("#table1 tr:gt(0)").each(function() {
			var plan = $(this).children().eq(0).text();
			var td = $(this).children().eq(1).find("input").val();
			var obj = {
				lickId : '${requestScope.lick.id }',
				planDate : plan,
				todo: td
			}
			planArray.push(obj);
		 }); 
		
		$.ajax({type:"POST",
			    url:"addSalesPlan",
			    data: JSON.stringify(planArray),
			    contentType:"application/json;charset=utf-8",
			    success:function(count) {
			    	
			if (count > 0) {
				dialog(count, "保存", null);
			}
		}
		}) 
	}
</script>
<style type="text/css">
input{
  padding: 6px;
}
</style>
</head>
<body>

<div class="page_title">客户开发计划 &gt; 制定计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="to('${pageContext.request.contextPath }/sale/dev_plan_execute.jsp');">执行计划</button>
	<button class="common_button" onclick="to('getSalesPlanList')">返回</button>
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
		<td colspan="3">${requestScope.lick.outline}</td>
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
		<td>${requestScope.lick.creatorName}</td>
		<th>创建时间</th>
	 <td><fmt:formatDate value="${requestScope.lick.created }" type="both"/></td>
	</tr>
	<tr>
		<th>指派给</th>
		<td>${requestScope.lick.devName }</td>
		<th>指派时间</th>
		<td><fmt:formatDate value="${requestScope.lick.assignTime }" type="both"/>
			</td>
	</tr>
</table>
<br />

<table class="data_list_table" id="table1">
	<tr id="last">
		<th width="150px">日期</th>
		<th height="31">计划项</th>
	</tr>
	<!-- <tr>
		<td class="list_data_text" height="24" id="plan_date">2008年01月18日</td>
		<td class="list_data_ltext" height="24"><input size="50" value="初步接触，了解客户意向。" id="plan_todo"/>
	<button class="common_button" onclick="save('dev_plan.html');">保存</button>
	<button class="common_button" onclick="del('');">删除</button>
		</td>
	</tr>
	<tr>
		<td class="list_data_text">2008年02月22日</td>
		<td class="list_data_ltext"><input size="50" value="推介产品。" name="T1" />
	<button class="common_button" onclick="save('dev_plan.html');">保存</button>
	<button class="common_button" onclick="del('');">删除</button>
		</td>
	</tr> -->
</table>
<div class="button_bar">
	<button class="common_button" onclick="savePlan();">保存</button>
	<button class="common_button" id="plan_add">增加</button>
	</div>

<table class="query_form_table" id="table2">
	<tr>
		<th>日期</th>
		<td><input style="width:226px;background: #fefefe;border: 1px solid #bbb;font-size: 14px;color: #333;border-radius: 3px;" class="date_picker" type="text"/><span class="red_star" >*</span></td>
		<th>计划项</th>
		<td>
			<input size="50" name="T2" id="plan_item"/><span class="red_star">*</span>
		</td>
	</tr>
</table>

<div id="dialog" title="销售机会管理">
		<h5></h5>

	</div>
</body>
</html>