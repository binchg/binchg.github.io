
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
<meta http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="../_style/styles_Qry.css" type=text/css rel=stylesheet >
<script language=JavaScript src="../include/Scr/ind_HTML_hr.js"></script>
<script language=javascript>
function disyxcddw(){
	if(document.all.radCx1.checked)
	{
		disyx.style.display='';
		discddw.style.display='none';
		document.all.zfx1.disabled=false;
		document.all.zfx2.disabled=false;
	}
	else
	{
		disyx.style.display='none';
		discddw.style.display='';
		document.all.zfx1.disabled=false;
		document.all.zfx2.disabled=false;
	}
}

function ChkValue()
{
	if(document.all.txtF.value=="" || isNaN(document.all.txtF.value))
	{
		alert("请用数字输入周次！")
		document.all.txtF.focus();
		return false;
	}
	if(document.all.txtT.value=="" || isNaN(document.all.txtT.value))
	{
		alert("请用数字输入周次！")
		document.all.txtT.focus();
		return false;
	}
	return true;
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看学期实践教学按排</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="sys_hj_sjjxrw_rpt.aspx" target="main" onsubmit='return ChkValue()'>              
	<tr><td valign="top" align="center" height="26" >
	<table width="660" border="0" cellspacing="0" cellpadding="0" height="26">
	<tr><td>
		<table width=100% border="0" cellspacing="0" cellpadding="0" height="26"><tr>
		<td width=225>学年学期&nbsp;<select name=sel_xnxq style="width:165"><%=SelObj.SetValue("JXRWXNXQ","")%></select></td>
		<td width=225 id=disyx style='display:_none'>院(系)/部&nbsp;<select name=sel_yx style="width:150"><%=SelObj.SetValue("yx",USER_OPTYX)%></select></td>
		<td width=225 id=discddw style='display:none'>承担单位&nbsp;<select name=sel_cddw style="width:150"><%=SelObj.SetValue("cddw",USER_OPTDW)%></select></td>
		<td>
			<table border="0" cellspacing="0" cellpadding="0" height="26"><tr>
			<td>周次&nbsp;<input type=text name=txtF value='1' size=4 style='text-align:right' maxlength=2>-<input type=text name=txtT value='1' size=4 style='text-align:right' maxlength=2></td>
			</tr></table>
		</td>
		<td align=right><input type="submit" name="btn_search" value="检索" class="button"></td>
		</tr></table>
	</td></tr>
	<tr><td>
		<table width=100% border="0" cellspacing="0" cellpadding="0" height="26"><tr>
		<td width=220>
			<table border="1" cellspacing="0" cellpadding="0" height="26" bordercolorlight='#75A7AE' bordercolordark='#FFFFFF'><tr>
			<td><input type=radio name='radCx' id=radCx1 value='0' checked onclick=disyxcddw()>分班级按环节&nbsp;&nbsp;<input type=radio name='radCx'id=radCx2 value='1' onclick=disyxcddw()>分环节按班级</td></tr></table>
		</td>
		<td>
			<table border="1" cellspacing="0" cellpadding="0" height="26" bordercolorlight='#75A7AE' bordercolordark='#FFFFFF'><tr>
			<td><input type=radio name='zfx' id='zfx1' value='0' checked>主修&nbsp;<input type=radio name='zfx' id='zfx2' value='1'>辅修</td></tr></table>
		</td>
		</tr></table>
	</td></tr>
	</table>
</td></tr>

</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>

<tr><td valign="top" align="center" height="99%">
<iframe name=main src="sys_hj_sjjxrw_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 

</table>
</body></html>