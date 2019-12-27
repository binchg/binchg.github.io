<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>查看未提交考场记录的课程/批次→考场</title>
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
if (form1.sel_cddw.value=='' || form1.sel_cddw.value=='nothing' ){alert("请选择承担单位！");return false;}
else {return true;}
}
</script>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看未提交考场记录的课程/批次→考场</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="j_kclr_rpt.aspx" target="main" >              
<tr  align="center"><td> 
<table width="660" align="center">
<tr><%try{   ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW(); %>
<td valign="bottom" align="left" colspan=2><%=ind_sp.SetValue("xnxqkslc","")%></td></tr>
<tr><td valign="bottom" align="left" ><%=ind_sp.SetValue("cddwkc",pSub.USER_OPTDW)%></td>
<td align="right"><%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());}%>
<input type="submit" name="btn_search" value="检索" class=button onclick='return selchk()'>
</td></tr>
</table>
</td></tr>
</form>

<!--tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr --> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="j_kclr_rpt.aspx" width=99% height=100% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>

