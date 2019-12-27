<%@ Page language="c#" Codebehind="R_XJDA_TJZXRS_FBXXS_AXKGBZY.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.R_XJDA_TJZXRS_FBXXS_AXKGBZY" %>
<%@ Import NameSpace="BLL.XSXJ"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<HTML>
  <HEAD>
		<title>分办学形式按学科/国标专业统计在校学生人数</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript" >
			function ChkVal()
			{
				var TheID;
				TheID=document.all.Sel_YX.value;
				if((TheID=="")||(TheID=="Nothing")){
					alert('需选定院(系)/部！');
					return false;
				}
			}
		</script>
		<LINK href="../_style/styles_Qry.css" type=text/css rel=stylesheet >
  </HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="R_XJDA_TJZXRS_FBXXS_AXKGBZY_Rpt.aspx" target="frmRpt" method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td vAlign="top" align="center" height="26">
					<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td vAlign="bottom" align="center"><b>分办学形式按学科/国标专业统计在校学生人数</b></td>
						</tr>
						<tr>
							<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
						</tr>
					</table>
				</td>
			</tr>
		
			<tr>
				<td height="28px">
					<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr>
							<td width="19%">学年&nbsp;<select name="Sel_XN" style="width:90px"><%=(new XSXJ_Rpt().GetXNInfo())%></select></td>
							<td height=28 align="left" width="35%">院(系)/部&nbsp;<select name="Sel_YX" style="WIDTH:165px"><%=(new XSXJ_Rpt().GetYXInfo(USER_OPTYX))%></select></td>
							<td width="27%" >办学形式&nbsp;<select name="Sel_BXXS" style="width:120px"><%=(new XSXJ_Rpt().GetBXXSInfo())%></select></td>
							<td align="right" width="19%" nowrap><input class="button" type="submit" name="submit" value="检索" onclick="return ChkVal()" ></td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td valign="bottom" align="center" height="100%">
					<iframe name="frmRpt" src="R_XJDA_TJZXRS_FBXXS_AXKGBZY_Rpt.aspx" width="100%" height="98%" frameborder="0"></iframe>
				</td>
			</tr>
		</table>
		</form>
	</body>
</HTML>