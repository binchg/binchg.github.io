<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.JXSJ" %>
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
<title>课程设计安排</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function SelRpt(){
if (document.all.radCx1.checked){form1.action='c_cddckcsjap_rpt.aspx'}
if (document.all.radCx2.checked){form1.action='c_jskcsjap_rpt.aspx'}
if (document.all.radCx3.checked){form1.action='c_bjkcsjap_rpt.aspx'}
if (document.all.radCx5.checked){form1.action='c_zckcsjap_rpt.aspx'}
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>课程设计安排</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="c_cddckcsjap_rpt.aspx" target="main" >              
	<tr><td valign="top" align="center" height="5%" >
	<table width="660" border=0 cellspacing="0" cellpadding="0" height="26">
		<tr><td>
		<%try{%>
		<table width=660 border=0 cellspacing="0" cellpadding="0" align="center" height="26"><tr>
		<td width=35%>学年学期 <select name=sel_xnxq style='width:165'><%=(new ind_subPrivate_JXSJ()).SetValue("sjxnxq","")%></select></td>
		<td>
		<table border=0 cellspacing="0" cellpadding="0" height="26"><tr>
		<td align="left" id=discddw>承担单位 <select name=sel_cddw style='width:150'><%=(new ind_subPrivate_JXSJ()).SetValue("cddw",USER_OPTDW)%></select></td>
		<td align="left" id=disnj style='display:none' width=90>年级 <select name=sel_nj><%=(new ind_subPublic()).PutValue("xn","")%></select></td>
		<td align="left" id=disyx style='display:none' width=215>院(系)/部 <select name=sel_yx style='width:150'><%=(new ind_subPublic()).PutValue("yx",USER_OPTYX)%></select></td>
		<td align="left" id=distea style='display:none'><%=(new ind_subPrivate_JXSJ()).SetValue("Tea_ALL","")%></td>
		<td align="left" id=diszc style='display:none'>周次 <input type=text name=txt_zc value='' size=2 maxlength=2></td>
		<%}catch(Exception ex){
			Response.Output.Write("发生如下错误：<br>"+ex.Message.ToString());
			Response.End();
		}%>
		</tr></table>
		</td></tr></table>
		</td></tr>
		<tr><td>
		<table width=660 border=0 cellspacing="0" cellpadding="0" align="center" height="26"><tr>
		<td>
		  <input type=radio name=radCx id=radCx1 value="1" checked onclick='discddw.style.display="";disnj.style.display="none";disyx.style.display="none";distea.style.display="none";diszc.style.display="none"'>分承担单位
		  <input type=radio name=radCx id=radCx2 value="2" onclick='discddw.style.display="none";disnj.style.display="none";disyx.style.display="";distea.style.display="";diszc.style.display="none"'>分院(系)/部按指导教师
		  <input type=radio name=radCx id=radCx3 value="3" onclick='discddw.style.display="none";disnj.style.display="";disyx.style.display="";distea.style.display="none";diszc.style.display="none"'>分院(系)/部按年级/专业
		  <input type=radio name=radCx id=radCx5 value="5" onclick='discddw.style.display="none";disnj.style.display="";disyx.style.display="none";distea.style.display="none";diszc.style.display=""'>按周次
		</td>
		<td align=right><input type="submit" name="btn_search" value="检索" class=button onclick=SelRpt()></td></tr>
		</table>
		</td></tr>
	</table>
</td></tr>
</form>

</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="c_cddckcsjap_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 

</table>
</body>
</html>

