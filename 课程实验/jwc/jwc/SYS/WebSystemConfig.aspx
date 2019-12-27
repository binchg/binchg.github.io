<%@ Page language="c#" Codebehind="WebSystemConfig.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.SYS.WebSystemConfig" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
    <title><asp:Literal ID="titleStr" Runat="server" Text=""></asp:Literal></title>
<meta content="Microsoft Visual Studio .NET 7.1" name=GENERATOR>
<meta content=C# name=CODE_LANGUAGE>
<meta content=JavaScript name=vs_defaultClientScript>
<meta content=http://schemas.microsoft.com/intellisense/ie5 name=vs_targetSchema>
<link rel="stylesheet" href="../_style/Styles_setdb.css" type="text/css">
<script language=JavaScript src="../include/Scr/ind_HTML_hr.js"></script>
<script LANGUAGE="javascript">
	var gWinwidth,gWinheight;
	var gDialogsize;
	//window.moveTo(5,5);
	gWinwidth=320;
	gWinheight=400;
	//gDialogsize= "width=640,height=480,left=300,top=50,"
	if (window.screen.height > 600){	
	gWinheight= 500;
	//gDialogsize= "width=640,height=480,left=500,top=50"
	}
	//window.resizeTo(gWinwidth,gWinheight);
	//window.moveTo((window.screen.width-gWinwidth)/2,(window.screen.height-gWinheight)/2);
</script>
</HEAD>
<body scroll="no" leftMargin=0 topMargin=0>
<form id="Form1" name="Form1"  runat="server">
<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
</form>
</body>
</HTML>