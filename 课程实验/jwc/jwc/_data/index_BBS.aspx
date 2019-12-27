<%@ Page language="c#" Codebehind="index_BBS.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame._data.index_BBS" %>
<HTML>
	<HEAD>
		<title>青果软件</title>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_Style/Styles_Home.css" type="text/css">
		<script language="JavaScript">
function popWinGD(theURL){
	var pop,w=450,h=540; //window.navigate(theURL);
	pop=window.open(theURL,"winGD","width="+w+",height="+h+",resizable=yes,menubar=no,toolbar=no,location=no,scrollbars=yes,status=no")
 	pop.moveTo((screen.width-w)/2,0);
	//pop.moveTo(5,5);
}
		</script>
	</HEAD>
	<body  leftmargin="0" topmargin="0"  marginwidth="0" marginheight="0">
		<form id=form1 runat=server>
		<TABLE width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td align="center" valign="top">
				<asp:Repeater id="Repeater1" runat="server">
					<HeaderTemplate>
						<table width='100%' border='0' cellspacing='0' cellpadding='3'>
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Panel ID="tContent" Runat="server" ></asp:Panel>
					</ItemTemplate>
					<FooterTemplate>
						</TABLE>
					</FooterTemplate> 
				</asp:Repeater>
			</TD>
		</TR>
		</TABLE>
		</form>
	</body>
</HTML>
