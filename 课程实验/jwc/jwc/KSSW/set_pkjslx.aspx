<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>提交课程需要的教室类型</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<script language=javascript>
function selchk(obj)
{
	if(obj.name=='btnsave'){
		if(confirm('确定保存？'))
		{
			main.form1.submit();
			return true;
		}
		else
			return false;
    }else
		return true;
}
</script>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>提交课程需要的教室类型</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="set_pkjslx_rpt.aspx" target="main" >              
<tr  align="center"><td> 
<table width="660" align="center">
<tr><% try{   ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW();%>
<td valign="bottom" align="left" colspan=2><%=ind_sp.SetValue("xnxqkslc","")%></td></tr>
<tr><td valign="bottom" align="left" ><%=ind_sp.SetValue("cddwkskc",pSub.USER_OPTDW)%></td>
<td align="right"><%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());}%>
<input type="submit" name="btn_search" value="检索" class='button' onclick='return selchk(this)'>
<input type="button" name="btnsave" value="保存" class='button' onclick='return selchk(this)' disabled>
</td></tr>
</table>
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="set_pkjslx_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>