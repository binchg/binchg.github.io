<%@ Page CodeBehind="index_Lookxl.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame._data.index_Lookxl" %>
<HTML>
	<HEAD>
		<title>
			<asp:Literal ID="titleStr" Runat="server" Text=""></asp:Literal>
		</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<link rel="stylesheet" href="../_style/styles_rpt.css" type="text/css">
		<script language=javascript src=Private/ind_PrintSet.js></script>
		<style> .td{border-left-width: 1px; border-left-style: solid; border-right-width: 1px; border-right-style: solid; border-left-color:#000000; }
		</style>
	</HEAD>
	<body style="OVERFLOW:auto" onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftmargin="0" topmargin="0">
		<br>
		<table width="620" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr>
				<td  valign=top align="left" width="6%" nowrap height="28"><input class="button" type="button" name="daochu" value="µ¼³ö" onclick="Export()"></td>
				<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
			</tr>
		</table>
	</body>
</HTML>
