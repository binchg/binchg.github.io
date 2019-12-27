<%@ Page language="c#" Codebehind="Set_ExpeArrange_Rrpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Set_ExpeArrange_Rrpt" %>
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Rpt.css" type="text/css" rel="stylesheet">
		<script language="javascript">
			function SelTime(Object,id,xn,xq,expeitemskbj,labid){
				var theURL;
				var w=590,h=360;
				var ReturnValue;
				theURL='Tea_ArrangeExpe_SelTimeDialog.aspx?xn='+xn+'&xq='+xq+'&labid='+labid+'&expeitemskbj='+expeitemskbj;
				eval("Tform='dialogWidth:"+w+"px;dialogHeight:"+h+"px;status:no;scrollbars=no;help:no'");	
				try{
					ReturnValue=window.showModalDialog(theURL,1,Tform);
				}catch(e){ReturnValue=""}
				if(ReturnValue!=""&&ReturnValue!=undefined){
					eval("document.all.chk"+id+".checked=true");
					eval("document.all.chk"+id+".zcjc=ReturnValue");
				}else{
					eval("document.all.chk"+id+".checked=false");
					eval("document.all.chk"+id+".zcjc=''");
				}
			}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
	</body>
</HTML>
