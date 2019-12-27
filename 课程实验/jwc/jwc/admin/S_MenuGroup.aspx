<%@ Page language="C#" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
	<head>
		<title>权限管理</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
		var lastGRP='';
		function ShowMenuTree(){
			var vL=document.all.sel_grp.value.substring(0,3);
			var vURL="S_MenuGroup_Left.aspx?g="+vL; 
			
			if(lastGRP!==vL){lastGRP=vL;
			window.frmRightLeft.document.location.href=vURL;
			}
			window.frmRightSource.document.location.href="S_MenuGroup_Source.aspx";
			window.frmRightResult.document.location.href="S_MenuGroup_Result.aspx";	
		}
		function SearchMenuTree(){
			try{
				var vID=document.all.sel_grp.options[document.all.sel_grp.selectedIndex].key;
				var vGrp=document.all.sel_grp.value;
				document.all.hidMenuID.value=vID;
				window.frmRightSource.document.location.href="S_MenuGroup_Source.aspx?grp="+vGrp+"&id="+vID;
				window.frmRightResult.document.location.href="S_MenuGroup_Result.aspx?grp="+vGrp+"&id="+vID;	
			}catch(e){alert(e);}
		}

		function SaveRight(theObj){
			var vS='',vG=document.all.sel_grp.value;
			var vID=document.all.hidMenuID.value;
			var TSStr,vT=theObj.name;
			
			vS=getValue(vT);if(vS==''){return false;}
			//if(vT=='btn_add'){
			//TSStr='你确信要设置所选定的菜单项吗?';
			//}else if(vT=='btn_del'){
			//TSStr='你确信要取消所选定菜单项的设置吗?';
			//}

		//if(!confirm(TSStr)) return false;
		window.frmRightSource.location.href="S_MenuGroup_Source.aspx?grp="+vG+"&id="+vID+"&pstr="+vS;
		}

		function getValue(theID){ try{
			var whichEl,vS;
			var i,iR=0; var strID='';
			
			if(theID=='btn_add'){
			try{iR=window.frmRightSource.TheTable.rows.length-1;}catch(err){}
			eval("whichEl=window.frmRightSource.ChkItem");
			}else if(theID=='btn_del'){
			try{iR=window.frmRightResult.TheTable.rows.length-1;}catch(err){}	
			eval("whichEl=window.frmRightResult.ChkItem");
			}

			if(iR==0) return '';
			if(iR==1){
				if(whichEl.checked) strID=whichEl.value;
			}else{   
    				for(i=0;i<whichEl.length;i++){
    				if(whichEl(i).checked)
	    			if(strID=='') strID=whichEl(i).value;
    				else strID=strID+';'+whichEl(i).value;
    				}
    			}
			
			if(strID==''){return ''}
			return theID.substring(4,7)+';'+strID;

		}catch(e){return '';}
		}
		</script>
		<script  language="C#" runat="server">
		private void Page_Load(object sender,System.EventArgs e)
		{
			KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
			try{
				myPage.InitPage(false,"ADM000");
				WRTStr.Text=(new BLL.admin.purviewManage()).WRT_TheGroup();
			}catch(Exception ex){
				myPage.ExceptionOutputStr(ex);
			}
		}
		</script>
	</head>	
	<!--  -->
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" topmargin='0' leftmargin='0'>
		<table border="0" width="100%" height="100%" cellspacing="0" cellpadding="0">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>菜单项→角色</b></td>
						</tr>
						<tr>
							<td valign="middle" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
						<tr>
							<td height="3px"></td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td width="100%" height="99%" valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%">
						<tr>
							<td valign="top" width="350" height="100%" rowspan="2">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" height="99%">
									<tr>
										<td height="22px" width="80%"><asp:Literal ID="WRTStr" Runat="server" Text=""></asp:Literal>
										</td><td width="20%" align="center">
											<input type="button" name="searchBox" value="检索" class="but20" onclick="SearchMenuTree()">
										</td>
									<tr>
										<td colspan="2" valign="middle" align="center" height="95%">
											<iframe name="frmRightLeft" src='S_MenuGroup_Left.aspx' width="100%" height="100%" frameborder="0"
												scrolling='no'></iframe>
										</td>
									</tr>
								</table>
							</td>
							<td valign="top" width="60%" height="45%">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
									<tr>
										<td width="100%" colspan="3" align=center>
											<iframe name="frmRightSource" src='S_MenuGroup_Source.aspx' width="99%" height="99%" frameborder="1"
												scrolling='auto'></iframe>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td valign="top" width="60%" height="55%">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
									<tr>
										<td width="45%" height="25px" align="center">
											<input type="button" name="btn_add" onclick="SaveRight(this)" title='设置' class='but20down'>
											<input type="hidden" id="hidMenuID" name="hidMenuID"> 
											<input type="button" name="btn_del" onclick="SaveRight(this)" title='取消' class='but20up'>
										</td>
									</tr>
									<tr>
										<td valign="top" align="center" height="95%" colspan="3">
											<iframe name="frmRightResult" src='S_MenuGroup_Result.aspx' width="99%" height="99%" frameborder="1"
												scrolling='auto'></iframe>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
