<%@ Page language="c#" Codebehind="Set_ExpeArrange_rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Set_ExpeArrange_rpt" %>
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Rpt.css" type="text/css" rel="stylesheet">
		<script language=javascript>
			function SelStu(Object,id,xn,xq,expeitemskbj_xh,time){
				var theURL;
				var w=540,h=410;
				theURL='Tea_ArrangeExpe_SelStuDialog.aspx?xn='+xn+'&xq='+xq+'&expeitemskbj_xh='+expeitemskbj_xh+'&time='+time;
				eval("Tform='dialogWidth:"+w+"px;dialogHeight:"+h+"px;status:no;scrollbars=no;help:no'");	
			    window.showModalDialog(theURL,1,Tform);
			}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
	</body>
</HTML>
