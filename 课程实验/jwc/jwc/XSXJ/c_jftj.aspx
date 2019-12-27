<%@ Page CodeBehind="c_jftj.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.c_jftj" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="BLL.include" %>
<%
XSXJ_XSDA pSub=new XSXJ_XSDA(this);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>c_jftj</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
    <script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
  </head>
  <body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	
   <table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center" colspan=3>
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>学生交费统计</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
  <form action="c_jftj_rpt.aspx" method="post" name="form1" target="main">
 	<tr><td valign="top" align="center" height=5%>
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center">
	 <tr> 
			<td  align="" height=26>&nbsp;学年&nbsp;<select name=sel_xn >
			<%=(new ind_subPublic().PutValue("xn","all"))%></select>
			&nbsp;&nbsp;年级&nbsp;<select name=sel_nj> 
			<%=(new ind_subPublic().PutValue("xn","all"))%></select></td> 

			<td id=tdZY  align="left" style='display:none'>
			<%=(new XSXJ_XSDA().SetValue("YXZY",pSub.USER_OPTYX))%>
			</td>
			<td id=tdYX align="left" style='display:none'>
				院系&nbsp;<select name="Sel_yx1" ID="Select2">
					<%=(new ind_subPublic().PutValue("YX",pSub.USER_OPTYX))%>
				</select>
			</td></tr>
			<tr>
			<td colspan=3>
			  <input type=radio name=sel_tjlx value=0 checked onclick="tdZY.style.display='none';tdYX.style.display='none';">按院系统计 
			  <input type=radio name=sel_tjlx value=1 onclick="tdZY.style.display='none';tdYX.style.display='';">按专业统计 
			  <input type=radio name=sel_tjlx value=2 onclick="tdZY.style.display='';tdYX.style.display='none';">按班级统计
			</td>
			<td align=right><input name="Submit01" type="submit" value="检索" class="button"></td>
		</tr>
	</TABLE>
	</td></tr>
  </form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:100%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="c_jftj_rpt.aspx" width=100% height=95% frameborder=0></iframe>
</td></tr> 
</table>

	
  </body>
</html>
