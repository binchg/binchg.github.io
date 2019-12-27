<%@ Page language="c#" Codebehind="ADD_SKQZ_Rpt.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.ADD_SKQZ_Rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/Styles_rpt.css" type="text/css" rel="stylesheet">
		<script language=javascript src=../include/Scr/ind_Selected.js></script>
		<script language=javascript>
		function op(vK,dm,mc,jc)
		{ 
			var theURL;
			theURL=SelectUser(vK);
			if(theURL)
			{
				parent.document.all.dm.value=dm;
				parent.document.all.mc.value=mc;
				parent.document.all.jcyq.value=jc;
				parent.document.all.add.disabled=false;
				parent.document.all.submit.disabled=true;
				parent.document.all.del.disabled=false;
			}
		}
		</script>
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	</body>
</HTML>
