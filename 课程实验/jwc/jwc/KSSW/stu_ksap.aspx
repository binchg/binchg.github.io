<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%
BLL.KSSW.ind_subPrivate_KSSW pSub=new ind_subPrivate_KSSW();
BLL.include.ind_subPublic_TheSYSDoor TheSYSDoor=new ind_subPublic_TheSYSDoor();
string t,vKGValue="";
t=TheSYSDoor.TheSYSDoor("load","");
vKGValue=TheSYSDoor.TheSYSDoor("Get","KW_KSAP");
if (vKGValue!="1")
{
	Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
}
%>
<html>
<head>
<title>学生考场安排</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>考试安排表</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="stu_ksap_rpt.aspx" target="main" >              
<tr align="center"><td> 
        <table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
            <tr><td valign="bottom" align="left"><%=pSub.SetValue("xnxqkslc","stu")%></td>
		<td valign="bottom" align="right"><input type="submit" name="btn_search" value="检索" class=button ></td>   
          </tr>
        </table> 
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="stu_ksap_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>