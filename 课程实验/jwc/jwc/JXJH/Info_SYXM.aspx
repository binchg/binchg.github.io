<%@ Page language="c#" Codebehind="Info_SYXM.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.Info_SYXM" %>
<HTML>
	<HEAD>
		<title>查看实验项目信息</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="Info_SYXM_rpt.aspx" target="frmRpt" method="post">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>查看实验项目信息</b></td>
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
								<td width="60%">实验项目名称&nbsp;<input type="text" name="txt_syxmmc" size="20" maxlength="20"></td>
								<td align="left" width="34%"><br></td>
								<td align="right" width="6%" nowrap><input class="button" type="submit" name="submit" value="检索"></td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr><td valign="bottom" align="center" height="3%"><br>
					<DIV id=theHead style='display: none_;width:99%;'></DIV>
				</td></tr> 
	
				<tr>
					<td valign="bottom" align="center" height="100%">
						<iframe name="frmRpt" src="Info_SYXM_rpt.aspx" width="99%" height="99%" frameborder="0"></iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
