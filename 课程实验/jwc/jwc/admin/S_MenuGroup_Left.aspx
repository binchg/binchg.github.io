<%@ Page language="c#" Codebehind="S_MenuGroup_Left.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.admin.S_MenuGroup_Left" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>权限管理</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	</HEAD>
	<!--oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onselectstart="window.event.returnValue=false" onsource="window.event.returnValue=false"-->
	<body leftmargin="0" topmargin="0">
		<form id="Form1" method="post" runat="server">
			<table HEIGHT="100%" width="100%" BORDER="1" align="center" CELLPADDING="0" CELLSPACING="0"
				bordercolorlight="#c3e6fa" bordercolordark="#ffffff">
				<tr class="T">
					<td nowrap align="center">
						<asp:Label ID="memuRightRoot" Runat="server" CssClass="clsMenu" ForeColor="black"></asp:Label>
						<br>
					</td>
				</tr>
				<tr>
					<td id="memuRightDiv" name="memuRightDiv" valign="top" align="center" style='WIDTH:100%;HEIGHT:100%'>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
