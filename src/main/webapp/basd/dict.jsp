<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>东渡科技设计项目</title>
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath }/script/common.js"></script>
</head>
<body>

<div class="page_title">数据字典管理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="to('dict_add.html');">新建</button>
	<button class="common_button" onclick="reload();">查询</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>类别</th>
		<td><input name="type"/></td>
		<th>条目</th>
		<td><input name="item"/></td>
		<th>值</th>
		<td><input name="value"/></td>
	</tr>
</table>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>类别</th>
		<th>条目</th>
		<th>值</th>
		<th>是否可编辑</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${requestScope.dictionaries }" var="dict" varStatus="item">
	<tr>
		<td class="list_data_number">${item+1}</td>
		<td class="list_data_ltext">${dict.typeCH}</td>
		<td class="list_data_text">${dict.item}</td>
		<td class="list_data_text">${dict.value}</td>
		<td class="list_data_text">${dict.isEditable }</td>
		<td class="list_data_op">
		  <c:if test="${dict.status='EDITABLE' }">
		  	<img onclick="to('dict_edit.html');" title="编辑" src="${pageContext.request.contextPath }/images/bt_edit.gif" class="op_button" />	
		  </c:if>
		  <img onclick="del('“服务类型：咨询”');" title="删除" src="${pageContext.request.contextPath }/images/bt_del.gif" class="op_button" />
		</td>
	</tr>
	</c:forEach>
	<tr>
		<td class="list_data_number">2</td>
		<td class="list_data_ltext">企业客户等级</td>
		<td class="list_data_text">重点开发客户</td>
		<td class="list_data_text">2</td>
		<td class="list_data_text">否</td>
		<td class="list_data_op">　</td>
	</tr>
	<tr>
		<td class="list_data_number">3</td>
		<td class="list_data_ltext">企业客户等级</td>
		<td class="list_data_text">大客户</td>
		<td class="list_data_text">3</td>
		<td class="list_data_text">否</td>
		<td class="list_data_op">　</td>
	</tr>
	<tr>
		<td class="list_data_number">4</td>
		<td class="list_data_ltext">企业客户等级</td>
		<td class="list_data_text">合作伙伴</td>
		<td class="list_data_text">4</td>
		<td class="list_data_text">否</td>
		<td class="list_data_op">　</td>
	</tr>
	<tr>
		<td class="list_data_number">5</td>
		<td class="list_data_ltext">企业客户等级</td>
		<td class="list_data_text">战略合作伙伴</td>
		<td class="list_data_text">5</td>
		<td class="list_data_text">否</td>
		<td class="list_data_op">　</td>
	</tr>
	<tr>
		<td class="list_data_number">6</td>
		<td class="list_data_ltext">服务类型</td>
		<td class="list_data_text">咨询</td>
		<td class="list_data_text">咨询</td>
		<td class="list_data_text">是</td>
		<td class="list_data_op">
			<img onclick="to('dict_edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
			<img onclick="del('“服务类型：咨询”');" title="删除" src="../images/bt_del.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<td class="list_data_number">7</td>
		<td class="list_data_ltext">服务类型</td>
		<td class="list_data_text">投诉</td>
		<td class="list_data_text">投诉</td>
		<td class="list_data_text">是</td>
		<td class="list_data_op">
			<img onclick="to('dict_edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
			<img onclick="del('“服务类型：投诉”');" title="删除" src="../images/bt_del.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<td class="list_data_number">8</td>
		<td class="list_data_ltext">服务类型</td>
		<td class="list_data_text">建议</td>
		<td class="list_data_text">建议</td>
		<td class="list_data_text">是</td>
		<td class="list_data_op">
			<img onclick="to('dict_edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
			<img onclick="del('“服务类型：建议”');" title="删除" src="../images/bt_del.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<td class="list_data_number">9</td>
		<td class="list_data_ltext">地区</td>
		<td class="list_data_text">北京</td>
		<td class="list_data_text">1</td>
		<td class="list_data_text">是</td>
		<td class="list_data_op">
			<img onclick="to('dict_edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
			<img onclick="del('“服务类型：建议”');" title="删除" src="../images/bt_del.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<td class="list_data_number">10</td>
		<td class="list_data_ltext">地区</td>
		<td class="list_data_text">华北</td>
		<td class="list_data_text">2</td>
		<td class="list_data_text">是</td>
		<td class="list_data_op">
			<img onclick="to('dict_edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
			<img onclick="del('“服务类型：建议”');" title="删除" src="../images/bt_del.gif" class="op_button" />
		</td>
	</tr>
	<tr>
		<th colspan="6" class="pager">
<div class="pager">
	共59条记录 每页<input value="10" size="2" />条
	第<input value="1" size="2"/>页/共5页
	<a href="#">第一页</a>
	<a href="#">上一页</a>
	<a href="#">下一页</a>
	<a href="#">最后一页</a>
	转到<input value="1" size="2" />页
	<button width="20" onclick="reload();">GO</button>
</div>
		</th>
	</tr>
</table>
</body>
</html>