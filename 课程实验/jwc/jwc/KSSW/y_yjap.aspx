<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title> 阅卷安排</title>
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
function Selcx(theID)
{
  var s=theID.value;
  if(s=='1')
  {	
    disyx.style.display='';
    diskc.style.display='none';
  }
 else 
  {
    disyx.style.display='none';
    diskc.style.display='';
  } 
}
</script>
<!--oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false -->
<body  leftmargin="0" topmargin="0">
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>阅卷信息</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

  <form name="form1" method="post" action="y_yjap_rpt.aspx" target="main" >
    <tr><td valign="top"><%try{   ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW(); %>
	<table width="660" align="center" border="0">
	<tr><td valign="bottom" align="left" colspan=2><%=ind_sp.SetValue("xnxqkslc","")%><input type="radio" value="1" id="ckjs" name="ckjs" onclick="Selcx(this)"  checked >按课程<input type="radio" value="2" id="ckjs" name="ckjs" onclick="Selcx(this)" >按阅卷人员&nbsp;</td></tr>
	<tr valign=bottom> 
           <td valign="bottom" align="left" name="diskc" id="diskc" style="height=25px;width=400px;display:none" ><table border="0" cellspacing="0" cellpadding="0"><tr><td valign="bottom" nowrap>院(系)/部&nbsp;</td><td valign=bottom><select name=sel_yx style='width:160px'>
		  <%=ind_sp.SetValue("yx",BLL_kssw.USER_OPTDW)%>
		</select>&nbsp;</td><td valign=bottom><%=ind_sp.SetValue("yxjs",BLL_kssw.USER_OPTDW)%></td></tr></table></td>
	   <td valign="bottom" align="left" name="disyx" id="disyx" style="height=25px;width=400px;display:none_">
		<%=ind_sp.SetValue("cddwkc",BLL_kssw.USER_OPTDW)%></td>
           <td valign="bottom" align="right"><%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());}%>
	   <input type="submit" name="btn_search" value="检索" class=button>
      </td></tr></table>
   </td></tr>
  </form>

  <tr><td height="5%" colspan="2" align="center" valign="top">
	<br><DIV id=theHead style='display: none_;width:99%;'></DIV></td>
  </tr>

  <tr>
    <td height="100%" colspan="2" align="center" valign="top">
 <iframe name=main src="y_yjap_rpt.aspx" width=99% height=98% frameborder=0></iframe> 
    </td>
  </tr>
</table>
</body>
</html>
