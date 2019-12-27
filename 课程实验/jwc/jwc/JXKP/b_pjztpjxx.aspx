<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.JXKP.BLL_subPrivate_JXKP SelObj=new BLL.JXKP.BLL_subPrivate_JXKP(this);
BLL.include.ind_subPublic pSub=new BLL.include.ind_subPublic();
SelObj.DoorPJJG(this);
string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
//USER_OPTDW="%";
//USER_OPTYX="%";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<title></title>
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<body  leftmargin="0" topmargin="0">
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%"  height="26">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分评价主体成员按课程/环节→教师查看评价信息</b></td></tr>
		<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
		</td></tr>
      </table>   
</td></tr>
<tr><td valign="top" align="center" width="100%">
	<form name="form1" method="post" action="b_pjztpjxx_rpt.aspx" target="main" >              
	<table width="660" border=0 cellpadding=0 cellspacing=1 align="center" height="26">
		<tr><td colspan=3>
			<table border=0 cellpadding=0 cellspacing=0><tr>
			<td><%=SelObj.SetValue("SYS_XNXQPJLC","")%></td>
			</tr></table>
		</td></tr>
		<tr><td>
			<table width=100% border=0 cellpadding=0 cellspacing=0><tr>
			<td width=165>
				<table border=0 cellpadding=0 cellspacing=0>
     			<tr><td width=55>评价主体</td><td width=105><select name=sel_pjzt style="width:100"><%=SelObj.SetValue("PJZT","20")%></select></td></tr>
     			</table>
     		</td>
			<td><%=SelObj.SetValue("yxjs",USER_OPTYX)%></td>
			</tr></table>
		</td></tr>	
		<tr><td>
			<table width=100% border=0 cellpadding=0 cellspacing=0><tr>
			<td>
				<table border=0 cellpadding=0 cellspacing=0><tr>
				<td><input type=radio value=1 name=radCx id=radwj disabled checked></td>
				<td>问卷调查表</td>
				<td><input type=radio value=2 name=radCx id=radtk disabled></td>
				<td>听课记录表</td>
				</tr></table>
			</td>
			<td align="right"><input type="submit" name="Submit" value="检索" class=but20 ></td>
			</tr></table>
		<td></tr></table>    
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 


<tr><td valign="top" align="center" height="100%">
<iframe name=main src="b_pjztpjxx_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>
</table>
</body>
</html>