<%@ Page language="c#" Codebehind="Pri_TeacSel_rpt.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.Pri_TeacSel_rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/Styles_rpt.css" type="text/css" rel="stylesheet">
		<script language="javascript">
			function openWin(theID,vT)
			{	
				var theURL,w,h,Tform;
				if(vT=='kc'){
					w=480,h=300;
					eval("Tform='width="+w+",height="+h+",scrollbars=auto'");
					theURL = '../JXJH/INFO_KC.aspx?id='+theID.value;
				}else if(vT=='js'){
					w=450,h=380;
					eval("Tform='width="+w+",height="+h+",scrollbars=auto'");
					theURL = '../JXZY/INFO_Teacher.aspx?id='+theID.value;
				}else{
					w=600,h=300;
					eval("Tform='width="+w+",height="+h+",scrollbars=yes'");
					theURL='Pri_TeacSel_SKBJ.aspx?xnxq='+theID+'&skbj='+vT;
				}
				pop=window.open(theURL,'winKPT',Tform);	
			}
			
			function openHjWin(xnxq,kcid,hjlb,jsdm,zc,hjmc,xf,zs,fzrs)
			{
				var theURL,w,h,Tform;
				w=600,h=300;
				eval("Tform='width="+w+",height="+h+",scrollbars=yes'");
				theURL='Pri_TeacSel_Fzgc.aspx?xnxq='+xnxq+'&kcid='+kcid+'&hjlb='+hjlb+'&jsdm='+jsdm+'&zc='+zc+'&hjmc='+hjmc+'&xf='+xf+'&zs='+zs+'&fzrs='+fzrs;
				pop=window.open(theURL,'winKPT',Tform);	
			}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">		
		<asp:Panel ID="pageRpt" Runat="server"></asp:Panel><FONT face="ËÎÌו"></FONT>
	</body>
</HTML>
