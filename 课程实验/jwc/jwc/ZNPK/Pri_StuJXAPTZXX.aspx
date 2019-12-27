<%@ Page language="c#" Codebehind="Pri_StuJXAPTZXX.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.Pri_StuJXAPTZXX" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>教学安排调整信息</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
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
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>教学安排调整信息</b></td>
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
						<form name="form" method="post" action="Pri_StuJXAPTZXX_rpt.aspx" ID="Form" target="frmRpt">
								<tr>
									<td width="35%" height="28px" align="left">学年学期&nbsp;<select name='Sel_XNXQ'  style='WIDTH:165px'><%=(new Base().SetValue("XNXQ"))%></select></td>
									<td width="55%" height="28px" align="right">&nbsp;
									<td width="10%" height="28px" align="right"><input name="Submit01" type="submit" value="检索" class="button"  onclick="return ChkVal()"></td>
								</tr>
						</form>
					</table>
				</td>
			</tr>
			
			
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="vfrmRpt" src="" style="DISPLAY:none" width="0" height="0" frameborder="0"></iframe>
					<iframe name="frmRpt" src="Pri_StuJXAPTZXX_rpt.aspx" width="99%" height="98%" frameborder="0"></iframe>
				</td>
			</tr>
		</table>
	</body>
</html>


