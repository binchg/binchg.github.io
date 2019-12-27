<%@ Page language="c#" Codebehind="R_CKGDBYXFYQ.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.R_CKGDBYXFYQ" %>
<%@ Import NameSpace="BLL.XSXJ"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>查看规定毕业学分要求</title>
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
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="R_CKGDBYXFYQ_Rpt.aspx" target="frmRpt" method="post">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>查看规定毕业学分要求</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="56">
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td height=28 width="18%">毕业年届&nbsp;<select name="Sel_BYNJ" style="WIDTH:55px"><%=(new XSXJ_Rpt().GetBYNJInfo())%></select></td>
								<td height=28 align="left" width="35%">院(系)/部&nbsp;<select name="Sel_YX" style="WIDTH:165px"><%=(new XSXJ_Rpt().GetYXInfo(USER_OPTYX))%></select></td>
								<td height=28 align="left" width="41%">
								<input type=radio name=rad value='0' checked>主修
								<input type=radio name=rad value='1'>辅修
								<input type=radio name=rad value='2'>辅修(双学位)</td>
								<td align="right" width=6% nowrap><input class="button" type="submit" name="submit" value="检索"  onclick="return ChkVal()"></td>
							</tr>
							<tr>
								<td align="left" colspan=4 nowrap height=28><input type=checkbox name=chk value="1">含实际开设课程学分</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="100%">
						<iframe name="frmRpt" src="R_CKGDBYXFYQ_Rpt.aspx" width="100%" height="98%" frameborder="0"></iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
