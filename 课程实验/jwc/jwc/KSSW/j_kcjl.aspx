<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>查看考场记录</title>
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

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="663px" border=0 cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td valign="top" align="center" height="26">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看考场记录</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form action="j_kcjl_kskc.aspx" method="post" name="form1" target="main1">             
<tr><td valign="top" align="center" height="26"><%try{  ind_subPrivate_KSSW ind_sP=new ind_subPrivate_KSSW();%>
        <table width="660" border="0" align="center" border=0 cellspacing="0" cellpadding="0" align="center" >
          <tr><td valign="bottom" align="left"> <%=ind_sP.SetValue("xnxqkslc","")%></td>
            <td valign="bottom" align="right"><input type=submit name=btn_search value=检索 class=button ></td></tr> 
        </table><%}catch(Exception ex){Response.Output.Write(ex.Message.ToString());}%>
</td></tr>
</form>

<tr><td valign="top" width="100%" >
<table border=0  height="100%" cellspacing="0" cellpadding="0" align="center" width="660px">
   <tr height="140px">
   	 <td width="49%" height="140px" align="left">考试课程
	 <iframe name=main1 src="j_kcjl_kskc.aspx" height=90% width=99% frameborder=1 scrolling="auto"></iframe></td>
	 <td width="49%" height="140px" align="left">考试课程→考场
	 <iframe name=main2 src="j_kcjl_kc.aspx" width=100% height=90% frameborder=1 scrolling="auto"></iframe></td>
   </tr>
   <tr >
     <td colspan="2" width=100% height=100%><iframe name=main3 src="j_kcjl_rpt.aspx" width=100% height=98% frameborder=1 scrolling="auto"></iframe></td>
   </tr>
</table>
</td></tr> 
</table>
</body>
</html>


