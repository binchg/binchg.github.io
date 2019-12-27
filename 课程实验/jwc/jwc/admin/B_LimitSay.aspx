<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>B_LimitSay</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
        <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function adduser(){
	document.all.txtSearch.value="";
	document.all.sel_txt.value="";
	document.all.sel_txt.length=0;
	document.all.hidcode.value="";
	document.all.btnset.disabled=false;
	document.all.btndel.disabled=true;
}

function onchangeTxt(obj){
		try{
			var s=obj.value;
			if(s.length>0){
				if(document.all.Tck.value!=2)
					url="?groupcode=STU000&txtStr="+s;
				else
					url="?groupcode=TEA000&txtStr="+s;
				window.tmpfrm.location.href="./Private/browsePurview_seltxt.aspx"+url;
			}
		}catch(e){alert(e);};
}
	
function Selcx(theID)
{
  var s=theID.value;
  document.all.Tck.value=s;
  adduser()
  if(s=='1')
  {	
	document.main.location.href='B_LimitSay_stu.aspx';
	txtname.innerHTML='学号';
  }
 else if(s=='2') 
  {
    document.main.location.href='B_LimitSay_tea.aspx';
    txtname.innerHTML='工号';
  } 
}

function ChkValue(theObj){
var s=theObj.value;
var id,dm;
dm=document.all.hidcode.value;
if(s!="删除")
{
	if (document.all.Tck.value==2){
		if (document.all.sel_txt.value==''){
		alert('工号不能为空！');
		document.all.sel_txt.focus();return false;}
		else{id=document.all.sel_txt.value;}
	}
	else
	{	if (document.all.sel_txt.value==''){
		alert('学号不能为空！');
		document.all.sel_txt.focus();return false;}
		else{id=document.all.sel_txt.value;}
	}
}

if (document.all.Tck.value==2){document.main.location.href='B_LimitSay_tea.aspx?button='+s+'&txtID='+id+'&hidcode='+dm;}
else{document.main.location.href='B_LimitSay_stu.aspx?button='+s+'&txtID='+id+'&hidcode='+dm;}

return true;
}
 
</script>
  </head>
<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="662" border=0 cellspacing="0" cellpadding="0" height="100%" align=center>
	<tr><td valign="top" align="center">
		<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
			<tr><td valign="bottom" align="center"><b>限制讨论</b></td></tr>
			<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
		</table>   
	</td></tr>
           
    <tr><td valign="middle" align="center" height="5%">
        <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
			<tr>
				<td nowrap align=left width=165px><input type="radio" name="chkJS" id="chkXS" checked value="1" onclick="Selcx(this)" >
					学生&nbsp;<input type="radio" name="chkJS" id="chkTA" value="2" onclick="Selcx(this)" >
					教师教辅人员</td>
				<td name="disxs" id="disxs" style="display:_none"> </td>
				<td align=left><span id=txtname style="color:#000000">学号</span>
					<input type="text" name="txtSearch" onchange="onchangeTxt(this)" maxlength="30" style="width:100px"><span id="opSelTxt"><select name="sel_txt" style="width:165px;"><option value=""></option></select></span></td>
				<td align=right>	
					<input type="hidden" name=hidcode id=hidcode value=""><input type="hidden" name=Tck value=''>
					<input type="submit" name=button id='btnadd' value="新增" class=but20 onclick='adduser()'>
					<input type="submit" name=button id='btnset' value="保存" class=but20 onclick='return ChkValue(this)'>
					<input type="submit" name=button id='btndel' value="删除" class=but20 onclick='return ChkValue(this)' disabled>
					<iframe name="tmpfrm" id="tmpfrm" src="" style="display:none;width:0px;height:0px;" frameborder="1"></iframe>
				</td>
			</tr>	
		</table>
     </td></tr>

	<tr><td valign="top" align="center" height="3%"><br>
		<DIV id="theHead" style='WIDTH: 99%'></DIV>
	</td></tr>

	<tr><td valign="top" align="center" height="100%">
		<iframe name=main src="B_LimitSay_stu.aspx" width=99% height=99% frameborder=0></iframe>
	</td></tr>
</table>
</body>

