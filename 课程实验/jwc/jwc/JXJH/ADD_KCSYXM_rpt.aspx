<%@ Page language="c#" Codebehind="ADD_KCSYXM_rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.ADD_KCSYXM_rpt" %>
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Rpt.css" type="text/css" rel="stylesheet">
		<script language=javascript>
			function trdblclick(Object,theID)
			{
				var kcdm;
				var syxmdm;
				var flag;
				var syxmmc;
				var user_dm;
				var t_ycs;
				var expeitemtype1;
				var expeitemtype2;
				var expeitemtype3;
				var expeitemtype4;
				var expeitemtype5;
				var expeitemtype6;
				var memo;
				var xh;
				
				kcdm=theID.kcdm;
				syxmdm=theID.syxmdm;
				flag=theID.flag;
				syxmmc=theID.syxmmc;
				user_dm=theID.user_dm;
				t_ycs=theID.t_ycs;
				expeitemtype1=theID.expeitemtype1;
				expeitemtype2=theID.expeitemtype2;
				expeitemtype3=theID.expeitemtype3;
				expeitemtype4=theID.expeitemtype4;
				expeitemtype5=theID.expeitemtype5;
				expeitemtype6=theID.expeitemtype6;
				memo=theID.memo;
				xh=theID.xh;
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
					parent.document.all.kcdm.value=kcdm;
					parent.document.all.syxmdm.value=syxmdm;
					parent.document.all.syxmmc.value=syxmmc;
					parent.document.all.user_dm.value=user_dm;
					parent.document.all.t_ycs.value=t_ycs;
					parent.document.all.memo.value=memo;
					
					//演示
					if(expeitemtype1=="1")
						parent.document.all.type1.checked=true;
					else
						parent.document.all.type1.checked=false;
					//验证
					if(expeitemtype2=="1")
						parent.document.all.type2.checked=true;
					else
						parent.document.all.type2.checked=false;
					//综合	
					if(expeitemtype3=="1")
						parent.document.all.type3.checked=true;
					else
						parent.document.all.type3.checked=false;
					//设计	
					if(expeitemtype4=="1")
						parent.document.all.type4.checked=true;
					else
						parent.document.all.type4.checked=false;
					//基本训练	
					if(expeitemtype5=="1")
						parent.document.all.type5.checked=true;
					else
						parent.document.all.type5.checked=false;
					//提高	
					if(expeitemtype6=="1")
						parent.document.all.type6.checked=true;
					else
						parent.document.all.type6.checked=false;
					
					//保存／删除按钮
					if(flag=='1'){
						parent.document.all.delbut.disabled=false;
						parent.document.all.savebut.disabled=false;
						parent.document.all.xh.value=xh;
					}
					else{
						parent.document.all.delbut.disabled=true;
						parent.document.all.savebut.disabled=false;
						parent.document.all.xh.value='';
					}
				
				}catch(e){}
			}
		</script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" onselectstart="window.event.returnValue=false" leftMargin="0" topMargin="0" marginheight="0"
		marginwidth="0">
		<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
		<input id="oldBgColor" type="hidden" name="oldBgColor">
		<input id="oldFontColor" type="hidden" name="oldFontColor">
		<input id="oldObject" type="hidden" name="oldObject">
	</body>
</HTML>
