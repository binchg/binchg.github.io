<%@ Page language="c#" Codebehind="index_KBFB.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame._data.index_KBFB" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>课表发布</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html;charset=gb2312">
		<link rel="stylesheet" href="../_Style/Styles_Home.css" type="text/css">
		<script language="JavaScript">
		function popWinGD(theURL){
			var pop,w=670,h=450; //window.navigate(theURL);
			pop=window.open(theURL,"winGD","width="+w+",height="+h+",resizable=yes,menubar=no,toolbar=no,location=no,scrollbars=no,status=no")
 			pop.moveTo((screen.width-w)/2,(screen.height-h)/2);
		}
		</script>
	</HEAD>
	<body topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0">
		<form id="Form1" method="post" runat="server">
		<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
		</form>
	</body>
</HTML>
