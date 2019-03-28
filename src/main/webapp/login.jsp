<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
th {
	font-size: 12px;
	text-align: right;
	font-weight: normal;
}

td {
	font-size: 12px;
	text-align: left;
}

input {
	width: 100px;
	font-size: 12px;
	border: solid 1px lightblue;
}

.msg {
	height: 10px;
	color: fuchsia;
	font-size: small;
	font-style: oblique;
	text-align: center;
	position: relative;
	top: 10px;
}

.ui-draggable .ui-dialog-titlebar {
	background-color: #BBD3F7;
	color: #4A4E53;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/script/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/jquery-ui.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/script/ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery.cookie.js"></script>
<script type="text/javascript">
	 function login() {
		var name = $("input[name='username']").val();
		var pw = $("input[name='password']").val();
		if (name == null || name == "" || pw == null || pw == "") {
			$("#dialog>h5").text("用户名或密码不能为空");
			$("#dialog").dialog("open"); 
			return;
		}
		$.ajax({
			type : "POST",
			url : "userController/login",
			data : "username=" + name + "&password=" + pw,
			success : function(result) {
				/* if(result.loginResult!=null){
					$("#dialog>h5").text(result.loginResult);
					$("#dialog").dialog("open"); 
					return;
				} */
				//结果值放入cookie ，并设置7天有效期
				$.cookie('empId',result.empId,{expires:7});
				$.cookie('empName',result.empName,{expires:7});
				window.location.href="index.jsp";
				
              
			}
		})

	} 
</script>

</head>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0
	MARGINHEIGHT=0 style="text-align: center; padding-top: 20px;">
	<TABLE WIDTH=800 BORDER=0 CELLPADDING=0 CELLSPACING=0>
		<TR>
			<TD COLSPAN=7><IMG SRC="html/images/login/login_01.jpg"
				WIDTH=800 HEIGHT=71 ALT=""></TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=1 HEIGHT=71
				ALT=""></TD>
		</TR>
		<TR>
			<TD COLSPAN=7>&nbsp;</TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=1 HEIGHT=66
				ALT=""></TD>
		</TR>
		<TR>
			<TD COLSPAN=7><IMG SRC="html/images/login/login_03.jpg"
				WIDTH=800 HEIGHT=6 ALT=""></TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=1 HEIGHT=6
				ALT=""></TD>
		</TR>
		<TR>

			<TD COLSPAN=3>&nbsp;</TD>
			<TD COLSPAN=3 ROWSPAN=2><IMG
				SRC="html/images/login/login_05.jpg" WIDTH=426 HEIGHT=83 ALT=""></TD>

			<TD ROWSPAN=3>&nbsp;</TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=1 HEIGHT=44
				ALT=""></TD>
		</TR>
		<TR>

			<TD ROWSPAN=4>&nbsp;</TD>
			<TD COLSPAN=2><IMG SRC="html/images/login/login_08.jpg" WIDTH=94
				HEIGHT=39 ALT=""></TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=1 HEIGHT=39
				ALT=""></TD>
		</TR>
		<TR>
			<TD ROWSPAN=3><IMG SRC="html/images/login/login_09.jpg" WIDTH=15
				HEIGHT=141 ALT=""></TD>

			<TD COLSPAN=2 ROWSPAN=2 background="html/images/login/login_10.jpg">

				<table width="100%">
					<tr>
						<th>用户名</th>
						<td><input size="10" maxlength="20" name="username" /></td>
					</tr>
					<tr>
						<th>密码</th>
						<td><input type="password" size="10" maxlength="20"
							name="password" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><img onclick="login();"
							src="html/images/login/login_button.jpg" width="73" height="25"></td>
					</tr>
					<tr>
						<td class="msg" colspan="2" style=""></td>
					</tr>
				</table>

			</TD>
			<TD COLSPAN=2><IMG SRC="html/images/login/login_11.jpg"
				WIDTH=304 HEIGHT=86 ALT=""></TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=1 HEIGHT=86
				ALT=""></TD>
		</TR>
		<TR>
			<TD ROWSPAN=2><IMG SRC="html/images/login/login_12.jpg" WIDTH=19
				HEIGHT=55 ALT=""></TD>

			<TD COLSPAN=2 ROWSPAN=3>&nbsp;</TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=1 HEIGHT=28
				ALT=""></TD>
		</TR>
		<TR>
			<TD COLSPAN=2><IMG SRC="html/images/login/login_14.jpg"
				WIDTH=201 HEIGHT=27 ALT=""></TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=1 HEIGHT=27
				ALT=""></TD>
		</TR>
		<TR>

			<TD COLSPAN=5>&nbsp;</TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=1 HEIGHT=67
				ALT=""></TD>
		</TR>
		<TR>

			<TD COLSPAN=7 background="html/images/login/login_16.jpg"
				style="text-align: right; padding-right: 25px;">&copy;
				东渡科技人才培养工程</TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=1 HEIGHT=55
				ALT=""></TD>
		</TR>
		<TR>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=150 HEIGHT=1
				ALT=""></TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=15 HEIGHT=1
				ALT=""></TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=79 HEIGHT=1
				ALT=""></TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=122 HEIGHT=1
				ALT=""></TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=19 HEIGHT=1
				ALT=""></TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=285 HEIGHT=1
				ALT=""></TD>
			<TD><IMG SRC="html/images/login/spacer.gif" WIDTH=130 HEIGHT=1
				ALT=""></TD>
			<TD></TD>
		</TR>
	</TABLE>

	<div id="dialog" title="登录">
		<h5></h5>

	</div>

	<button id="opener">打开对话框</button>
</BODY>
</HTML>