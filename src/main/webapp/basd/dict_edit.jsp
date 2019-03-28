<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>东渡科技设计项目</title>
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath }/script/common.js"></script>
</head>
<body>

<div class="page_title">数据字典管理 > 编辑数据字典条目</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="save('dict.html');">保存</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>${requestScope.id}</td>
		<th>类别</th>
		<td><input value="${requestScope.type }" /><span class="red_star">*</span><br />（需要使用Ajax实现自动补全功能）</td>
	</tr>
	<tr>
		<th>条目</th>
		<td><input value="${requestScope.item}" /><span class="red_star">*</span></td>
		<th>值</th>
		<td><input value="${requestScope.value }" /><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>是否可编辑</th>
		<td>
		<c:if test="${requestScope.status='EDITABLE'}"><input type="checkbox" checked /></c:if>
		<c:if test="${requestScope.status='NOT_EDITOR'}"><input type="checkbox" disabled="disabled" /></c:if>
		</td>
		<th>&nbsp;</th>
		<td>&nbsp;</td>
	</tr>
</table>
</body>
</html>