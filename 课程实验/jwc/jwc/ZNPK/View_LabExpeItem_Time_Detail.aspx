<%@ Page language="c#" Codebehind="View_LabExpeItem_Time_Detail.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.View_LabExpeItem_Time_Detail" %>
<HTML>
	<HEAD>
		<title>查看可安排周次/节次</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			var MouseOverBgColor='#A1D0b8';
			var MouseOutBgColor='#DDF2E6';
			function onMouseOver_TD(Object){	
				Object.style.backgroundColor=MouseOverBgColor;
			}
			
			function onMouseOut_TD(Object){
				Object.style.backgroundColor=MouseOutBgColor;
			}
			
			function onMouseDown_TD(Object){	
				Object.style.borderStyle='inset';
			}
			
			function onMouseUp_TD(Object){	
				Object.style.borderStyle='outset';
			}
			
			function onClickTD(Object,clickID){
				var i;
				var zccount=document.all.zccount.value;
				for(i=1;i<=zccount;i++){
					if(i==clickID){
						eval("document.all.layer"+i+".style.display='';");
					}
					else{
						eval("document.all.layer"+i+".style.display='none';");
					}
				}
				document.all.zcid.value=clickID;
				document.all.zcvalue.value=Object.value;
			}
		</script>
		<style> td.button{ width:40px; height:9px; cursor:hand; border-style:outset; border-width:2px; background-color:#DDF2E6; padding-left:5px; }
	td.head{ height:20px; background-color:#C5E3D4; }
		</style>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftMargin="0" topMargin="0" marginheight="0" marginwidth="0"  >
		<form name="form1" method=post action="" target="_self">
		<table width="98%" height="360" border="0" cellpadding="0" cellspacing="0" align="center">
			<tr><td width="100%" style="HEIGHT:5px" nowrap ></td></tr>
			<tr><td width="100%" align="left"  valign="top" height="20%"  >
				<asp:Panel ID="zcRpt" Runat="server"></asp:Panel></td></tr>
			<tr><td width="100%" align="left" valign="top" height="260" nowrap >
				<asp:Panel ID="jcRpt" Runat="server"></asp:Panel></td></tr>
			<tr><td width="100%" style="HEIGHT:5px" nowrap ></td></tr>
			<tr><td width="100%" align="left" >
				<asp:Panel ID="pageRpt" Runat="server"></asp:Panel></td></tr>
			<tr><td width="100%" style="HEIGHT:5px" nowrap ></td></tr>
		</table>
		<input type="hidden" name="xn">
		<input type="hidden" name="xq">
		<input type="hidden" name="sysid">
		<input type="hidden" name="expeitemskbj">
		<input type="hidden" name="time">
		<input type="hidden" name="zcid">
		<input type="hidden" name="zcvalue">
		</form>
	</body>
</HTML>