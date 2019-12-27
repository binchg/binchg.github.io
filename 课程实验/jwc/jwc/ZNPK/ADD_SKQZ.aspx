<%@ Page language="c#" Codebehind="ADD_SKQZ.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.ADD_SKQZ" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>设置上课群组</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
    <script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
    <script language=javascript>
    function ChkValue(theForm){
		var str,vID;
		if (document.all.submit.value!='保存') return true; 
		if(theForm.mc.value == ""){ alert('需录入名称！');theForm.mc.focus();return false;}
		if (confirm('是否保存记录？')){window.document.all.submit.disabled=true;return true;}
		else {return false;}
	}

	function addxx(){
		form1.mc.value='';		
		form1.mc.focus();
		window.frmCDDW.location.href='ADD_SKQZ_ZZ.aspx?xnxq='+form1.xnxq.value;
		document.all.del.disabled=true;
		document.all.submit.disabled=true;
	}

	function onsel(){
		var vp,vt;
		vp=window.document.all.dm.value;
		vt=window.document.all.mc.value;
		if((vp!='')&&(vt!='')){window.document.all.submit.disabled=false;}
		else{window.document.all.submit.disabled=true;}
	}

	function delsyxm(){
		var theURL;
		if (confirm('是否删除选定记录？'))
		{
		theURL='ADD_SKQZ_Rpt.aspx?flag=del&dm='+form1.dm.value+'&xnxq='+form1.xnxq.value;
		window.frmCDDW.location.href=theURL;
		return true;}
		else {return false;}
	} 


	function AddJCYQ(theID)              //设置上课群组
	{  
		
		var theURL,name=theID.value,i,j,time;
		if(name=='节次安排要求'){
			document.all.Layer1.style.display='';
			theURL='ADD_KC_JCYQ.aspx?xnxq='+form1.xnxq.value+'&jcyq='+form1.jcyq.value;
			window.showjc.location.href=theURL;
			theID.value='确定要求';}  
		else{
			time='';
 				for(i=0;i<7;i++){
   					for(j=0;j<7;j++){
	 					time=time+eval("window.showjc.document.all.id"+i+j+".value")
					}
 				}
				if((time=='')&&(length(time)==49)){alert('操作失败!');return false;
					}
    			else{window.document.all.jcyq.value=time;
					}
			document.all.Layer1.style.display='none';
			theID.value='节次安排要求';
			document.all.submit.disabled=false;
			}
	}
    </script>
  </head>
<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
leftmargin="0" topmargin="0">

<div id="Layer1" style="position:absolute; width:320px; height:240px; z-index:1; left: 180px; top: 22px; border:3px;display:none;"> 
<iframe name="showjc" src="" width="100%" height="100%" frameborder="1"></iframe>
</div>
<table width="99%" border=0 cellspacing="0" cellpadding="0" height="100%" align="center">
<form name="form1" method="post" action="ADD_SKQZ_Rpt.aspx" target="frmCDDW" onsubmit='return ChkValue(this)'>

<!--录入区域-->
<tr id=Dis2 style='display: none_'><td valign="top" align="center" height="5%">
<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26"> 
  <tr class=B height="20">
    <td width="10%" align="left" class=BT>&nbsp;代码&nbsp;
    <td width="10%"  class=BT><input type="text" size=5 name="dm" value='' readonly style="background-color:#e8e8e8;">
    
    <td width="10%" align="left" >&nbsp;名称&nbsp;</td>
    <td width="56%"  class=BT colspan="2"><input type="text" name="mc" size="36" value="" maxlength=30 onKeyUp="onsel()"></td>
    <td width="14%" align="left" ><input type="button" value="节次安排要求" onClick="AddJCYQ(this)" style='height: 20px;width:85px;font-family: "宋体";font-size: 12px;border: none;cursor: hand;background-image: url(../images/button/bgbtn5_0.gif);' > 
				                </td>   
  </tr>
</table>
</td></tr>

<tr><td valign="top" align="center" height="5%">
<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26"><tr>
  <td width="50%" valign="bottom" id=theCount>&nbsp;</td>
  <td width="50%" valign="center" align="right">
  <input type="button"  value=" 新增" name="add" class=button onclick='addxx()'>  
  <input type="button"  value="删除" name="del" class=button disabled onclick='delsyxm()'>
  <input type="submit" value="保存" name="submit" class=button disabled>
  <input type="button"  value="返回"  class=button onclick='window.close()'>
  </tr>  
  </table>
  <input type="hidden" name="xnxq" value="<%=xnxq%>">
  <input type="hidden" name="cddw" value="">
  <input type="hidden" name="jcyq" value="0000000000000000000000000000000000000000000000000">
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmCDDW src='' style='DISPLAY: none;HEIGHT: 0px;WIDTH:0'></iframe>
<iframe name=main src="ADD_SKQZ_Rpt.aspx?xnxq=<%=xnxq%>" width=99% height=98% frameborder=1></iframe>
</td></tr> 
</table>
</body>
</html>
