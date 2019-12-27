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
<HTML>
  <HEAD>
<title>实习安排</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta content=http://schemas.microsoft.com/intellisense/ie5 name=vs_targetSchema>
<meta http-equiv=Content-Type content="text/html; charset=gb2312"><LINK href="../_style/styles_Qry.css" type=text/css rel=stylesheet >
<script language=JavaScript src="../include/Scr/ind_HTML_hr.js"></script>
<script language="JavaScript">
function SelRpt(){
if (document.all.radCx1.checked){form1.action='b_cddwsxap_rpt.aspx'}
if (document.all.radCx2.checked){form1.action='b_jssxap_rpt.aspx'}
if (document.all.radCx3.checked){form1.action='b_bjsxap_rpt.aspx'}
if (document.all.radCx4.checked){form1.action='b_sxjdap_rpt.aspx'}
if (document.all.radCx5.checked){form1.action='b_zcsxap_rpt.aspx'}
//alert(form1.action);
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>实习安排</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="b_cddwsxap_rpt.aspx" target="main" >              
	<tr><td valign="top" align="center" height="26" >
	<table width="660" border="0" cellspacing="0" cellpadding="0" height="26">
		<tr><td colspan=2>
			<table width="660" border=0 cellspacing="0" cellpadding="0" height="26">
			<tr>
				<td width=35%>学年学期<select name=sel_xnxq style='width:165'><%=(new ind_subPrivate_JXSJ()).SetValue("sjxnxq","")%></select>
				</td>
				<td>
					<table width=440 border=0 cellspacing="0" cellpadding="0" height="26">
					<tr>
					<td align="left" width=50% id=disyx style='display:none'>&nbsp;院(系)/部 <select name=sel_yx style='width:150;HEIGHT: 20px'><%=(new ind_subPublic()).PutValue("yx",USER_OPTYX)%></select></td>
					<td align="left" id=distea style='display:none'><%=(new ind_subPrivate_JXSJ()).SetValue("Tea_ALL","")%></td>
					<td align="left" width=22% id=disnj style='display:none'>&nbsp;年级 <select name=sel_nj style='HEIGHT: 20px'><%=(new ind_subPublic()).PutValue("xn","")%></select></td>
					<td align="left" id=disjd style='display:none'>&nbsp;实习基地 <input type=text name=txt_jd value='' size=20 maxlength=50></td>
					<td align="left" id=diszc style='display:none'>&nbsp;周次 <input type=text name=txt_zc value='' size=2 maxlength=2> </td>
					</tr>
					</table>
				</td>
			</tr>
			</table>
			</td>
		</tr>
        <tr>
			<td>
			<table border=0 cellspacing="0" cellpadding="0" height="26"><tr><td>
			<input type=radio name=radCx id=radCx1 value="1" checked onclick='discddw.style.display="";disyx.style.display="none";distea.style.display="none";disnj.style.display="none";disjd.style.display="none";diszc.style.display="none"'>分承担单位
			<input type=radio name=radCx id=radCx2 value="2" onclick='discddw.style.display="none";disyx.style.display="";distea.style.display="";disnj.style.display="none";disjd.style.display="none";diszc.style.display="none"'>分院(系)/部按指导教师
			<input type=radio name=radCx id=radCx3 value="3" onclick='discddw.style.display="none";disyx.style.display="";distea.style.display="none";disnj.style.display="none";disjd.style.display="none";diszc.style.display="none"'>分院(系)/部按政行班级
			<input type=radio name=radCx id=radCx4 value="4" onclick='discddw.style.display="none";disyx.style.display="none";distea.style.display="none";disnj.style.display="";disjd.style.display="";diszc.style.display="none"'>按实习基地
			<input type=radio name=radCx id=radCx5 value="5" onclick='discddw.style.display="none";disyx.style.display="none";distea.style.display="none";disnj.style.display="";disjd.style.display="none";diszc.style.display=""'>按周次
			</td></tr>
			</table>
		</td>
		<td>
		<div align=right><input type="submit" name="btn_search" value="检索" class=button onclick=SelRpt()></div>
		</td>
		</tr>
	</table>
</td></tr>

</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>

<tr><td valign="top" align="center" height="99%">
<iframe name=main src="b_cddwsxap_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 

</table>
</body></html>