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
SelObj.DoorOnOff(this,"CJ_CJFB");
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
<script language="JavaScript">
function ChkValue(){
if (isNaN(document.all.pag_txt.value)||(document.all.pag_txt.value=="")||(parseInt(document.all.pag_txt.value)<1)){
	alert("需用数字录入第几部分！");
	document.all.pag_txt.focus();
	return false;}
return true;
}
</script>


<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分辅修年级/专业按学年/学期查看成绩[有效]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="f_fxxqcj_rpt.aspx" target="main" onSubmit="return ChkValue(this)">              
<tr><td valign="top" align="center" height="5%" width="100%">
	<table width=660 border=0 cellspacing=0 cellpadding=0 align=center height=26>
	<tr>
	  <td colspan=2 align=center><%=SelObj.SetValue("FXYXZY",USER_OPTYX)%></td>
	</tr>
	<tr><td nowrap height=26 >学年学期&nbsp;
	    <select name=sel_xnxq style='width:165'><%=SelObj.SetValue("CJXNXQ","")%></select>
	     <input type=radio name=radCx id=radCx0 value="0">学年
	     <input type=radio name=radCx id=radCx1 value="1" checked>学期&nbsp;&nbsp;
	     <input type=checkbox name=chkCx0 id=chkCx0 value="0" checked>环节
	     <input type=checkbox name=chkCx1 id=chkCx1 value="1" checked>必修
	     <input type=checkbox name=chkCx2 id=chkCx2 value="2" checked>限选
	     <input type=checkbox name=chkCx3 id=chkCx3 value="3" checked>任选&nbsp;
	     第<input type=text name=pag_txt value="1" size=1 maxlength="1">部分
	   </td>
            <td align=right><input type="submit" name="btn_search" value="检索" class=button></td>
	    </tr></table>
          
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr>  

<tr><td valign="top" align="center" height="100%" width="100%">
<iframe name=main src="f_fxxqcj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>

</table>
</body>