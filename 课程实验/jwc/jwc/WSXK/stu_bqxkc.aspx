<%@ Page language="c#" Codebehind="stu_bqxkc.aspx.cs" AutoEventWireup="false" Inherits="JWNET.WSXK.stu_bqxkc" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>被取消课程</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
leftmargin="0" topmargin="0">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
		<tr><td valign="top" align="center">
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>被取消课程</b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
			</table>   
		</td></tr>

		<tr><td valign="top" align="center"  height="28" >
			<table width="660" border=0 align="center" cellpadding="0" cellspacing="0">
				<tr><td  align="left" height="28" width="60px">学年学期：</td> 
					<td  align="left" ><%=xnxqstr%><br></td>
				</tr>
			</table>   
		</td></tr>

		<tr><td  align="center" height="2%">
		<DIV id="theHead" style="display: none_;width:99%;"></DIV>
		</td></tr> 
		
		<tr><td valign="top" align="center" height="97%">
			<iframe name=main src="stu_bqxkc_rpt.aspx" width=99% height=98% frameborder=0></iframe>
		</td></tr> 
	</table>
</body>
</html>