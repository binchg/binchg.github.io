<%@ Page language="c#" Codebehind="ADD_SYSSYXM_rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.ADD_SYSSYXM_rpt" %>
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
				var sysdm;
				var syxmdm;
				var flag;
				var syxmmc;
				var user_dm;
				var t_ycs;
				var memo;
				var expeitem_rl;
				var mutex_items;
				
				sysdm=theID.sysdm;
				syxmdm=theID.syxmdm;
				flag=theID.flag;
				syxmmc=theID.syxmmc;
				user_dm=theID.user_dm;
				t_ycs=theID.t_ycs;
				memo=theID.memo;
				expeitem_rl=theID.expeitem_rl;
				mutex_items=theID.mutex_items;
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
					parent.document.all.sysdm.value=sysdm;
					parent.document.all.syxmdm.value=syxmdm;
					parent.document.all.syxmmc.value=syxmmc;
					parent.document.all.user_dm.value=user_dm;
					parent.document.all.t_ycs.value=t_ycs;
					parent.document.all.memo.value=memo;
					
					//保存／删除按钮
					if(flag=='1'){
						parent.document.all.delbut.disabled=false;
						parent.document.all.savebut.disabled=false;
						parent.document.all.expeitem_rl.value=expeitem_rl;
						parent.document.all.mutex_items.value=mutex_items;
					}
					else{
						parent.document.all.delbut.disabled=true;
						parent.document.all.savebut.disabled=false;
						parent.document.all.expeitem_rl.value='';
						parent.document.all.mutex_items.value='';
					}
					parent.document.all.setbut.disabled=false;
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