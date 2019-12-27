<%@ Page language="c#" Codebehind="Tea_ArrangeExpe_Trpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Tea_ArrangeExpe_Trpt" %>
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Rpt.css" type="text/css" rel="stylesheet">
		<script language=javascript>
			function trdblclick(Object,xn,xq,kcid,skbj,js)
			{
				//try{
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
					//记录需提交的信息
					parent.document.all.xn.value=xn;
					parent.document.all.xq_id.value=xq;
					parent.document.all.kcid.value=kcid;
					parent.document.all.skbj.value=skbj;
					parent.document.all.js.value=js;
					parent.hiddenFrm.location.href='Tea_ArrangeExpe_Optrpt.aspx?flag=0&xn='+xn+'&xq_id='+xq+'&skbj='+skbj;
					parent.ExpeItemRpt.location.href='Tea_ArrangeExpe_ExpeItemrpt.aspx?xn='+xn+'&xq_id='+xq+'&skbj='+skbj;
				//}catch(e){}
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