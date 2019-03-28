<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>东渡科技设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery.js"></script>
<script src="${pageContext.request.contextPath}/script/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery.cookie.js"></script>
<script type="text/javascript">

$(function(){
	 var empId= $.cookie('empId');
	 var empName= $.cookie('empName');
	
	 $("input[name='creator']").val(empId); 
	  $("input[name='creatorName']").val(empName);
});

</script>
</head>
<body>

<div class="page_title">销售机会管理&nbsp; &gt; 新建销售机会</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="add('salChance');">保存</button>  
</div>
<form action="${pageContext.request.contextPath}/sale/salesLickController/addSalesLick" method="post" id="salChance">
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td><input readonly="readonly" value="${no}" name="no"/></td>
		<th>机会来源</th>
		<td>
			<input name="lickOrigin" size="20"  /></td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td><input name="customerName"/><span class="red_star">*</span></td>
		<th>成功机率</th>
		<td><input name="successOdds" type="text"/><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>概要</th>
		<td colspan="3"><input name="outline" size="52" /><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>联系人</th>
		<td><input name="contact" size="20" /></td>
		<th>联系人电话</th>
		<td><input name="tel" size="20" /></td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3"><textarea rows="6" cols="50" name="lickDepict"></textarea><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>创建人</th>
		
		<td><input name="creator" type="hidden"><input name="creatorName"  readonly size="20" /><span class="red_star">*</span></td>
		<th>创建时间</th>
		<td><input id="t1" name="created" readonly size="20" value="" /><span class="red_star">*</span></td>
	</tr>
</table>
<br />
<table  class="query_form_table" id="table1">
	<tr>
		<th>指派给</th>
		<td>
			<select name="developer">
				<option >请选择...</option>
				<c:forEach items="${requestScope.employees}" var="emp" >
				<option value="${emp.id}">${emp.name}</option>
				</c:forEach>
			</select> <span class="red_star">*</span></td>
		<th>指派时间</th>
		<td>
			<input id="t2" name="assignTime" readonly size="20" value=""/><span class="red_star">*</span></td>
	</tr>
</table>
</form>
<script>
	setCurTime('t1');
	setCurTime('t2');
</script>
</body>
</html>