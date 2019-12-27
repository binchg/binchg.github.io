<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>管理员权限</title>
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
				obj.value='1';
				if(s=="roleRad"){
					document.all.chkRad.value='1';
					document.all.userRad.checked=false;
					document.all.searchTextStr.style.display='none';
				}else{
					document.all.chkRad.value='0';
					document.all.roleRad.checked=false;
					document.all.searchTextStr.style.display='';
				}	
			}
		}catch(e){alert(e);}
	}
	function onchangeTxt(obj){
		try{
			var s=obj.value;
			var GvId=document.all.sel_role.value;
			if(s.length>0){
				url="?groupcode="+GvId+"&txtStr="+s;
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
				window.Form1.action="S_BrowseSysPurview_Rpt.aspx";
				window.Form1.method="post";
				window.Form1.submit();
			}
		}catch(e){alert(e);}
	}
	</script>
	<script language="C#" runat="server">
	private void Page_Load(object sender,System.EventArgs e){
		KingosoftFrame.BasePage mypage=new KingosoftFrame.BasePage();
		mypage.InitPage(true,"ADM000");
		try{
			opRole.Text=new BLL.admin.purviewManage().allRoleList("sys");
		}catch(Exception ex){
			mypage.ExceptionOutputStr(ex);
		}
	}
	</script>
  </head>
  <body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" topmargin='0' leftmargin='0'>
		<form name="Form1" action="S_BrowseSysPurview_Rpt.aspx" target="frmRpt" method="post">
			<table border="0" width="99%" height="100%" cellspacing="0" cellpadding="0" align="center">
				<tr><td valign="top" align="center" height=26>
					<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
						<tr><td valign="bottom" align="center"><b>浏览用户权限(管理人员)</b></td></tr>
						<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></tr></td>
					</table>   
				</td></tr>
				
				<tr>
					<td valign="top" align="center"  height="26">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr><td align="center" valign="center">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr valign="middle" height="28">
								<td align="left" width="20%">
								<input type="radio" id="roleRad" name="Rad" value="1" checked onclick="chkRadBox(this)">按角色
								<input type="radio" id="userRad" name="Rad" value="0" onclick="chkRadBox(this)">按用户
								</td>
								<td align="left" width="26%" id="nameStr">角色&nbsp;<select name="sel_role" style="width:135px;"><asp:Literal ID="opRole" Text="" Runat="server"/></select></td>
								<td align="left" width="44%" id="searchTextStr" style="display:none;">工号
								<input type="text" name="txtSearch" value="" onchange="onchangeTxt(this)" maxlength="30" style="width:80px;"><span id="opSelTxt"><select name="sel_txt" style="width:165px;"><option value=""></option></select></span>
								</td>
								<td align="right">
								<input type="button" name="search" value="检索" onclick="chkValue()" class="but20">
								<input type="hidden" name="chkRad" value="1">
								</td>
							</tr>
							</table>
							</td></tr>
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
					<td nowrap width=98% align=center>已赋予菜单(<span id=theCount style='color:red'>0</span>)</td>
				</tr>
				<tr>
					<td width="99%" height="90%" valign="top" align="center">
					<iframe id="frmRpt" name="frmRpt" src="S_BrowseSysPurview_Rpt.aspx" frameborder=0 style="width:100%;height:99%"></iframe>
					</td>
				</tr>
			</table>
			</form>
	</body>
</html>
