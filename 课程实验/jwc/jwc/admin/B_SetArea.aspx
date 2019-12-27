<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>权限设置</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	
	<script language="JavaScript">
	function viewState(){
		var vState=SelNote.style.display;
		if(vState=="none"){
			SelNote.style.display='';
		}else{
			SelNote.style.display='none';
		}
	
	}
	function ChkValue(theObj){
		var s=theObj.value;
		//if (s=="保存" && document.all.hidcode.value==""){return false;}

		if (document.all.AreaName.value==''){
			alert('名称不能为空！');
			document.all.AreaName.focus();return false;
		}
		return true;
	}

	function BtnAdd(){
		var ivID,PivColor,PivFontColor;
		document.all.AreaID.value=-1;
		document.all.AreaIcon.value="";
		document.all.AreaName.value="";
		document.all.AreaDescript.value="";
		document.all.lock.checked=true;
		try{
			PivID=frmRpt.document.all.PSTemp.ValueID
			PivColor=frmRpt.document.all.PSTemp.PivColor
			PivFontColor=frmRpt.document.all.PSTemp.PivFontColor
		}catch(e){return false}
		if(PivID!='')
		{
			eval("frmRpt."+PivID+".style.backgroundColor='"+PivColor+"';");
			eval("frmRpt."+PivID+".style.color='"+PivFontColor+"';");
		}
	}

	function BtnDel(){ return true;}  
	</script>
  </head>
<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>设置讨论区</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="B_SetArea_rpt.aspx" target="frmRpt">              
 <tr align="center"><td valign="middle" align="center" height="5%">
    <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	<tr><input type=hidden id=AreaID name=AreaID size=15 maxlength=10 value=-1><td valign="bottom">
		<table width=100% border=0 cellpadding=0 cellspacing=0><tr><td width=260>
			名称&nbsp;<input type=text id=AreaName name=AreaName size=30 maxlength=10 value=""> 
		</td><td width=40 align=center>
			图标</td><td>	
			<table border=0 cellpadding=0 cellspacing=0>
			<tr><td><INPUT type=text style='WIDTH:150px; BORDER-RIGHT-STYLE: none; HEIGHT: 19px' readonly name="AreaIcon" id="AreaIcon"><br>
			<div id='SelNote' style='Width:300;Height:90;OVERFLOW:auto;POSITION:absolute;border-style:solid;border-width=1px;display:none'>
			<iframe name='fri_AreaIcon' id='fri_AreaIcon'  src='B_SetArea_Pic.aspx' width=100% height=98% frameborder=0 ></iframe></div>
			</td><td align='left'><div style='WIDTH:16px;HEIGHT:18px'><img src=../images/button/CLICK.GIF id='imgCheck' width=16 height=18 onclick='viewState()'></div>
			</td></tr></table>
		</td></tr></table>
	</td></tr>
	
    <tr><td valign="bottom" align="left" >
		<table width=100% border=0 cellpadding=0 cellspacing=0>
		<tr><td>描述&nbsp;<input type=text id=AreaDescript name=AreaDescript size=50 maxlength=50 value="">
			<input type=checkbox name=lock checked value="0">确认开放	
			</td><td valign="bottom" align="right">	
			<input type="button" name=button id=btnadd value="新增" class=but20 onclick='BtnAdd()'>
			<input type="submit" name=button id=btnset value="保存" class=but20 onclick='return ChkValue(this)'>
			<input type="submit" name=button id=bntDel value="删除" class=but20 onclick='return  BtnDel(this)' disabled>
			<input type="hidden" name=hidcode value="">
		</td></tr>	
		</table>
	</td></tr>
	</table>
      </td></tr>


<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="B_SetArea_rpt.aspx?id=0" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</form>
</table>
</body>
</html>
