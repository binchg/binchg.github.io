<%@ Page language="c#" Codebehind="KBFB_RXKBSel.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.KBFB_RXKBSel" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>任选课表</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ChkValue()
			{
				form.method='post';
				form.action='KBFB_RXKBSel_rpt.aspx';
				form.target='frmRpt';
				form.submit();
				return true;
			}
			
			function doPrint(){
				frmRpt.document.execCommand("Print",true);
			}
		</script>
    </head>
	<body  oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form" method="post" action="KBFB_RXKBSel_rpt.aspx" ID="Form">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>任选课表</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="28px">
					<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td width="34%">学年学期&nbsp;<select name='Sel_XNXQ'  style='WIDTH:165px'><%=(new Base().SetValue("XNXQ"))%></select></td>
							<td width="22%">校区&nbsp;<select name="Sel_XQXX" style="WIDTH:110px"><%=(new Base().GetXQInfo())%></select></td>
							<td width="30%"><input type="checkbox" name="rxflag" value=1 >限公共任选课</td>
							<td width="14%" align="right">
								<input name="Submit01" type="submit" value="检索" class="button" onclick="return ChkValue()">
								<input type="button" name="button" id="print"  value="打印" class=but20 onclick='doPrint()' >
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="vfrmRpt" src="" style="DISPLAY:none" width="0" height="0" frameborder="0"></iframe>
					<iframe name="frmRpt" src="KBFB_RXKBSel_rpt.aspx" width="99%" height="98%" frameborder="1"></iframe>
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>
