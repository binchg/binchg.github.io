<%@ Import NameSpace="BLL.JXSJ"%>
<html>
<head>
<title>指导环节</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>

<body  bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" >

<form name="form1" method="post" action="Tea_taskhj_rpt.aspx" target="main" >
<table width=100% border="0" cellspacing="0" cellpadding="0" height="100%"  align="center">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>指导环节</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<tr height="24"><td height="24">
     <table width="660" border=0 align="center" cellpadding="0" cellspacing="0">
	 <tr><%try{%>
	 <td width="80%" height="28">学年学期&nbsp;<select name="sel_xnxq" style="width:165px"><%=(new ind_subPrivate_JXSJ()).SetValue("JXRWXNXQ","")%></select></td>
	 <%}catch(Exception ex){Response.Output.Write("发生错误：<br>"+ex.Message.ToString());}%>
	 <td width="20%" align=right><input name="Submit01" type="submit" value="检索" class="button" ></td>
         </tr>		  
     </table>
</td></tr>

<tr><td valign="top" align="center" >
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="Tea_taskhj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>
</table>
</form>
</body>
</html>