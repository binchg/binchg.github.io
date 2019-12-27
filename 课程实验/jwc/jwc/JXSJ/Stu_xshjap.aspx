<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<html>
<head>
<title>环节安排表</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>

<body  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width=100% border="0" cellspacing="0" cellpadding="0" height="100%"  align="center">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>环节安排表</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="Stu_xshjap_rpt.aspx" target="frmRpt" >
 <tr height="5%"><td height="5%">
     <table width="660" border=0 align="center" cellpadding="0" cellspacing="0">
	 <tr> <%try{%>
	 <td width="80%">学年学期&nbsp;<select name="sel_xnxq" style="width:165px"><%=(new ind_subPrivate_JXSJ()).SetValue("sjxnxq","")%></select></td>
	 <%}catch(Exception ex){ Response.Output.Write(ex.Message.ToString());};%>
	 <td width="20%" align=right><input name="Submit01" type="submit" value="检索" class="button" ></td>
         </tr>		  
     </table>
</td></tr>
</form>

<tr><td><div id="theHead" width=99%></div></td></tr> 

<tr height="95%"><td  align="center" height="95%">
<iframe name=frmRpt src="Stu_xshjap_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>