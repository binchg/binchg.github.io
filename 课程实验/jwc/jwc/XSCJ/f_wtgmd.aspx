<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
SelObj.DoorOnOff(this,"CJ_CJFB");
string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
string p=Request.QueryString["p"];
string vstr="";
if(p=="1")vstr="查看考试未通过情况[原始]";
if(p=="2")vstr="查看考试未通过情况[有效]";
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function Dissel(theID)
{
	if(theID.value=="0")
	{
		document.all.sel_xn.disabled=true;
		document.all.sel_xq.disabled=true;
	}
	else if(theID.value=="1")
	{
		document.all.sel_xn.disabled=false;
		document.all.sel_xq.disabled=true;
	}
	else
	{
		document.all.sel_xn.disabled=false;
		document.all.sel_xq.disabled=false;
	}
}
</script>

</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b><%=vstr%></b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="f_wtgmd_rpt.aspx" target="main" >              
      <tr><td valign="top" align="center" height="5%">
        <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td align="left" height="26" width=43%>
		<%=SelObj.SetValue("CJFBXNXQ","")%>
	    </td><td>
	        <div id=vis_kc style='display: none'>
				<table border=0 cellpadding=0 cellspacing=0>
				<tr><td>承担单位&nbsp;
				</td><td><select name=sel_cddw style='width:150'><%=SelObj.SetValue("cddw",USER_OPTDW)%></select>
				</td></tr></table>
	        </div>
	        <div id=vis_bj style='display: none_'>
				<table border=0 cellpadding=0 cellspacing=0>
				<tr><td>院(系)/部&nbsp;
				</td><td><select name=sel_yx style='width:150'><%=SelObj.SetValue("yx",USER_OPTYX)%></select>
				</td></tr></table>
	        </div>	
            </td><td align="right"><input type="submit" name="btn_search" value="检索" class=button></td> 
            </tr><tr><td colspan=3>
			<table border=0 cellspacing="0" cellpadding="0" height="26">
			<tr><td width=180>
			<table border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#89bfa7 bordercolordark=#FFFFFF><tr><td>
				<table border=0 cellpadding=0 cellspacing=0><tr>
				<%if(p=="1"){%>
				<td><input type="radio" value="0" checked name="rBJKC" id="rBJKC2" onclick="vis_bj.style.display='';vis_kc.style.display='none';"></td><td>分(院)/系部</td>
                <td><input type="radio" value="1" name="rBJKC" id="rBJKC1" onclick="vis_kc.style.display='';vis_bj.style.display='none';"></td><td>分承担单位</td>
                <%}else{%>
                <td><input type="radio" value="2" checked name="rBJKC" id="rBJKC2" onclick="vis_bj.style.display='';vis_kc.style.display='none';"></td><td>分(院)/系部</td>
                <td><input type="radio" value="3" name="rBJKC" id="rBJKC1" onclick="vis_kc.style.display='';vis_bj.style.display='none';"></td><td>分承担单位</td>
                <%}%>
                </tr></table>
            </td></tr></table>
            </td><td>  
            <table border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#89bfa7 bordercolordark=#FFFFFF><tr><td>
            	<table border=0 cellpadding=0 cellspacing=0><tr>
				<td><input type="radio" value="0" name="SelXNXQ" onclick=Dissel(this)></td><td>入学以来</td>	
	    		<td><input type="radio" value="1" name="SelXNXQ" onclick=Dissel(this) ></td><td>学年</td>
				<td><input type="radio" value="2" checked name="SelXNXQ" onclick=Dissel(this) ></td><td>学期</td>
				</tr></table>
			</td></tr></table>
			</td></tr></table>
			
		</td></tr>  
		</table>     

</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="f_wtgmd_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>
