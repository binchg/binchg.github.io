<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#"%>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>库存试卷</title>
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
        <tr><td valign="bottom" align="center"><b>库存试卷信息</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="s_kcsj_rpt.aspx" target="main" >                            
<tr  align="center"><td> 
<table width="660" align="center"><%try{%>
          <tr nowrap height="26"> <td nowrap> 学年学期&nbsp;<select name="sel_xnxq" style="width:165px"><%=(new ind_subPublic()).PutValue("xnxq","")%></select></td>            
            <td width=90%>&nbsp;承担单位&nbsp;
			<select name="sel_cddw" style="width:160px">
            <%=(new ind_subPrivate_KSSW()).SetValue("cddw",pSub.USER_OPTDW) %></select></td>            
            <td align=right><input type="submit" name="btn_search" value="检索" class=button onclick='return selchk()'></td>            
          </tr><%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());}%>
        </table>     
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="s_kcsj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>
