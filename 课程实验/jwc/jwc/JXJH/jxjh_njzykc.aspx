<%@ Page %>
<%@Import NameSpace="BLL.JXJH"%>
<%@Import NameSpace="BLL.include"%>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
%>
<HTML>
	<HEAD>
		<title>查看专业课程</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
			function ChkValue(theID){
			if (document.all.sel_nj.value==''||document.all.sel_nj.value=='Nothing'||document.all.sel_zy.value==''||document.all.sel_zy.value=='Nothing')
			{alert('须选定年级专业进行检索！');return false;}
			}

			function changezy(){
			document.all.sel_xy.onchange();

			}
		</script>
	</HEAD>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table align="center" width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
		<tr><td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>查看专业理论课程</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="jxjh_njzykc_rpt.aspx" target="main" onSubmit="return ChkValue(this)">
				<tr>
					<td valign="top" align="center" height="5%">
						<table width="660" border="0" height="26" cellspacing="0" cellpadding="0">
							<tr>
								<td width="13%">年级&nbsp;<select style="width:55px;" name="sel_nj" onchange='changezy()'><%=(new private_JXJH()).GetJHBB()%></select></td>
								<td><%=(new private_JXJH()).SetValue("yxzy",pSub.USER_OPTYX)%></td>
								<td width="10%">&nbsp;</td>
							<tr>
							<tr>
								<td align="left" colspan="2">
								<table border=0 width=100% cellpadding=0 cellspacing=0>
								<tr><td width=105>
									<table border=1 width=100 cellpadding=0 cellspacing=0 bordercolorlight=#75A7AE bordercolordark=#FFFFFF>
									<tr><td>
									<input type="radio" checked name="zfx_flag" value="1">主修<input type="radio" name="zfx_flag" value="0">辅修
									</td></tr>
									</table>
								</td><td>
									<table border=1 width=170 cellpadding=0 cellspacing=0 bordercolorlight=#75A7AE bordercolordark=#FFFFFF>
									<tr><td>
									<input type="radio" checked name="radCx" value="0">学分分布<input type="radio" name="radCx" value="1">周学时分布
									</td></tr>
									</table>
								</td></tr>
								</table>								
								<td align="right"><input type="submit" name="btn_search" value="检索" class="button"></td>
							</tr>
						</table>
					</td>
				</tr>
			</form>
			<tr>
				<td valign="top" align="center" height="5%">
					<DIV id="theHead" style='WIDTH: 99%'></DIV>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="main" src="jxjh_njzykc_rpt.aspx" width="99%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
		</td></tr>
		</table>
	</body>
</HTML>
