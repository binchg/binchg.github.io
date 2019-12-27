<%@ Page language="c#" Codebehind="index_allnews.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame._data.index_allnews" %>
<HTML>
	<HEAD>
		<title>教务动态</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK type="text/css" href="../_style/styles_Rpt.css" rel="stylesheet">
		<script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
		<script language="JavaScript">
			function popWinJWDT(theID){
				if ((theID.value)!=""){
					var pop,w=660,h=550; 
					var theURL='../_data/news/index.aspx?href='+theID.value; //window.navigate(theURL);
					pop=window.open(theURL,"winJWDT","width="+w+",height="+h+",resizable=yes,menubar=no,toolbar=no,location=no,scrollbars=yes,status=no")
 					pop.moveTo((screen.width-w)/2,100);
				}
			}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<table width="548" height="340" border="0" cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td align="center" height="26">
					<table width="548" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>教务动态</b>
								<script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="left">
					<div style="OVERFLOW:auto;WIDTH:542px;HEIGHT:300px">
						<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
					</div>
					<script language="JavaScript">Draw_HR('99.5%')</script>
					<div style="OVERFLOW:auto;WIDTH:542px;HEIGHT:30px">
						<asp:Panel ID="Rpt" Runat="server"></asp:Panel>
					</div>
				</td>
			</tr>
		</table>
	</body>
</HTML>
