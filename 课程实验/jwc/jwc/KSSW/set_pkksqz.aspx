<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>提交课程考试群组</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>
<style type="text/css">
input.button50 {
	font-family: "宋体";
	font-size: 12px;
	background-image: url(../images/button/bgbtn5_0.gif);
	border: none;
	height: 20px;
	width: 85px;
	cursor: hand;
}

input.buttondown {
	font-family: "宋体";
	font-size: 12px;
	background-image: url(../images/button/bgbtn_down.gif);
	border: none;
	height: 20px;
	width: 41px;
	cursor: hand;
}

input.buttonup {
	font-family: "宋体";
	font-size: 12px;
	background-image: url(../images/button/bgbtn_up.gif);
	border: none;
	height: 20px;
	width: 41px;
	cursor: hand;
}
</style>

<script language=javascript>
function selDown(){
var kcdm,pc,ksqz,ksdm;
kcdm=document.all.kcdmdown.value;
pc=document.all.pcdown.value;
ksdm=document.all.ksdm.value;
ksqz=document.all.ksqz.value;
cddw=document.all.sel_cddw.value;
kcid=document.all.sel_kc.value;

if (kcdm==""){alert("请选择要设置的课程！");return false;}
if (ksqz==""){alert("请选择要加入的考试群组！");return false;}
main2.location.href="set_pkksqz_rpt.aspx?fun=1&kc="+kcdm+"&pc="+pc+"&ksqz="+ksqz+"&ksdm="+ksdm;
main1.location.href='set_pkksqz_kskc.aspx?sel_cddw='+cddw+'&sel_kc='+kcid;
document.all.seldown.disabled=true;
document.all.selup.disabled=true;
}

function selUp(){
var kcdm,pc,ksqz,ksdm;
kcdm=document.all.kcdmup.value;
pc=document.all.pcup.value;
ksdm=document.all.ksdm.value;
ksqz=document.all.ksqz.value;
cddw=document.all.sel_cddw.value;
kcid=document.all.sel_kc.value;
if (kcdm==""){alert("请选择要取消设置的课程！");return false;}
main2.location.href="set_pkksqz_rpt.aspx?fun=2&kc="+kcdm+"&pc="+pc+"&ksqz="+ksqz+"&ksdm="+ksdm;
main1.location.href='set_pkksqz_kskc.aspx?sel_cddw='+cddw+'&sel_kc='+kcid;
document.all.seldown.disabled=true;
document.all.selup.disabled=true;
}

function setKSQZ(){
window.open('set_ksqz.aspx','设置考试群组','width=300,height=300');
}
</script>
<!--oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false-->
<body  leftmargin="0" topmargin="0">
<table width="660px" align="center" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td>
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">

<tr><td colspan=2 valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>提交课程考试群组</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
 
<form name="form1" method="post" action="set_pkksqz_kskc.aspx" target="main1">        
<tr>
<td valign="top" align="right" style="width:30%;height:65%">
	<table width="100%" height="100%" border=0 cellspacing="0" cellpadding="0">
		<tr><td  width="100%" height="20px" valign="bottom" align="center">
			<DIV id=theHead2 style='display: none_;width:99%;'></div>
		</td></tr>
		<tr><td  width="98%">
			<iframe name=main src="set_pkksqz_ksqz.aspx" width=99% height=98% frameborder=1></iframe>
		</td></tr>
	</table>
</td>

<td valign="top" align="right" style="width=55%;height=50%">
<table height="100%" border=0 cellspacing="0" cellpadding="0">
	<tr><td style="width:100%;height:24px"><%try{   ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW();%>
		<table width="100%" align="center" height="100%" border="0"cellspacing="0" cellpadding="0" ><tr>
			<td valign="bottom" align="left" height="24px" ><%=ind_sp.SetValue("cddwkskc1",pSub.USER_OPTDW)%></td>
			<td align="right"><input type="submit" name="btn_search" value="检索" class=button></td>
		</tr></table><%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());}%>
	</td></tr>

	<tr><td style="width:100%;height:18px" valign="bottom">
		<DIV id=theHead1 style='display: none_;width:100%;'></div>
	</td></tr>

	<tr><td style="width=100%;">
		<iframe name=main1 src="set_pkksqz_kskc.aspx" width=100% height=100% frameborder=1></iframe>
	</td></tr></table>
</td></tr>

<tr><td height="22px" align=right><input type="button" name="btn_search" value="设置考试群组" class=button50 onclick='setKSQZ()'></td>
<td align=center><input name="seldown" type="submit" value="" class=buttondown disabled onclick="return selDown()">&nbsp;&nbsp;&nbsp;
<input name="selup" type="submit" value="" class=buttonup disabled onclick="return selUp()"></td></tr>
<input type=hidden name="kcdmdown" value="">
<input type=hidden name="pcdown" value="">
<input type=hidden name="ksdm" value="">
<input type=hidden name="kcdmup" value="">
<input type=hidden name="pcup" value="">
<input type=hidden name="ksqz" value="">

<tr><td colspan=2 valign="bottom" height="18px" >
	<DIV id=theHead style='display: none_;width:99%;'></div>
</td></tr>

<tr><td colspan=2 valign="top" height="35%">
<iframe name=main2 src="set_pkksqz_rpt.aspx" width=99% height=98% frameborder=1></iframe>
</td></tr> 

</form>
</table>
</td></tr>
</table>
</body>
</html>