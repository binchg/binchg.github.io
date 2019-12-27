<%@ Page language="c#" Codebehind="Tea_ArrangeExpe_ExpeJcRpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Tea_ArrangeExpe_ExpeJcRpt" %>
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language=javascript>
			function SelectedTD(Object,totalweek)
			{
				var i,theURL;
				var jcinfo,jcanalyse,jcz;
				var leavers,sysrl,fzrs;
				try{	
					for(i=1;i<=totalweek;i++){
					if(i==Object.value)
						document.all("week"+i).style.backgroundColor='#89BFA7';
					else
						document.all("week"+i).style.backgroundColor='#F4FFFB';
					}
				}catch(e){}
				leavers=parent.document.all.leavers.value;
				sysrl=parent.document.all.sysrl.value;
				
				//实验项目未排人数是否大于0
				if(leavers>0){
					parent.document.all.savebut.disabled=false;
					if(leavers<=sysrl)
						fzrs=leavers;
					else
						fzrs=sysrl;
					jcinfo=Object.jcinfo;
					jcanalyse=Object.jcanalyse;
					jcz=Object.jcz;
					parent.document.all.txt_expeskbjrs.value=fzrs;
					parent.document.all.jcinfo.value=jcinfo;
					parent.document.all.jcanalyse.value=jcanalyse;
					parent.document.all.jcz.value=jcz;
				}else{
					parent.document.all.savebut.disabled=true;
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