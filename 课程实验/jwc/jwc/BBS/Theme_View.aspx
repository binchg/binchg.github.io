<%@ Page language="c#" Codebehind="Theme_View.aspx.cs" AutoEventWireup="false" Inherits="JWNET.BBS.Theme_View" %>
<HTML>
	<HEAD>
		<title>查看主题</title>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" type="text/css" href="../_style/Styles_Qry.css">
			<script language='JavaScript' src='returnfunction.js'></script>
			<script language="javascript" src="../include/Scr/ind_subPublic.js"></script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" bgcolor="#ffffff" leftmargin="0" topmargin="0"
		marginwidth="0" marginheight="0" scroll="auto">
		<table width="99%" border="0" align="center" cellspacing="0">
			<tr>
				<td width="1%"></td>
				<td width="99%" align="left">
					<asp:Panel ID="head" Runat="server"></asp:Panel>
				</td>
			</tr>
		</table>
		<div align="center">
			<center>
				<table border="0" width="99%" bgcolor="#89bfa7" cellspacing="1">
					<tr class='T'>
						<td width="146" height="22"><b>发表人</b></td>
						<td height="22"><b><asp:Panel ID="ThemeTitle" Runat="server"></asp:Panel></b></td>
					</tr>
				</table>
			</center>
		</div>
		<div align="center">
			<center>
				<table border="0" width="99%" bgcolor="#89bfa7" cellspacing="1">
					<tr>
						<td width="146" bgcolor="#f5f5f5" valign="top">
							<asp:Panel ID="userstr" Runat="server"></asp:Panel>
						</td>
						<td bgcolor="#f5f5f5" valign="bottom">
							<asp:Panel ID="sTmp" Runat="server"></asp:Panel>
						</td>
					<tr>
						<td width="146" bgcolor="#f5f5f5">
							<asp:Panel ID="writetime" Runat="server"></asp:Panel>
						</td>
						<td bgcolor="#f5f5f5" align="right">
							<asp:Panel ID="manage" Runat="server"></asp:Panel>
						</td>
					</tr>
				</table>
			</center>
		</div>
		<asp:Repeater id="Repeater1" runat="server">
			<HeaderTemplate>
				<div align='center'>
					<center>
						<table border='0' width='99%' bgcolor="#89bfa7" cellspacing="1">
			</HeaderTemplate>
			<ItemTemplate>
				<asp:Panel ID="hf_item" Runat="server"></asp:Panel>
			</ItemTemplate>
			<FooterTemplate>
				</table> </center> </div>
			</FooterTemplate>
		</asp:Repeater>
		<p></p>
		<asp:Panel ID="SelecedPage" Runat="server" Visible="False"></asp:Panel>
	</body>
</HTML>
