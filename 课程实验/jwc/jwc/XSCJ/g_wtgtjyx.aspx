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
string USER_OPTYX=SelObj.USER_OPTYX;
%>

<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>

<script language="JavaScript">
function ChkValue(theID){ 

   if(document.all.radcxfs0.checked ){
     if(isNaN(document.all.txt_kc.value)||document.all.txt_kc.value==""){
       alert('需用数字录入通过课程/环节数！');
       document.all.txt_kc.focus();
       return false;
   }}
    if(document.all.radcxfs1.checked ){
     if(isNaN(document.all.txt_xf.value)||document.all.txt_xf.value==""){
       alert('需用数字录入未通过课程/环节学分！');
       document.all.txt_xf.focus();
       return false;
   }}
   if(document.all.radcxfs2.checked){
     if(isNaN(document.all.txt_bfb.value)||document.all.txt_bfb.value==""){
       alert('需用数字录入获得学分未达到修读学分的比例！');
       document.all.txt_bfb.focus();
       return false;}
     if(document.all.txt_bfb.value>100){	
	   alert('获得学分未达到修读学分的比例需小于等于100！');
       document.all.txt_bfb.focus();
       return false;
   }}
  return true;
}

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

function disChkrxk(theID)
{
	if(theID.checked)
	{
		document.all.rxkrad1.disabled=false
		document.all.rxkrad2.disabled=false
	}
	else
	{
		document.all.rxkrad1.disabled=true
		document.all.rxkrad2.disabled=true
	}
}

function disradcxfs()
{
	if(document.all.radcxfs0.checked)
	{
		document.all.txt_kc.disabled=false;
		document.all.txt_xf.disabled=true;
		document.all.txt_bfb.disabled=true;
	}
	else if(document.all.radcxfs1.checked)
	{
		document.all.txt_kc.disabled=true;
		document.all.txt_xf.disabled=false;
		document.all.txt_bfb.disabled=true;
	}
	else 
	{
		document.all.txt_kc.disabled=true;
		document.all.txt_xf.disabled=true;
		document.all.txt_bfb.disabled=false;
	}
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>统计考试未通过情况[有效]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form" method="post" action="g_wtgtjyx_rpt.aspx" target="main" onSubmit="return ChkValue(this)" >              
  <tr><td valign="top" align="center" height="5%">
	<table width="660" border=0 cellspacing="0" cellpadding="0"  height="26">
	  <tr><td> 
		<table border=0 cellspacing="0" cellpadding="0"  height="26"><tr>
	    <td width=280><%=SelObj.SetValue("cjfbxnxq","")%></td>
	    <td>
	      <table border="0" cellpadding="0" cellspacing="0"  bordercolorlight=#89bfa7 bordercolordark=#FFFFFF><tr><td width=180>
			  <table border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#89bfa7 bordercolordark=#FFFFFF><tr><td>
            	<table border=0 cellpadding=0 cellspacing=0><tr>
				<td><input type="radio" value="0" name="SelXNXQ" onclick=Dissel(this)></td><td>入学以来</td>	
	    		<td><input type="radio" value="1" name="SelXNXQ" onclick=Dissel(this) ></td><td>学年</td>
				<td><input type="radio" value="2" checked name="SelXNXQ" onclick=Dissel(this) ></td><td>学期</td>
				</tr></table>
			</td></tr></table>
		 </td><td>	
			<table border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#89bfa7 bordercolordark=#FFFFFF><tr><td>
				<table border=0 cellspacing="0" cellpadding="0"><tr>
				<td><input type=checkbox name=Chkrxk value="1" onclick=disChkrxk(this)></td><td><input type=radio name=rxkrad id=rxkrad1 value=0 checked disabled></td><td>不含任选课&nbsp;</td><td><input type=radio name=rxkrad id=rxkrad2 value=1 disabled></td><td>限任选课<td>
				</tr></table>
			</td></tr></table>
		</td></tr></table>
		</td></tr></table>
	  </td></tr>
	<tr><td>
		<table border="0" cellpadding="0" cellspacing="0"  bordercolorlight=#89bfa7 bordercolordark=#FFFFFF><tr>
		<td><%=SelObj.SetValue("NJ_YXZY",USER_OPTYX)%></td>
		<td>
			<table border=0 cellspacing="0" cellpadding="0" ><tr>
			<td><input type=radio name="radcxfs" id="radcxfs0" value="0" checked onclick=disradcxfs()></td><td><label for=radcxfs0>未通过课程/环节数>=&nbsp;</td><td></label><input type=text name="txt_kc" size="4" maxlength="4"></td>
			</tr></table>
		</td>
		</tr></table>
	</td></tr>
	<tr><td>
		<table width=100% border=0 cellspacing="0" cellpadding="0"><tr>
			<td><table border=0 cellspacing="0" cellpadding="0" ><tr>
				<td><input type=radio name="radcxfs" id="radcxfs1" value="1" onclick=disradcxfs()></td><td><label for=radcxfs1>未通过课程/环节学分>=&nbsp;</td><td></label><input type=text name="txt_xf" size="4" maxlength="4" disabled></td>
				<td><input type=radio name="radcxfs" id="radcxfs2" value="2" onclick=disradcxfs()></td><td><label for=radcxfs2>获得学分未达到修读学分的&nbsp;</label></td><td><input type=text name="txt_bfb" size="4" maxlength="4" disabled></td><td>%</td>
			</tr></table>
		</td><td align=right><input type="submit" name="btn_search" value="检索" class=button></td>
		</tr></table>
	</td></tr>
	
	</table>  
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>
 
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="g_wtgtjyx_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>