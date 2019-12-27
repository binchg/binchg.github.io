<%@ Page language="c#" Codebehind="ADD_SYXM_rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.ADD_SYXM_rpt" %>
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/Styles_rpt.css" type="text/css" rel="stylesheet">
		<script language=javascript>
			function trdblclick(Object,theID)
			{
				try{
					var BGColor='#89bfa7';
					//双击变色处理
					if((oldBgColor.value=='')&&(oldObject.value=='')){
						oldBgColor.value=eval(Object+".style.backgroundColor");
						oldFontColor.value=eval(Object+".style.color");
						oldObject.value=Object;
						eval(Object+".style.backgroundColor='"+BGColor+"';");
						eval(Object+".style.color='white'");
					}else{
						if(oldObject.value!=Object){
							eval(oldObject.value+".style.backgroundColor='"+oldBgColor.value+"'");
							eval(oldObject.value+".style.color='"+oldFontColor.value+"'");
							oldObject.value=Object;
							oldBgColor.value=eval(Object+".style.backgroundColor");
							eval(Object+".style.backgroundColor='"+BGColor+"';");
							eval(Object+".style.color='white'");
						}
					}
					parent.document.all.syxmdm.value=theID.dm;
					parent.document.all.user_dm.value=theID.user_dm;
					parent.document.all.syxmmc.value=theID.mc;
					parent.document.all.syxmxs.value=theID.xs;
					parent.document.all.memo.value=theID.memo;
					if(theID.used_flag=='0')
						parent.document.all.delbut.disabled=false;
					else
						parent.document.all.delbut.disabled=true;
				}catch(e){}
			}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
		<input id="oldBgColor" type="hidden" name="oldBgColor">
		<input id="oldFontColor" type="hidden" name="oldFontColor">
		<input id="oldObject" type="hidden" name="oldObject">
	</body>
</HTML>
