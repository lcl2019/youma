<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
 
   $(document).ready(function(){
	   var count='${requestScope.count}';
	   if(count!=''&&count>1){
		   dialog(count, "客户信息保存", null);
	   }
	   $("select[name='region'] option").each(function(i){
		   if($(this).eq(i).val()=='${requestScope.customer.region}'){
			   $(this).eq(i).attr('selected','selected');
		   }
	   })
	   
	   
	   $("select[name='managerId'] option").each(function(i){
		   if($(this).eq(i).text()=='${requestScope.customer.managerName}'){
			   
			   $(this).eq(i).attr('selected','selected');
		   
		   }
	   })
		  
	   
   })

</script>
</head>
<body>

<div class="page_title">客户信息管理 > 客户信息</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="to('linkman.html');">联系人</button>
	<button class="common_button" onclick="to('activities.html');">交往记录</button>
	<button class="common_button" onclick="to('orders.html');">历史订单</button>
	
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="submit('custForm');">保存</button>
</div>
<form action="editCustomer" method="post" id="custForm">
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		
		<td>${requestScope.customer.no }<input name="no" type="hidden" value="${requestScope.customer.no }"><input name="id" type="hidden" value="${requestScope.customer.id }"></input></td>
		<th>名称</th>
		<td><input value="${requestScope.customer.name }" name="name"/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>地区</th>
		<td>
			<select name="region">
				<option>请选择...</option>
				<option value="北京">北京</option>
				<option value="华北">华北</option>
				<option value="中南">中南</option>
				<option value="东北">东北</option>
				<option value="西部">西部</option>
			</select>
			<span class="red_star">*</span></td>
		<th>客户经理</th>
		<td>
			<select name="managerId">
				<option>请选择...</option>
				<c:forEach items="${requestScope.employees }" var="emp"> 
				<option value="${emp.id }">${emp.name }</option>
				</c:forEach>
			<!-- 	<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option> -->
			</select><span class="red_star">*</span>
		</td>
	</tr>	
	<tr>
		<th>客户等级</th>
		<td>
			<select name="level">
				<option>请选择...</option>
				<option value="STRATEGIC_PARTNER">战略合作伙伴</option>
				<option value="COOPERATIVE_PARTNER">合作伙伴</option>
				<option value="BIG_CUSTOMER">大客户</option>
				<option value="KEYSTONE_DEVELOP">重点开发客户</option>
				<option value="GENERAL_CUSTOMER">普通客户</option>
			</select><span class="red_star">*</span>
		</td>
		<th>　</th>
		<td>　</td>
	</tr>
	<tr>
		<th>客户满意度</th>
		<td>
			<select name="satisfy"><option value="">未指定</option>
					<option value="100">☆☆☆☆☆</option>
					<option value="80">☆☆☆☆</option>
					<option value="60">☆☆☆</option>
					<option value="40">☆☆</option>
					<option value="20">☆</option></select><span class="red_star">*</span>
		</td>
		<th>客户信用度</th>
		<td>
			<select name="credit"><option value="">未指定</option>
					<option value="100">☆☆☆☆☆</option>
					<option value="80">☆☆☆☆</option>
					<option value="60">☆☆☆</option>
					<option value="40">☆☆</option>
					<option value="20">☆</option></select><span class="red_star">*</span>
		</td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table1">
	<tr>
		<th>地址</th>
		<td><input value="${requestScope.customer.address }"  name="address"/><span class="red_star">*</span>
		</td>
		<th>邮政编码</th>
		<td><input value="${requestScope.customer.zip }" name="zip" size="20" /><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>电话</th>
		<td>
			<input value="${requestScope.customer.tel }" name="tel" size="20"  /><span class="red_star">*</span></td>
		<th>传真</th>
		<td>
			<input value="${requestScope.customer.fax }" name="fax" size="20"  /><span class="red_star">*</span>
		</td>
	</tr>	
	<tr>
		<th>网址</th>
		<td>
			<input value="${requestScope.customer.website }" name="website" size="20"  /><span class="red_star">*</span>
		</td>
		<th>　</th>
		<td>　</td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table2">
	<tr>
		<th>营业执照注册号</th>
		<td><input value="${requestScope.customer.licenceNo }" name="licenceNo" size="20" /></td>
		<th>法人</th>
		<td><input value="${requestScope.customer.chieftain}" name="chieftain" size="20" /><span class="red_star">*</span>
		</td>
	</tr>
	<tr>
		<th>注册资金（万元）</th>
		<td>
			<input value="${requestScope.customer.registeredCapital }" name="registeredCapital" size="20" /> </td>
		<th>年营业额</th>
		<td>
			<input value="${requestScope.customer.annualTurnover }" name="annualTurnover" size="20" />
		</td>
	</tr>	
	<tr>
		<th>开户银行</th>
		<td>
			<input value=" ${requestScope.customer.bank }" name="bank" size="20" /><span class="red_star">*</span>
		</td>
		<th>银行帐号</th>
		<td><input value="${requestScope.customer.bankAccount}" name="bankAccount" size="20" /><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>地税登记号</th>
		<td>
			<input value="${requestScope.customer.localTaxNo }" name="localTaxNo" size="20" /></td>
		<th>国税登记号</th>
		<td><input value="${requestScope.customer.nationalTaxNo }" name="nationalTaxNo" size="20" /></td>
	</tr>
</table>
</form>
<p>　</p>
</body>
</html>