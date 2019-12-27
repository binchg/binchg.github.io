<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>教职工监考次数</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<script language=javascript>
function selchk()
{
if (form.sel_xy.value=='' || form.sel_xy.value=='nothing' ){alert("请选择院(系/部)！");return false;}
else {return true;}
}
</script>
<!--oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false -->
<body  leftmargin="0" topmargin="0">

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>教职工监考次数</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr><%try{   ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW(); %>
<form name="form" method="post" action="z_jktj_rpt.aspx" target="main" >              
  <tr><td valign="top" align="center" height="5%">
	<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
	  <tr> <td valign="bottom" align="left" colspan=2><%=ind_sp.SetValue("xnxqkslc","")%></td></tr>
		<tr><td valign="bottom" align="left" height="26" nowrap> 院(系)/部 
		<select name=sel_yx style='width:160px'>
		 <%=ind_sp.SetValue("yx",pSub.USER_OPTYX)%>
		</select>
		</td><%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());}%>
      <td valign="bottom" align="right"><input type="submit" name="Submit" value="检索" class=but20></td>
	  </tr>
	</table>     
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="z_jktj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>
