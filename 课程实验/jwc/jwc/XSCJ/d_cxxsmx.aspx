<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
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
        <tr><td valign="bottom" align="center"><b>查看学生重修情况</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="d_cxxsmx_rpt.aspx" target="main" >
      <tr><td valign="top" align="center" height="5%">
        <table width="660" border="0" align="center" border=0 cellspacing="0" cellpadding="0" align="center" >
    	   <tr><td>学年学期
           <select name=sel_xnxq onchange=LetInnerHTMLCDDWCXKC(this,document.all.sel_mxkc,document.all.sel_cddw,'2')><%Response.Output.Write (SelObj.SetValue("xnxq","",""));%></select>
	   <input type=radio name=radSwap value='2' checked onclick="discddw.style.display='';disyx.style.display='none'">分承担单位
   	   <input type=radio name=radSwap value='1' onclick="discddw.style.display='none';disyx.style.display=''">分院(系)/部</td>
	  <td align=right><input type=submit name=btn_search value=检索 class=button>
	  </td></tr>
	  <tr><td>
          <tr>
	    <td colspan=2>
		<div id=discddw style='display:_none'><%Response.Output.Write (SelObj.SetValue("CDDWCXKC",USER_OPTDW,""));%></div>
		<div id=disyx style='display:none'><%Response.Output.Write (SelObj.SetValue("yxzybj",USER_OPTYX,""));%></div>
	    </td>
	  </tr>
        </table>
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="d_cxxsmx_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>

