<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>辅助安排监考人员</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function radFun()
{
 var theID1,theID2;
 try{
    theID1=window.document.all.rad1;
	theID2=window.document.all.rad2;
	if(theID1.checked==true){
		window.document.all.yx.disabled=false;
		window.document.all.jys.disabled=false;
		window.document.all.cs.disabled=true;
		window.document.all.ks.disabled=true;
	}
	if(theID2.checked==true){
		window.document.all.cs.disabled=false;
		window.document.all.ks.disabled=false;
		window.document.all.yx.disabled=true;
		window.document.all.jys.disabled=true;
	}
 }
 catch(e){}
}

function show(theID,vP)
{
  var theURL;
  if(vP=='yx'){
   theURL='?p=yx&yx='+theID.value;		
  }
  else if(vP=='cs'){
   theURL='?p=cs&cs='+theID.value;		
  }
  else{
   theURL='?p=js&js='+theID.value;	
  }
  window.rpt.location.href='set_jkry_opn.aspx'+theURL;
}

function SearchFun()
{
 var theID1,theID2,theURL,theval1,theval2;
 try{
    theID1=window.document.all.rad1;
	theID2=window.document.all.rad2;
	if(theID1.checked==true){
		theval1=window.document.all.yx.value;
		theval2=window.document.all.jys.value;
	}
	if(theID2.checked==true){
		theval1=window.document.all.cs.value;
		theval2=window.document.all.ks.value;
	}
	theURL='set_jkry_rpt.aspx?flag=search&theval1='+theval1+'&theval2='+theval2;
	window.tea.location.href=theURL;
 }
 catch(e){}
}

function SearchKCFun()
{
  var theID1,theID2,theURL,theval,xnxq,kslc,cddw,kcid;
 try{
    theID1=window.document.all.radkc1;
	theID2=window.document.all.radkc2;
	xnxq=window.document.all.xnxq.value;
	kslc=window.document.all.kslc.value;
	cddw=window.document.all.sel_cddw.value;
	kcid=window.document.all.sel_kc.value;
	if(theID1.checked==true){theval='0';}
	else{theval='1';}
	window.document.all.flag.value=theval;
	theURL='set_jkry_main.aspx?p=search&flag='+theval+'&xnxq='+xnxq+'&kslc='+kslc+'&sel_cddw='+cddw+'&sel_kc='+kcid;
	window.main.location.href=theURL;
  }
  catch(e){}
}

function ArrageFun()
{
	 var jsid,jsssdw,theURL;
	 try{
		jsid=window.document.all.jsid.value;
		jsssdw=window.document.all.jsssdw.value;
		if(jsid==''){alert('请选择教师！');}
		else{
		    theURL='set_jkry_opn.aspx?p=arrage';
			form1.action=theURL;
			form1.submit();}	
	 }
	 catch(e){}
}

function CancelFun()
{
 	var theURL;
	 try{
		theURL='set_jkry_opn.aspx?p=cancel';
		form1.action=theURL;
		form1.submit();	
	 }
	 catch(e){}
}
</script>
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<form name="form1" action="set_jkry_opn.aspx" method="post" target="rpt">
<table width="663" border="0" cellspacing="0" cellpadding="0" height="100%" align="center" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>辅助安排监考人员</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<tr><td valign="top" align="center" height="24px">
	<table width="100%" height="100%" cellspacing="0" cellpadding="0" align="center" border="0">
		<tr><td width="4%" ><input type="radio" name="radio" id="rad1" checked onClick="radFun()" ></td>
		<td width="9%" align="left" >院(系)/部</td><%try{   BLL_kssw kssw=new BLL_kssw(this); %>
		<td width="25%" align="left" id="theyx" ><select  name="yx" style="width:165px" onChange="show(this,'yx')"><%=kssw._setJkry_yxcs(true)%></select></td>
		<td width="23%" align="center" >系(教研室)/研究室/实验室</td>
		<td width="31%" align="left" id="thejys" ><select  name="jys" style="width:170px"></select></td>
		<td width="12%" align="right" ><input type="button" name="search" value="检索" class=button  onClick="SearchFun()">&nbsp;</td></tr>
	</table>
</td></tr>

<tr><td valign="top" align="center" height="24px">
	<table width="100%" height="100%" cellspacing="0" cellpadding="0" align="center" border="0">
		<tr><td width="4%" ><input type="radio" name="radio" id="rad2" onClick="radFun()" ></td>
		<td width="9%" align="left" >处&nbsp;&nbsp;&nbsp;&nbsp;室</td>
		<td width="25%" align="left" id="thecs" ><select name="cs" style="width:165px" disabled  onChange="show(this,'cs')"><%=kssw._setJkry_yxcs(false)%></select></td>
		                                       
		<td width="23%" align="center" >科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;室</td>
		<td width="31%" align="left" id="theks" ><select name="ks" style="width:170px" disabled></select></td>
		<td width="12%" align="right" ><br></td></tr>
	</table>
</td></tr>

<tr><td valign="bottom" align="center" height="18px">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="25%">
<iframe name=tea src="set_jkry_rpt.aspx" width=99% height=100% frameborder=1></iframe></td></tr>

<tr><td valign="top" align="center" height="24px">
	<table width="99%" height="100%" cellspacing="0" cellpadding="0" align="center" border="0">
		<tr><td width="30%" align="left"><input type="checkbox" name="zjk" onClick=if(this.checked==true){window.document.all.zjk_flag.value="1"}else{window.document.all.zjk_flag.value="0"}>
		      &nbsp;主监考可同时监考多个考场<input type="hidden" name="zjk_flag" value="0"></td>
		
		
		<td width="33%" align="center" ><input type="button" name="arrage" value="安排" class=button disabled onClick="ArrageFun()" >&nbsp;&nbsp;
		                                <input type="button" name="cancel" value="取消" class=button disabled onClick="CancelFun()"  ></td>
		<td width="37%" align="right" >
		    <input type="radio" name="rad" id="radkc1" checked>待安排课程→考场
			<input type="radio" name="rad" id="radkc2">已安排课程→考场
		</td></tr>
	</table>
</td></tr>

<tr><td valign="top" align="center" height="50%">
<iframe name=rpt src="" style="width:0px;height:0px;display:none;" frameborder=0></iframe>
<iframe name=main src="set_jkry_main.aspx" width=99% height=100% frameborder=1></iframe></td></tr>

<tr><td valign="top" align="center" height="26px">
	<table width="100%" height="100%" cellspacing="0" cellpadding="0" align="center" border="0">
		<td width="88%" align="left" ><%=(new ind_subPrivate_KSSW()).SetValue("cddwkc",pSub.USER_OPTDW)%></td>
		<td width="12%" align="right" ><input type="button" name="search" value="检索" class=button onClick="SearchKCFun()" >&nbsp;</td></tr>
	</table>
</td></tr> 
<input type="hidden" name="xnxq" value="<%=kssw._setJkry_param()[0]%>">
<input type="hidden" name="kslc" value="<%=kssw._setJkry_param()[1]%>">
<input type="hidden" name="jsid" value=""><%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());}%>
<input type="hidden" name="jsssdw" value="">
<input type="hidden" name="kskc" value="">
<input type="hidden" name="jsdm" value="">
<input type="hidden" name="pc" value="">
<input type="hidden" name="num" value="">
<input type="hidden" name="ksrq" value="">
<input type="hidden" name="ksc" value="">
<input type="hidden" name="jsxm" value="">
<input type="hidden" name="flag" value="">
<input type="hidden" name="yapjs" value="">
</table>
</form>
</body>
</html>
