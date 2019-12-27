<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
%>


<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>


<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看学生等级考试成绩</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form" method="post" action="e_xsdjcj_rpt.aspx" target="main" >              
      <tr><td valign="top" align="center" height="5%">
        <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
            <tr> 
            <td height="26">
				<table  border=0 cellspacing="0" cellpadding="0" height="26"><tr>
				<td width=55>考试时间</td><td width=125><select name=sel_pmsj style='width:120'><%=SelObj.SetValue("DJBMSJ","ALL")%></select></td>
				<td><%=SelObj.SetValue("lbdj","all")%></td>
				</tr></table>
            </td><td align='right' height=26><input type=submit name=btn_search value=检索 class=button></td>
            </tr> 
        </table>  
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="e_xsdjcj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>