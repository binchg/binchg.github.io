<%@ Page language="c#" Codebehind="Tea_ArrangeExpe_ExpeItemrpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Tea_ArrangeExpe_ExpeItemrpt" %>
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Rpt.css" type="text/css" rel="stylesheet">
		<script language=javascript>
			function trdblclick(Object,expritemid,expritemskbj,l_jc,leavers)
			{
				var xn,xq_id,kcid;
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
				xn=parent.document.all.xn.value;
				xq_id=parent.document.all.xq_id.value;
				kcid=parent.document.all.kcid.value;
				parent.document.all.expeitemskbj.value=expritemskbj;
				parent.document.all.t_apxs.value=l_jc;
				parent.document.all.leavers.value=leavers;
				parent.ExpeLabRpt.location.href='Tea_ArrangeExpe_ExpeLabRpt.aspx?kcid='+kcid+'&expritemid='+expritemid;
				parent.ArraneInfoRpt.location.href='Tea_ArrangeExpe_ArraneInfoRpt.aspx?xn='+xn+'&xq_id='+xq_id+'&expritemskbj='+expritemskbj;
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
