<%@ Page Language="C#" %>
<%@ Register TagPrefix="ListInfo" TagName="AutoMenuLeftShow" Src="Menu_Left.ascx" %>
<HTML>
	<HEAD>
		<title>Menu</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/Styles_menu.css" type="text/css" rel="stylesheet">
		
	</HEAD>
	<body leftMargin="0" topMargin="0" oncontextmenu="window.event.returnValue=false" onselectstart="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 100%; HEIGHT: 100%" cellSpacing="0" cellPadding="0" border="0">
				<tbody>
					<tr>
						<td id="divTheMenu" style="HEIGHT: 100%" vAlign="top" align="center" width="132" bgColor="#BFE5D5"
							runat="server"><LISTINFO:AUTOMENULEFTSHOW id="AutoMenuLeftShow" runat="server"></LISTINFO:AUTOMENULEFTSHOW></td>
					</tr>
				</tbody>
			</table>
		</form>
	</body>
</HTML>
