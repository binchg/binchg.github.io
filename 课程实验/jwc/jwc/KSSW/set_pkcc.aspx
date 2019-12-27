<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>提交课程需要的排考场次与不排考场次</title>
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
zc=document.all.zcdown.value;
xq=document.all.xqdown.value;
ksc=document.all.kscdown.value;

if (kcdm==""){alert("请选择日期场次！");return false;}
main1.location.href="set_pkcc_kpkcc.aspx?fun=1&kc="+kcdm+"&pc="+pc+"&ksdm="+ksdm+"&zc="+zc+"&xq="+xq+"&ksc="+ksc+"&kcdm="+kcdm+"&kspc="+pc;
main2.location.href='set_pkcc_bkpkcc.aspx?kcdm='+kcdm+'&kspc='+pc;
document.all.seldown.disabled=true;
document.all.selup.disabled=true;
}

function selUp(){
var kcdm,pc,ksqz,ksdm;
kcdm=document.all.kcdmup.value;
pc=document.all.pcup.value;
ksdm=document.all.ksdm.value;
zc=document.all.zcup.value;
xq=document.all.xqup.value;
ksc=document.all.kscup.value;

if (kcdm==""){alert("请选择日期场次！");return false;}
main1.location.href="set_pkcc_kpkcc.aspx?fun=2&kc="+kcdm+"&pc="+pc+"&ksdm="+ksdm+"&zc="+zc+"&xq="+xq+"&ksc="+ksc+"&kcdm="+kcdm+"&kspc="+pc;
main2.location.href='set_pkcc_bkpkcc.aspx?kcdm='+kcdm+'&kspc='+pc;
document.all.seldown.disabled=true;
document.all.selup.disabled=true;
}

function selSure(){
kcdm=document.all.kcdm.value;
pc=document.all.pc.value;
ksdm=document.all.ksdm.value;
zc=document.all.zc.value;
xq=document.all.xq.value;
ksc=document.all.ksc.value;
zcxq=zc+xq;

if (zcxq==''){zcxq=document.all.sel_ksrq.value;}
if (ksc==''){ksc=document.all.sel_kscc.value;}

form1.submit();
main1.location.href="set_pkcc_kpkcc.aspx?kcdm="+kcdm+"&kspc="+pc;
main2.location.href="set_pkcc_bkpkcc.aspx?fun=1&kc="+kcdm+"&pc="+pc+"&ksdm="+ksdm+"&zcxq="+zcxq+"&ksc="+ksc+"&kcdm="+kcdm+"&kspc="+pc;

}

function selCancel(){
kcdm=document.all.kcdm.value;
pc=document.all.pc.value;
ksdm=document.all.ksdm.value;
zc=document.all.zc.value;
xq=document.all.xq.value;
ksc=document.all.ksc.value;
zcxq=zc+xq;

if (zcxq==''){zcxq=document.all.sel_ksrq.value;}
if (ksc==''){ksc=document.all.sel_kscc.value}


form1.submit();
main1.location.href="set_pkcc_kpkcc.aspx?kcdm="+kcdm+"&kspc="+pc;
main2.location.href="set_pkcc_bkpkcc.aspx?fun=2&kc="+kcdm+"&pc="+pc+"&ksdm="+ksdm+"&zcxq="+zcxq+"&ksc="+ksc+"&kcdm="+kcdm+"&kspc="+pc;

document.all.sel_ksrq.value='';
document.all.sel_kscc.value='';
}


function check(){
if ((document.all.sel_ksrq.value!='')&&(document.all.sel_kscc.value!='')){
document.all.btn_sure.disabled=false;
document.all.btn_cancel.disabled=false;}
}
</script>
<!--oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false-->
<body  leftmargin="0" topmargin="0">
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">

<tr><td colspan=2 valign="top" align="center" height="26">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>提交课程需要的排考场次与不排考场次</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
 
<form name="form1" method="post" action="set_pkcc_kskc.aspx" target="main">
<tr><td colspan=2 height="24px">
<%try{   ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW();
		 BLL_kssw kssw=new BLL_kssw(this);%> 
	<table width="100%" align="center" height="100%"><tr><td valign="bottom" align="left" ><%=ind_sp.SetValue("cddwkskc",pSub.USER_OPTDW)%></td>
	<td align="right"><input type="submit" name="btn_search" value="检索" class=button></td></tr></table>
</td></tr>
        
<tr>
	
<td rowspan=6 valign="top" align="center" style="width:53%;height:100%">
    <table width="100%" height="100%" border=0 cellspacing="0" cellpadding="0">
		<tr><td  width="100%" height="20px" valign="bottom" align="left">
			<DIV id=theHead style='display: none_;width:99%;'></div>
		</td></tr>
		<tr><td  width="100%" >
			<iframe name=main src="set_pkcc_kskc.aspx" width=99% height=98% frameborder=1></iframe>
		</td></tr>
	</table>
</td>

<td valign="top" align="center" style="width:47%;height:5%">
	<table width="100%" align="center"><tr><td valign="bottom" align="left" nowrap>
	<fieldset>
	<legend>需排考日期场次</legend>
	<select name="sel_ksrq" style="width=175;" onchange="check()"><%=kssw._setpKcc_SelRQStr(kssw.setPkkc_getKSDM())%></select><select name="sel_kscc" style="width=120;" onchange="check()"><%=kssw._setpKcc_SelCCStr(kssw.setPkkc_getKSDM())%></select>
	</fieldset>
	</td><%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());}%>
	</tr><tr><td align="right"><input type="button" name="btn_sure" value="确定" disabled class=button onclick="return selSure() ">&nbsp;&nbsp;<input type="button" name="btn_cancel" disabled value="取消" class=button onclick="return selCancel()"></td></tr></table>
</td>
</tr>

<tr><td valign="bottom" style="width=47%;height:26">
	<DIV id=theHead1 style='display: none_;width:99%;'></div>
</td></tr>

<tr><td valign="top" style="width=47%;height=33%">
<iframe name=main1 src="set_pkcc_kpkcc.aspx" width=99% height=98% frameborder=1></iframe>
</td></tr> 

<tr>
<td align=center style="width:47%;height:26px" valign="middle"><input name="selup" type="submit" value="" class=buttonup title='selUp' disabled onclick="return selUp()">&nbsp;&nbsp;&nbsp;
									<input name="seldown" type="submit" value="" class=buttondown title='selDown' disabled onclick="return selDown()"></td></tr>
<input type=hidden name="kcdmdown" value=""><input type=hidden name="pcdown" value="">
<input type=hidden name="zcdown" value=""><input type=hidden name="xqdown" value=""><input type=hidden name="kscdown" value="">
<input type=hidden name="ksdm" value="">
<input type=hidden name="kcdmup" value=""><input type=hidden name="pcup" value="">
<input type=hidden name="zcup" value=""><input type=hidden name="xqup" value=""><input type=hidden name="kscup" value="">
<input type=hidden name="kcdm" value=""><input type=hidden name="pc" value="">
<input type=hidden name="zc" value=""><input type=hidden name="xq" value=""><input type=hidden name="ksc" value="">

<tr><td valign="bottom" style="width=47%;height:26">
	<DIV id=theHead2 style='display: none_;width:99%;'></div>
</td></tr>

<tr><td valign="top" style="width=47%;height=33%">
<iframe name=main2 src="set_pkcc_bkpkcc.aspx" width=99% height=98% frameborder=1></iframe>
</td></tr> 

</form>
</table>
</body>
</html>

