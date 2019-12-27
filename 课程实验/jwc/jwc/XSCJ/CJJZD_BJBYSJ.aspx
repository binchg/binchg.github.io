<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="CLL" %>
<%
string vTitleStr="";
vTitleStr="分毕业年届按专业打印毕业设计(论文)成绩登记册⑧";

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
        <tr><td valign="bottom" align="center"><b><%=vTitleStr%></b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form" method="post" action="CJJZD_BJBYSJ_rpt.aspx" target="main" >              
  <tr><td valign="top" align="center" height="5%">
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	  <tr> 
		<td height="26" align="" nowrap>
		<%Response.Output.Write((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("CJDJCXNXQHJBYSJ",USER_ID));%>
		</td>
		<td align=right>
		<input type=submit name=submit value="检索" class=button>
		<input type=hidden name=hid_userid value=<%=USER_ID%>>
		</td>           
	  <tr> 
		<td colspan=2><input type=radio name=zfx_flag value='0' checked>主修&nbsp;<input type=radio name=zfx_flag value='1'>辅修</td>
	  </tr>
	</table>  
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>
 
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="CJJZD_BJBYSJ_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
