<%@ Page language="c#" Codebehind="Logout.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.SYS.Logout" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Logout</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="../_style/styles_home.css" rel="stylesheet" type="text/css">
		<script language=javascript>
			function openWin(theURL){
				try{
					var Tform,w,h;
					try{
						w=window.screen.width-10;
					}catch(e){}
					try{
						h=window.screen.height-162;
					}catch(e){}
					eval("Tform='width="+w+",height="+h+",status=yes,toolbar=yes,menubar=yes,location=yes,resizable=yes,scrollbars=no'");
					pop=parent.window.open(theURL,'',Tform); 
					pop.moveTo(0,0);
					parent.opener=null;
					parent.close();
				}catch(e){}
			}
		</script>
	</HEAD>
	<body scroll="no" onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		topmargin="0" leftmargin="0">
		<form id="Form1" method="post" runat="server">
		</form>
	</body>
</HTML>
