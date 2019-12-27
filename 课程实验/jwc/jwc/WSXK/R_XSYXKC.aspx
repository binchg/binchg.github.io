<%@ Page language="c#" Codebehind="R_XSYXKC.aspx.cs" AutoEventWireup="false" Inherits="JWNET.WSXK.R_XSYXKC" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>查看学生预选课程</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ChkValue()
			{
				var vXS;
				try{
					vXS=document.all.Sel_XS.value;
					if((vXS=="")||(vXS=="Nothing")){alert('请选择学生!');return false;}
					else{return true;}
				}catch(e){}
			}
			
			function ShowListValue(theID,vP)
			{
				var theURL;
				try{
					if(theID.value!="")
					{
						theURL="../ZNPK/Private/List_"+vP+".aspx?xs="+theID.value;
						window.vfrmRpt.location.href=theURL;
					}
				}
				catch(e){}
			}
		</script>
</head>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">
	<form name="form1" method="POST" action="R_XSYXKC_rpt.aspx" target="main" onsubmit="return ChkValue()" >
	<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
		<tr><td valign="top" align="center">
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>查看学生预选课程</b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
			</table>   
		</td></tr>

		<tr><td valign="top" align="center" height="5%">
			<table width="660" border=0 align="center" cellpadding="0" cellspacing="0">
				<tr><td  align="left" height="26" width="90%"><%=(new Base().SetValue("XS"))%></td> 
					<td width="6%" align="right"><input name="submit" type="submit" id="submit" value="检索" class=button></td>
				</tr>
			</table>   
		</td></tr>

		<tr><td valign="bottom" align="center" height="5%"><DIV id="theHead" style="display: none_;width:99%;"></DIV></td></tr> 
		<tr><td valign="top" align="center" height="100%">
			<iframe name=main src="R_XSYXKC_rpt.aspx" width=99% height=98% frameborder=0></iframe>
			<iframe name=vfrmRpt src="" style="display:none;width:0px;height:0px" frameborder=0></iframe>
		</td></tr> 
	</table>
	</form> 
</body>
</html>
