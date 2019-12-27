<%@ Page %>
<%@Import NameSpace="BLL.include"%>
<%@Import NameSpace="BLL.JXJH"%>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
%>
<html>
<head>
<title>查看课程/环节对应年级/专业</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language=javascript>
function ChaValueNJ()
{
	if(document.all.sel_nj1.value>document.all.sel_nj2.value)
	{
		alert("年级区段错误!");
		return false;
	}
	return true;
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table align="center" width="100%" border=0 cellspacing="0" cellpadding="0" height="100%" >
<tr><td>
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看课程/环节对应年级/专业</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<tr><td valign="top" align="center" height="5%" width="100%">
<form name="form1" method="post" action="jxjh_kchjnjzy_rpt.aspx" target="main" onsubmit='return ChaValueNJ()' >              
<table width="640" border=0 cellspacing=0 cellpadding=0  ><tr>
	<td width=110>
			<table width="100" border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#75A7AE bordercolordark=#FFFFFF>
			<tr><td><input type="radio" name="zfx_flag" value="1" checked>主修<input type="radio" name="zfx_flag" value="0">辅修
			</td></tr></table>	
	</td>
	<td>
	   <table width="180" border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#75A7AE bordercolordark=#FFFFFF>
	   <tr><td>
	   <input type=radio name=radgs value="1" checked onclick="Diskc.style.display='';Dishj.style.display='none';">理论课程&nbsp;
	   <input type=radio name=radgs value="2" onclick="Diskc.style.display='none';Dishj.style.display='';">实践环节&nbsp;
	   </td></tr></table>
	</td>
	<td>
	年级区段&nbsp;<select name=sel_nj1><%=(new ind_subPublic()).PutValue("xn","","")%></select>-->
	<select name=sel_nj2><%=(new ind_subPublic()).PutValue("xn","","")%></select>
	</td>
	 <td align="right"><input type="submit" name="btn_search" value="检索" class=button></td>                                                  
	</tr><tr>
	<td colspan=4>
		<table border=0 cellpadding=0 cellspacing=0><tr>
		<td id=Diskc style="display:_none"><%=(new private_JXJH()).WRT_Thekc("LLKC","")%></td>
		<td id=Dishj style="display:none"><%=(new private_JXJH()).WRT_Thekc("SJHJ","")%></td>		
		</tr></table>
	</td></tr></table>
    </td></tr>
    
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="99%">
<iframe name=main src="jxjh_kchjnjzy_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</td></tr> 
</table>
</body>
</html>
<script language="javascript">
function LetInnerHTML(thisID,vP,vT){
	var vID=thisID.value;
	vURL='../jxjh/Private/list_'+vP+'.aspx?id='+vID; 
	eval("window."+vP+".document.location.href='"+vURL+"'");
}
</script>
