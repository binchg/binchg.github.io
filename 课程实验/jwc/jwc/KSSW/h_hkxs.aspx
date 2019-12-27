<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>查看学生缓考情况</title>
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

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看学生缓考情况</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="h_hkxs_rpt.aspx" target="main" >              
<tr  align="center"><td> 
<table width="660" align="center">
<tr><%try{  ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW();%>
<td valign="bottom" align="left" colspan=2><%=ind_sp.SetValue("xnxqkslc","")%></td></tr>
<tr><td valign="bottom" align="left"  name="disyx" id="disyx" style="height=25px;width=400px;display:none_"  ><%=ind_sp.SetValue("cddwkc",pSub.USER_OPTDW)%></td>
<td valign="bottom" align="left"  name="diskc" id="diskc"  style="height=25px;width=400px;display:none" >
<%=ind_sp.SetValue("yxzy",pSub.USER_OPTYX)%></td>
<td align="right"><%}catch(Exception ex){Response.Output.Write("发生下列异常:<br>"+ex.Message.ToString());Response.End();}%>
</td>
</tr>
<tr><td valign="bottom" align="left"><input type="radio" value="2" id="ckjs" name="ckjs" onclick="Selcx(this)" >学生→缓考课程<input type="radio" value="1" id="ckjs" name="ckjs" onclick="Selcx(this)"  checked >课程→缓考学生</td>
<td align="right"><input type="submit" name="btn_search" value="检索" class=button onclick='return selchk()'></td>
</tr>
</table>
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="h_hkxs_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</td></tr> 
</table>
</body>
</html>
