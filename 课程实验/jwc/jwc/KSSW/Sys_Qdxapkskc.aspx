<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
ind_subPrivate_SetDoor Door=new ind_subPrivate_SetDoor();
string sUrl="";
sUrl=Door.DoorQRKSKC();
if(sUrl!=""){Response.Redirect (sUrl);}

%>
<html>
<head>
<title>确认需安排考试课程</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<script language=javascript>
function selchk()
{
if (form1.sel_cddw.value=='' || form1.sel_cddw.value=='nothing' ){alert("请选择承担单位！");return false;}
else {return true;}
}

</script>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0" rightmargin=0>
<form name=form1 action=Sys_Qdxapkskc_Rpt.aspx method=post target=frmRpt>
<table  align=center width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>确认需安排考试课程</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<tr align=center><td valign="top" align="center">
	
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height=30>
				<tr align=center height=28  ><%try{  ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW();%>
				<td colspan=3><%=ind_sp.SetValue("QRKSKCXNXQKSLC","")%></td>
				</tr>

				<tr align=center height=28 >
				<td name="disyx" id="disyx"  ><%=ind_sp.SetValue("cddwkc",pSub.USER_OPTDW)%></td>
				<td><%}catch(Exception ex){Response.Output.Write("发生下列异常:<br>"+ex.Message.ToString());Response.End();}%></td>
				<td align=right>
					<input type=submit name=btnset value=检索 class=but20 onclick='selchk()'>
					<input type=button name=btnset value=保存 class=but20 onclick='frmRpt.form1.submit()'>
				</td>
				</tr>          
			</table>

      
</td></tr>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="Sys_Qdxapkskc_Rpt.aspx" width=99% height=99% frameborder=0></iframe>
</td></tr><tr><td valign="bottom" align="center" >

</td></tr> 
</table>
</form>
</body>
</html>
