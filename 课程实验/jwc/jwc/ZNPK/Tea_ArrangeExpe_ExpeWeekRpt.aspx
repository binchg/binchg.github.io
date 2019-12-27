<%@ Page language="c#" Codebehind="Tea_ArrangeExpe_ExpeWeekRpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Tea_ArrangeExpe_ExpeWeekRpt" %>
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
				var js,expeitemskbj,sysid;
				var xn,xq_id,zc,l_jc;
				for(i=1;i<=totalweek;i++){
					if(i==Object.value)
						document.all("week"+i).style.backgroundColor='#89BFA7';
					else
						document.all("week"+i).style.backgroundColor='#F4FFFB';
				}
				zc=Object.value;
				xn=parent.document.all.xn.value;
				xq_id=parent.document.all.xq_id.value;
				js=parent.document.all.js.value;
				sysid=parent.document.all.sysid.value;
				l_jc=parent.document.all.t_apxs.value;
				expeitemskbj=parent.document.all.expeitemskbj.value;
				parent.document.all.zc.value=zc;
				if(js==''||js=='undefined'){
					alert('需选定指导教师！');
				}else{
					theURL='Tea_ArrangeExpe_ExpeJcRpt.aspx?xn='+xn+'&xq_id='+xq_id+'&zc='+zc+'&js='+js+'&sysid='+sysid+'&expeitemskbj='+expeitemskbj+'&l_jc='+l_jc;
					parent.ExpeJcRpt.location.href=theURL;
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
