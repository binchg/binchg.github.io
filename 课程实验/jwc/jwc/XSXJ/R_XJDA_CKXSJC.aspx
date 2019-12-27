<%@ Page language="c#" Codebehind="R_XJDA_CKXSJC.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.R_XJDA_CKXSJC" %>
<%@ Import NameSpace="BLL.XSXJ"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<HTML>
	<HEAD>
		<title>查看学生奖惩</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language=javascript>
			function ChkVal()
			{
				var TheObjVal=document.all.Sel_YX.value;
				if((TheObjVal=="")||(TheObjVal=="Nothing")){
					alert('需选定院(系)/部！');
					return false;
				}else{
					return true;
				}
			}
		</script>
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="R_XJDA_CKXSJC_Rpt.aspx" target="frmRpt" method="post">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>查看学生奖惩</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="28">
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td width="34%">学年学期&nbsp;<select name="Sel_XNXQ" style="WIDTH:165px"><%=(new XSXJ_Rpt().GetXNXQInfo())%></select></td>
								<td align="left" width="35%">院(系)/部&nbsp;<select name="Sel_YX" style="WIDTH:165px"><%=(new XSXJ_Rpt().GetYXInfo(USER_OPTYX))%></select></td>
								<td align="left" width="25%" nowrap><input type=radio name="SelRad" value="0" checked>奖励信息&nbsp;
									<input type=radio name="SelRad" value="1">惩罚信息
								</td>
								<td align=right width="6%"><input class="button" type="submit" name="submit" value="检索" onclick="return ChkVal()"></td>
							</tr>
							
						</table>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="100%">
						<iframe name="frmRpt" src="R_XJDA_CKXSJC_Rpt.aspx" width="100%" height="98%" frameborder="0"></iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>