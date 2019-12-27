<%@ Page language="c#" Codebehind="Set_SYJXRW_rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Set_SYJXRW_rpt" %>
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Rpt.css" type="text/css" rel="stylesheet">
		<script language=javascript>
			function trdblclick(Object,kcid,xnxq,skbj,user_kcid,kcmc,zxf,zxs,syxs,skbh,skbj,skrs)
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
					parent.document.all.user_kcid.value=user_kcid;
					parent.document.all.kcmc.value=kcmc;
					parent.document.all.zxf.value=zxf;
					parent.document.all.zxs.value=zxs;
					parent.document.all.syxs.value=syxs;
					parent.document.all.skbh.value=skbh;
					parent.document.all.skrs.value=skrs;
					
					parent.document.all.xnxq.value=xnxq;
					parent.document.all.kcdm.value=kcid;
					parent.document.all.skbj.value=skbj;
					parent.frm.location.href='Set_CXSYJXRW.aspx?xnxq='+xnxq+'&skbj='+skbj+'&kcid='+kcid;
					parent.document.all.add.disabled=false;
				}catch(e){}
			} 
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
		<input id="oldBgColor" type="hidden" name="oldBgColor">
		<input id="oldFontColor" type="hidden" name="oldFontColor">
		<input id="oldObject" type="hidden" name="oldObject">
	</body>
</HTML>
