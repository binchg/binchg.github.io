<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.include.ind_subPublic PubObj=new BLL.include.ind_subPublic();
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
SelObj.DoorOnOff(this,"CJ_CJFB");
//USER_LEVEL="";
%>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function showList(theID)  //学生信息
{
var vURL;
vURL=theID.value;
vURL='./Private/'+theID.href+'.aspx?id='+vURL;

window.rpt.document.location.href=vURL;
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>成绩认定记录</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="c_ydcjrdjl_rpt.aspx" target="main">              
      <tr><td valign="top" align="center" height="5%" width="100%">
        <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
          <tr><td width=230>
			<table width=230 border=0 cellspacing="0" cellpadding="0"  height="26"><tr>         
			<td id=xnxq style='display:_none'>学年学期 <select name=sel_xnxq><%Response.Output.Write (SelObj.SetValue("cjxnxq","",""));%></select></td>
			</tr></table>
		  </td><td>
		 <%
			if (USER_LEVEL!="STU") 
			{
				Response.Output.Write (SelObj.SetValue("XS",""));
			}
 		 %> 
	     </td><td>
			<input type=radio name=radCx value="1" checked>限非异动 &nbsp;
			<input type=radio name=radCx value="2" >限异动 &nbsp;
		<td align=right><input type='submit' name='btn_search' value='检索' class=button></td> 

         </tr>
        </table>
</td></tr>
</form>


<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr>  

<tr><td valign="top" align="center" height="100%" width="100%">
<iframe name=main src="c_ydcjrdjl_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>

</table>
</body>
