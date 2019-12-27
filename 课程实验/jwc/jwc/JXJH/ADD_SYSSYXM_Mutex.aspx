<%@ Page language="c#" Codebehind="ADD_SYSSYXM_Mutex.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.ADD_SYSSYXM_Mutex" %>
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/Styles_Qry.css" type="text/css" rel="stylesheet">
		<script language=javascript>
			function chkvalue(){
				var i;
				var row;
				var items='';
				var CheckObject;
				try{
					row=document.all.recordrow.value;
					for(i=1;i<=row;i++){
						eval("CheckObject=document.all.chk"+i);
						if(CheckObject.checked){
							if(items=="")
								items=CheckObject.value;
							else
								items+=";"+CheckObject.value;
						}
					}
					parent.document.all.mutex_items.value=items;
				}catch(e){}
			}
		</script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" onselectstart="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" leftMargin="0" topMargin="0" marginheight="0"
		marginwidth="0" onsource="window.event.returnValue=false" scroll=no>
		<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
	</body>
</HTML>
