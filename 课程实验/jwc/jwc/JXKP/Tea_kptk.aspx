<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
PubObj.DoorJXKP(this);
string[] vPV=new string[2]{"",""};
vPV=pSub.WSKPselStr("2","","1");
%>
<html>
<head>
<title>提交听课记录表</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<script language=javascript>
function ListTime(theID)
{
	try{
		var str=theID.value;
		var pc=str.split("|")[1];
		sjqd.innerHTML=eval("document.all.hid_"+pc+".value;");
		form1.submit();
	}catch(e){}
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>提交听课记录表</b></td></tr>
		<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
		</td></tr>
      </table>   
</td></tr>
<form name=form1 action=Tea_kptk_rpt.aspx method=post target=main>
<tr><td vAlign=top align=center height="5%">
	  <%=vPV[1]%>
	 <table width="660" border=0 cellspacing="0" cellpadding="3" align="center" height="26">
	 <tr><td>评价轮次&nbsp;<%=vPV[0]%></td></tr>
	 <tr><td id=sjqd></td></tr>
	 </table>
</tr></td>
</form>
<tr><td valign="top" align="center" >
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="Tea_kptk_rpt.aspx" width=99% height=92% frameborder=0></iframe>
</td></tr> 

</table>
</body>
</html>
<script language=javascript>
document.all.sel_lc.onchange();
</script>
