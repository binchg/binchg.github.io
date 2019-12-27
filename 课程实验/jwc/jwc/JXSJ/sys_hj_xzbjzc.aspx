<%@ Page %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.JXSJ" %>
<%
BLL.JXSJ.BLL_jxsj pSub=new BLL.JXSJ.BLL_jxsj(this);
BLL.JXSJ.ind_subPrivate_JXSJ SelObj =new ind_subPrivate_JXSJ();
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;

%>
<HTML>
  <HEAD>
<title>承担单位实习安排</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta content=http://schemas.microsoft.com/intellisense/ie5 name=vs_targetSchema>
<meta http-equiv=Content-Type content="text/html; charset=gb2312"><LINK href="../_style/styles_Qry.css" type=text/css rel=stylesheet >
<script language=JavaScript src="../include/Scr/ind_HTML_hr.js"></script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分班级按环节查看周次</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="sys_hj_xzbjzc_rpt.aspx" target="main" >              
	<tr><td valign="top" align="center" height="26" >
	<table width="660" border="0" cellspacing="0" cellpadding="0" height="26">
	<tr><td>
	<%=SelObj.SetValue("NJYXZYBJ",USER_OPTYX)%>
	</td></tr>
	<tr><td>
		<table width=100% border="0" cellspacing="0" cellpadding="0" height="26"><tr>
		<td width=54>学年学期</td><td width=170><select name=sel_xnxq style="width:165"><%=SelObj.SetValue("JXRWXNXQ","")%></select></td>
		<td width=20><input type=checkbox name=chk value="1"></td><td>限有环节周次未确定的班级</td>
		<td align=right><input type="submit" name="btn_search" value="检索" class="button"></td>
		</tr></table>
	</td></tr>
	</table>
</td></tr>

</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>

<tr><td valign="top" align="center" height="99%">
<iframe name=main src="sys_hj_xzbjzc_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 

</table>
</body></html>