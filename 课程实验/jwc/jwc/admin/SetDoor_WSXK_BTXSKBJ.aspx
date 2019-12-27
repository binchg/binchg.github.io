<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.admin"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="System.Web" %>
<%
BLL_SetDoor pSub=new BLL_SetDoor();
%>
<html>
<head>
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language=javascript src=Private/pri_radKG.js></script>
<title>可补/退选课程→上课班级</title>
</head>
<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0" rightmargin=0>
<form name=form1 action=SetDoor_WSXK_BTXSKBJ_rpt.aspx method=post target=frmRpt  onsubmit='return ChkValue()'>
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center" height=30>
	
	<table width="100%" border=0 cellspacing="0" cellpadding="3" align="center" height=30>
        <tr>
        <td align=left><%=pSub.SetValue("CDDWKC","%")%></td>
        <td>空余名额&nbsp;&nbsp;<input type=text  name=txt_Fme size=3 value="">-<input type=text  name=txt_Tme size=3 value=""></td>
        </tr>
		<tr>
		<td align=left height=30 >
			课程类别一&nbsp;<select name=kclb style="width:80px">
				<option value=''></option>
				<option value='01'>必修课</option>
				<option value='02'>限选课</option>
				<option value='03'>任选课</option>
			</select>
		</td>
		<td align=right colspan=2 height=30>
			<input type=submit name=btnset value=检索 class=but20>
			<input type=button name=btnset value=保存 class=but20 onclick=frmRpt.form1.submit()>
			<input type=button name=btnset value=关闭 onclick=window.close() class=but20>
        </td>
		
      </table>
      
</td></tr>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="SetDoor_WSXK_BTXSKBJ_rpt.aspx" width=99% height=99% frameborder=0></iframe>
</td></tr><tr><td valign="bottom" align="center" >

</td></tr> 
</table>
</form>
</body>
</html>