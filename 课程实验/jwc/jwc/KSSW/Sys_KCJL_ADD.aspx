<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%
BLL.KSSW.ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW();
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>录入考场记录</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%" align="center">

<tr><td valign="top" align="center" height="26">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>录入考场记录</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
           
<form name="form1" method="post" action="Sys_kcjl_newadd.aspx" target="main" >              
<tr align="center"><td> 
        <table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
            <tr><td valign="bottom" align="left" colspan=2><%=ind_sp.SetValue("XNXQKSLC","")%></td></tr>
		<tr>
		<td valign="bottom" align="left"  name="disyx" id="disyx" height="30"><%=ind_sp.SetValue("cddwkc",pSub.USER_OPTDW)%></td>
		<td valign="bottom" align="right"><input type="submit" name="btn_search" value="检索" class=button ></td>   
          </tr>
        </table> 
</td></tr>
</form>
<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="Sys_kcjl_newadd.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 

</table>
</body>
</html>