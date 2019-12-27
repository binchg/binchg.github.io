<%@ Page language="c#" Codebehind="View_LabExpeItem_Time_rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.View_LabExpeItem_Time_rpt" %>
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Rpt.css" type="text/css" rel="stylesheet">
		<script language="javascript">
			function openWindow(theURL,xn,xq,sysid,expeitemskbj)
			{
				var theParam;
				var theURL;
				var height=360;
				var width=450;
				try{
					theParam='height='+height+',width='+width+',menubar=no,toolbar=no';
					theURL=theURL+'?xn='+xn+'&xq='+xq+'&sysid='+sysid+'&expeitemskbj='+expeitemskbj;
					pop=window.open(theURL,"win",theParam);
					pop.moveTo((screen.width-width)/2,(screen.height-height)/2);
				}catch(e){}
			}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<div style="OVERFLOW:auto">
			<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
		</div>
	</body>
</HTML>
