<%@ Page CodeBehind="j_ssxs.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.j_ssxs" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="BLL.include" %>
<%
XSXJ_XSDA pSub=new XSXJ_XSDA(this);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>j_ssxs</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">		
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center" colspan="3">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>按宿舍查学生</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="j_ssxs_rpt.aspx" target="main">
				<tr id="objybCx">
					<td valign="top" align="center" height="5%">
						<table width="660" border="0" align="center" cellspacing="0" cellpadding="0">
							<tr>
								<td width="25%">
								<%=(new XSXJ_XSDA().SetValue("LFLCSS","ALL"))%>	
									姓名&nbsp;<input name="sel_xm" type="text" size="10" maxlength="15">
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr id="objzhCx" style='DISPLAY:none'>
					<td valign="top" align="center" height="5%">
						<table width="660" border="0" align="center" cellspacing="0" cellpadding="0">
							<TBODY>
								<tr>
									<td>宿舍楼&nbsp;
									</td>
									<td><!---<select name="sel_ssl_z" style='WIDTH: 170px;HEIGHT: 20px'><option value="" selected></option>
										call WRT_Thessl() 	
										</select>---></td>
									<td>单元楼层&nbsp;</td>
									<td><!---<select name="sel_lc_z" style='WIDTH: 170px;HEIGHT: 20px'><option value="" selected></option>
											call WRT_Thelc()
										</select>---></td>
								</tr>
								<tr>
									<td>宿舍&nbsp;</td>
									<td><!--<select name="sel_ssh_z" style='WIDTH: 170px;HEIGHT: 20px'><option value="" selected></option>
											call WRT_Thessh()
										</select>---></td>
									<td>姓名&nbsp;</td>
									<td><!--<input name="sel_xm_z" type="text" size="23" maxlength="15">---></td>
					</td>
				</tr>
			</TR>
		</table>
		</TD></TR>
		<tr>
			<td align="center">
				<table width="660" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							<!--<input type="radio" name="radCxXX" id="radCxXX1" value="0" onclick="ZHCX(this)" checked>一般查询
							<input type="radio" name="radCxXX" id="radCxXX2" value="1" onclick="ZHCX(this)">高级查询--->
						</td>
						<td align="right">
							<input type="submit" name="btn_search" value="检索" class="button">
						</td>
					</tr>
				</table>
			</td>
		</tr>
		</FORM>
		<tr>
			<td valign="top" align="center" height="5%"><br>
				<DIV id="theHead" style='DISPLAY: none;WIDTH: 100%'></DIV>
			</td>
		</tr>
		<tr>
			<td valign="top" align="center" height="100%">
				<iframe name="main" src="j_ssxs_rpt.aspx" width="100%" height="98%" frameborder="0"></iframe>
			</td>
		</tr>
		</TBODY></TABLE>
	</body>
</HTML>
