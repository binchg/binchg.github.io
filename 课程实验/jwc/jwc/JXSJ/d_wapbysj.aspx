<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<%
BLL.JXSJ.BLL_jxsj pSub=new BLL.JXSJ.BLL_jxsj(this);
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;
%>
<HTML>
	<HEAD>
		<title>未安排毕业设计</title>
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language='javascript'>
		function changezy(){
		document.all.sel_xy.onchange();
		 
		}
		</script>
		</HEAD>
		<BODY text="#000000" bgColor="#ffffff" leftMargin="0" topMargin="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
		<tr><td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>未安排毕业设计</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="d_wapbysj_rpt.aspx" target="main">
				<tr>
					<td valign="top" align="center" height="5%">
					<%try{%>
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td align="left" height="26" colspan="2">
									学年学期
									<select name="sel_xnxq">
										<%=(new ind_subPrivate_JXSJ()).SetValue("sjxnxq","")%>
									</select>
								<input type=radio name=radCx value="1" checked >主修
								<input type=radio name=radCx value="2" >辅修
								</td>
							</tr>
							<tr>
								<td width="17%">毕业年届
									<select name="sel_nj" onchange='changezy()'>
										<%=(new ind_subPublic()).PutValue("pub_xn","")%>
									</select></td>
								<td><%=(new ind_subPrivate_JXSJ()).SetValue("yxzy",USER_OPTYX)%></td>
								<td align="right"><input type="submit" name="btn_search" value="检索" class="button"></td>
							</tr>
						</table>
						<%}catch(Exception ex){Response.Output.Write(ex.Message.ToString());Response.End();}%>
					</td>
				</tr>
			</form>
			<tr>
				<td valign="top" align="center" height="5%"><br>
					<DIV id="theHead" style='WIDTH: 100%'></DIV>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="main" src="d_wapbysj_rpt.aspx" width="100%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
		</td></tr>
		</table>
		</BODY>
</HTML>
