<%@ Page language="c#" Codebehind="Pri_TeacKCJXRW.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Pri_TeacKCJXRW" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<html>
  <head>
    <title>承担课程</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	<script language="JavaScript" src='../Scripts/Script.js'></script>
	<script language=javascript>
		function ChkVal()
		{
			var TheObjVal=document.all.Sel_XNXQ.value;
			if((TheObjVal=="")||(TheObjVal=="Nothing")){
				alert('需选定学年学期！');
				return false;
			}else{
				return true;
			}
		}
	</script>
    </head>
	<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>承担课程</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
						<form name="form" method="post" action="Pri_TeacKCJXRW_rpt.aspx" ID="Form" target="frmRpt">
								<tr>
									<td align="left" width="35%" height="28"><%=(new Base().SetValue("JXRWXNXQ"))%></td>
									<td width="50%" align="right" height="28">&nbsp;</td>
									<td width="15%" align="right" height="28">
										<input name="Submit01" type="submit" value="检索" class="button"  onclick="return ChkVal()">
										<input name="button" type="button" value="导出" class="button"  onclick="Export(window.frmRpt)">
									</td>
								</tr>
						</form>
					</table>
				</td>
			</tr>
			
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="frmRpt" src="Pri_TeacKCJXRW_rpt.aspx" width="99%" height="98%" frameborder="0"></iframe>
				</td>
			</tr>
		</table>
	</body>
</html>
