<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>学生权限</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>
	<script language="javascript">
	function chkRadBox(obj){
		try{
			var s=obj.id;
			if(obj.checked){
				if(s=="roleRad"){
					document.all.searchTextStr.style.display='none';
					//document.all.nameStr.style.display='none';
					document.all.chkRad.value='1';
				}else{
					//document.all.nameStr.style.display='';
					document.all.searchTextStr.style.display='';
					document.all.chkRad.value='0';
					document.all.roleRad.checked=false;
					//document.all.nameStr.innerHTML='名称';
					document.all.txtSearch.style.display='';
				}	
			}
		}catch(e){alert(e);}
	}
	function onchangeTxt(obj){
		try{
			var s=obj.value;
			if(s.length>0){
				url="?groupcode=TEA000&txtStr="+s;
				window.tmpfrm.location.href="./Private/browsePurview_seltxt.aspx"+url;
			}
		}catch(e){alert(e);};
	}
	function chkValue(){
		try{
			var s=document.all.chkRad.value;
			if(s=="0"){
				if(document.all.sel_txt.value==""){
					alert('请选择！');
					document.all.sel_txt.focus();
					s="";
				}
			}
			if(s!=""){
				window.Form1.action="S_BrowseTeaPurview_Rpt.aspx";
				window.Form1.method="post";
				window.Form1.submit();
			}
		}catch(e){alert(e);}
	}
	</script>
  </head>
  <!--oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false"-->
  <body  topmargin='0' leftmargin='0'>
		<form name="Form1" action="S_BrowseTeaPurview_Rpt.aspx" target="frmRpt" method="post">
			<table border="0" width="99%" height="100%" cellspacing="0" cellpadding="0" align="center">
				<tr>
					<td valign="top" align="center"  height="26">
						<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
							<tr><td valign="bottom" align="center"><b>浏览用户权限(教师教辅人员)</b></td></tr>
							<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
						</table> 
					</td>
				</tr>	
				<tr>
					<td align="center" valign="center" height=28>
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr >
								<td align="left" width="20%">
									<input type="radio" id="roleRad" name="rad" checked onclick="chkRadBox(this)">按角色
									<input type="radio" id="userRad" name="rad" onclick="chkRadBox(this)">按用户
								</td>
								<td align="left" width="70%" id="searchTextStr" style="display:none;">
									工号&nbsp;<input type="text" name="txtSearch" onchange="onchangeTxt(this)" maxlength="30" style="width:102px;display:none;"><span id="opSelTxt"><select name="sel_txt" style="width:165px;"><option value=""></option></select></span>
								</td>
								<td align="right" width="10%">
								<input type="button" name="search" value="检索" onclick="chkValue()" class="but20">
								<input type="hidden" name="chkRad" value="1">
								</td>
							</tr>
						</table>
					</td>
				</tr>		
				
				<tr><td>
					<iframe name="tmpfrm" id="tmpfrm" src="" style="display:none;width:0px;height:0px;" frameborder="1"></iframe>
				</td></tr>
				<tr valign="bottom" align="left">
					<td>&nbsp;绑定IP：<span id="BindIPAddr"></span></td>
				</tr>
				<tr valign="bottom" align="left">
					<td>&nbsp;限制时间：<span id="BindDateTime"></span></td>
				</tr>
				<tr valign="bottom" align="center" class="T">
					<td nowrap  align=center>已赋予菜单(<span id=theCount style='color:red'>0</span>)</td>
				</tr>
				<tr>
					<td width="99%" height="90%" valign="top" align="center">
					<iframe id="frmRpt" name="frmRpt" src="S_BrowseTeaPurview_Rpt.aspx" frameborder=0 style="width:100%;height:99%"></iframe>
					</td>
				</tr>
			</table>
			</form>
	</body>
</html>
