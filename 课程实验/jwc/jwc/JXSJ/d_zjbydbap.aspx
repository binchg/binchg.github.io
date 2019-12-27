<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<%
BLL.JXSJ.BLL_jxsj pSub=new BLL.JXSJ.BLL_jxsj(this);
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;
%>
<html>
<head>
<title>毕业论文答辩安排</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function SelRpt(){
if (document.all.radCx1.checked){form1.action='d_zjbydbap_rpt.aspx'}
if (document.all.radCx2.checked){form1.action='d_sjbydbap_rpt.aspx'}
if (document.all.radCx3.checked){form1.action='d_bjbydbap_rpt.aspx'}
}

function changezy(){
 document.all.sel_xy.onchange();
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>毕业论文答辩安排</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="d_zjbydbap_rpt.aspx" target="main" >              
	<tr><td valign="top" align="center" height="5%" >
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
		<tr>
		<td width=35%>学年学期 <%try{%>
		  <select name=sel_xnxq style='width:165'><%=(new ind_subPrivate_JXSJ()).SetValue("sjxnxq","")%></select>
		  <input type=radio name=radCx id=radCx1 value="1" checked onclick='disyx.style.display="none";disdbzj.style.display="";disdbsj.style.display="none"'>按答辩专家
		  <input type=radio name=radCx id=radCx2 value="2" onclick='disyx.style.display="none";disdbzj.style.display="none";disdbsj.style.display=""'>按答辩时间
		  <input type=radio name=radCx id=radCx3 value="3" onclick='disyx.style.display="";disdbzj.style.display="none";disdbsj.style.display="none"'>分院(系)/部按年级/专业
		</td>
		</tr>
		<tr><td colspan=2>
		<table width="660" border=0 cellspacing="0" cellpadding="0" align="left" height="26"><tr>
		<td align="left" id=disdbzj>答辩专家 <input type=text name=txt_zj value='' size=22 maxlength=50></td>
		<td align="left" id=disdbsj style='display:none'>答辩时间 <input type=text name=txt_sj value='' size=22 maxlength=10></td>
		<td align="left" id=disyx style='display:none'>
		<table border=0 cellspacing="0" cellpadding="0" align="left"><tr>
		   <td width=17%>年&nbsp;&nbsp;&nbsp;级
		   <select name=sel_nj onchange='changezy()'><%=(new ind_subPublic()).PutValue("xn","")%></select></td>
		   <td><%=(new ind_subPrivate_JXSJ()).SetValue("yxzy",USER_OPTYX)%></td>
		</tr></table><%}catch(Exception ex){Response.Output.Write(ex.Message.ToString());}%>
		</td>
		</td>
		<td align=right><input type="submit" name="btn_search" value="检索" class=button onclick=SelRpt()></td></tr>
		</table>
		</td></tr>
	</table>
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:100%;'></DIV>
</td></tr>
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="d_zjbydbap_rpt.aspx" width=100% height=98% frameborder=0></iframe>
</td></tr> 

</table>

</body>
</html>

