<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>统计监考情况</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>
<script language=javascript>
function Selcx(theID)
{
  var s=theID.value;
  if(s=='1')
  {	
  }
 else 
  {
  } 
}
</script>
<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
      <tr><td valign="bottom" align="center"><b>统计监考情况</b></td></tr>
	  <tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	  </td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="a_tjjkqk_rpt.aspx" target="main" >              
    <tr width=100%><td valign="top" align="center" height="5%"><%try{ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW(); %>
        <table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
		<tr><td valign="bottom" align="left" colspan=2><%=ind_sp.SetValue("xnxqkslc","")%></td></tr>
        <tr><td valign="bottom" align="left"><input type="radio" value="2" id="ckjs" name="ckjs" onclick="Selcx(this)" >分院(系)/部/处室<input type="radio" value="1" id="ckjs" name="ckjs" onclick="Selcx(this)"  checked >分承担单位</td>
        <td valign="bottom" align="right">&nbsp;<input type="submit" name="btn_search" value="检索" class=button></td>  
	</tr>
          <%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());}%>
        </table>     
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="90%">
<iframe name=main src="a_tjjkqk_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>