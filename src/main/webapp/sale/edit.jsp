<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="${pageContext.request.contextPath }/script/ui.js"></script>
<script src="${pageContext.request.contextPath }/script/common.js">

</script>
</head>
<body>

<div class="page_title">销售机会管理&nbsp; &gt; 编辑销售机会</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back('getLickList?pageNow=1&pageSize=10');">返回</button>
	<button class="common_button" onclick="save('editSalesLick');">保存</button>  
</div>
<form >
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td><input readonly value="${requestScope.lick.no }" name="no"/></td>
		<th>机会来源</th>
		<td>
			<input name="lickOrigin" size="20" value="${requestScope.lick.lickOrigin }"/></td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td><input value="${requestScope.lick.customerName }" name="customerName" /><span class="red_star">*</span></td>
		<th>成功机率（%）</th>
		<td><input value="${requestScope.lick.successOdds}" name="successOdds" /><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>概要</th>
		<td colspan="3"><input value="${requestScope.lick.outline }" name="outline" size="52" /><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>联系人</th>
		<td><input name="contact" value="${requestScope.lick.contact }" size="20" /></td>
		<th>联系人电话</th>
		<td><input name="tel" value="${requestScope.lick.tel }" size="20" /></td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3"><textarea rows="6" cols="50" name="lickDepict">${requestScope.lick.lickDepict }</textarea><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>创建人</th>
		<td><input name="creator" value="${requestScope.lick.creator }" readonly size="20" /><span class="red_star">*</span></td>
		<th>创建时间</th>
		<td><input id="t1" name="created" value="${requestScope.lick.created }" readonly size="20" /><span class="red_star">*</span></td>
	</tr>
</table>
<br />
<table disabled class="query_form_table" id="table1">
	<tr>
		<th>指派给</th>
		<td>
			<select name="D1">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select> <span class="red_star">*</span></td>
		<th>指派时间</th>
		<td>
			<input id="t2" name="T20" readonly size="20" /><span class="red_star">*</span></td>
	</tr>
</table>
</form>
<script>
	setCurTime('t1');
	setCurTime('t2');
</script>
   <%-- <iframe src="${pageContext.request.contextPath }/html/dialog.html"></iframe> --%>
   <div id="dialog" title="销售机会管理">
	<h5></h5>

    </div>
</body>
</html>