<%@ Page CodeBehind="c_jfrstj.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.c_jfrstj" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.Calend" %>
<%@ Import NameSpace="System" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<%
XSXJ_XSDA pSub=new XSXJ_XSDA(this);
%>
<html>
  <head>
    <title>c_jfrstj</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
    <LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
  </head>
  <body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	
   <table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center" colspan=3>
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>交费人数统计</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
  <form action="c_jfrstj_rpt.aspx" method="post" name="form1" target="main" >
	<tr><td valign="top" align="center" height=5%>
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center">
	 <tr> 
		<td id=tdYX align="" style='display:'>
		院系&nbsp;<select name="Sel_yx1" ID="Select2">
		<%=(new ind_subPublic().PutValue("YX",pSub.USER_OPTYX))%>
		</select></td>
		<td id=tdZYBJ align="" style='display:none'>
		<%=(new XSXJ_XSDA().SetValue("YXZYBJ",pSub.USER_OPTYX))%>
		</td></tr>
		<tr>
		<td>
		<input type=radio name=sel_tjlx value=0 checked onclick="tdZYBJ.style.display='none';tdYX.style.display='';">按院系统计 
		<input type=radio name=sel_tjlx value=1 onclick="tdYX.style.display='none';tdZYBJ.style.display='';">按专业/班级统计 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;时间&nbsp;<%=( new Calend().CalendarEx(System.DateTime.Now.Date.ToString(),"txtdate1"))%>&nbsp;&nbsp;&nbsp;至&nbsp;&nbsp;&nbsp;
		<%=(new Calend().CalendarEx(System.DateTime.Now.Date.ToString()+1,"txtdate2"))%>
		</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td align="right"><input type="submit" name="btn_search" value="检索" class=button></td>
	</tr>
	</TABLE>
	</td></tr>
  </form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:100%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="c_jfrstj_rpt.aspx" width=100% height=95% frameborder=0></iframe>

</td>
</tr> 
</table>
  </body>
</html>