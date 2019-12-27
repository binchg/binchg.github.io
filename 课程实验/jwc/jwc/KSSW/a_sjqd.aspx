<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>按时间区段查看考试安排</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<script language=javascript>
function onchangekslc(kslc)
{
	var vURL="../KSSW/Private/LIST_KSLCSJQD.aspx?id="+kslc;
	window.xnxqkslcsjqd.document.location.href=vURL;
}
</script>
</head>
<!--oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false//-->
<body  leftmargin="0" topmargin="0" oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false>

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>按时间区段查看考试安排</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>  
<%try{ %>
<form name="form1" method="post" action="a_sjqd_rpt.aspx" target="main" >         
      <tr align="center"><td valign="middle" id=objCx align="center" height="5%">
        <table width="660px" border="0" align="center" border=0 cellspacing="0" cellpadding="0" >
	<tr><td valign="bottom" align="left"><%=(new ind_subPrivate_KSSW()).SetValue("xnxqkslcsjqd","")%></td>
      <td align="right">
	<input type="submit" name="Submit" value="检索" class=but20 ></td></tr>
	<tr height="26">		
    <td valign="bottom" align="left" colspan=2 id=theSJQD>起始时间
	  <select id=sel_kszs name=sel_kszs style='HEIGHT: 20px;WIDTH:50'><%=(new BLL_kssw(this))._sjqd_KSZC(KSSW_BaseInfo.CUR_KSDM)%>
	  </select>
	  <select id=sel_ksxq name=sel_ksxq style='HEIGHT: 20px;WIDTH:65'>
	  <option value="1">星期一</option>
	  <option value="2">星期二</option>
	  <option value="3">星期三</option>
	  <option value="4">星期四</option>
	  <option value="5">星期五</option>
	  <option value="6">星期六</option>
	  <option value="7">星期日</option>
	  </select>
	  <select id=sel_kssj name=sel_kssj style='HEIGHT: 20px;WIDTH:125'><%=(new BLL_kssw(this))._sjqd_vKSSJ(KSSW_BaseInfo.CUR_KSDM)%>
	  </select>	
    结束时间
	  <select id=sel_jszs name=sel_jszs style='HEIGHT: 20px;WIDTH:50'><%=(new BLL_kssw(this))._sjqd_JSZC(KSSW_BaseInfo.CUR_KSDM)%>
	  </select>
	  <select id=sel_jsxq name=sel_jsxq style='HEIGHT: 20px;WIDTH:65'>
	  <option value="1">星期一</option>
	  <option value="2">星期二</option>
	  <option value="3">星期三</option>
	  <option value="4">星期四</option>
	  <option value="5">星期五</option>
	  <option value="6">星期六</option>
	  <option value="7" selected>星期日</option>
	  </select>
	  <select id=sel_jssj name=sel_jssj style='HEIGHT: 20px;WIDTH:125'><%=(new BLL_kssw(this))._sjqd_vJSSJ(KSSW_BaseInfo.CUR_KSDM)%>
	  </select>
	  </td> 
	</tr>	 
        </table>
</td></tr>
</form>           
 <%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());Response.End();}%>
<tr><td valign="top" align="center" height="3%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="a_sjqd_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>
