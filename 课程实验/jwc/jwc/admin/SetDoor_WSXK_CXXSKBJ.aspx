
<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.admin"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="System.Web" %>
<%
BLL_SetDoor pSub=new BLL_SetDoor();
BLL.WSXK.Private_Base private_base=new BLL.WSXK.Private_Base(this.Page); 
string xnxq=private_base.GetCXXNXQInfo();
string ctflag=private_base.Get_BXCT_Flag(xnxq);
string vChk="";
if(ctflag=="1")vChk="checked";
%>
<html>
<head>
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language=javascript>
	function ChkSubmit()
	{
		var chkctflag;
		if(document.all.chkctflag.checked){
			chkctflag='1';
		}else{
			chkctflag='0';}
		frmRpt.form1.action='SetDoor_WSXK_CXXSKBJ_rpt.aspx?submit=ok&chkctflag='+chkctflag;
		frmRpt.form1.submit();
	}
</script>
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language=javascript src=Private/pri_radKG.js></script>
<title>可重修选课程→上课班级</title>
</head>
<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0" rightmargin=0>
<form name=form1 action=SetDoor_WSXK_CXXSKBJ_rpt.aspx method=post target=frmRpt onsubmit='return ChkValue()'>
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center" height=30>
	
	<table width="100%" border=0 cellspacing="0" cellpadding="3" align="center" height=30>
        <tr>
        <td align=left><%=pSub.SetValue("CDDWKC","%")%></td>
        <td>空余名额&nbsp;&nbsp;<input type=text  name=txt_Fme size=3 value="">-<input type=text  name=txt_Tme size=3 value=""></td>
        </tr>
		<tr>
		<td colspan=2 height=30>
			<table width=100% border=0 cellpadding=0 cellspacing=0>
			<tr>
			<td><input type=checkbox value=1 name=chkcx>限标记为重修的上课班级&nbsp;
			<input type=checkbox value=1 name=chkctflag  <%=vChk%>>允许学生时间冲突</td>
			<td align=right>
			<input type=submit name=btnset value=检索 class=but20>
			<input type=button name=btnset value=保存 class=but20 onclick="ChkSubmit()">
			<input type=button name=btnset value=关闭 onclick=window.close() class=but20>
			</td></tr>
			</table>
        </td>
		
      </table>
      
</td></tr>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="SetDoor_WSXK_CXXSKBJ_rpt.aspx" width=99% height=99% frameborder=0></iframe>
</td></tr><tr><td valign="bottom" align="center" >

</td></tr> 
</table>
</form>
</body>
</html>