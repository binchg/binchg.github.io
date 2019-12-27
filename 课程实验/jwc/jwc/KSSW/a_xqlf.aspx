<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>分校区/楼房按教室查看考试安排</title>
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
if (form1.sel_xq.value=='' || form1.sel_xq.value=='nothing' ){alert("需选定校区！");return false;}
//if(form1.sel_lf.value=='' || form1.sel_lf.value=='nothing' ){alert("请选择楼房！");return false;}
return true;
}
</script>
<!--oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false-->
<body  leftmargin="0" topmargin="0">

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分校区/楼房按教室查看考试安排</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="a_xqlf_rpt.aspx" target="main" >              
      <tr><td valign="top" align="center" height="5%"><%try{   ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW(); %>
        <table width="660" border="0" align="center" border=0 cellspacing="0" cellpadding="0" align="center" >
          <tr><td valign="bottom" align="left"> <%=ind_sp.SetValue("xnxqkslc","")%></td>
            <td valign="bottom" align="right"><input type=submit name=btn_search value=检索 class=button onclick='return selchk()'></td></tr><tr height="26">
            <td valign="bottom" align="left" height="26" colspan=2><%=ind_sp.SetValue("XQLFJS","ALL")%></td>                               
	  </tr>	 <%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());}%>
        </table>
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="a_xqlf_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>
