<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.admin" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>角色→管理人员</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
	function SelType(theID){
		if (theID.value=="0") {
			frmRightLeft.window.location.href='S_GroupUser1_Left.aspx'
			frmRightSource.window.location.href='S_GroupUser1_Source.aspx'
			frmRightResult.window.location.href='S_GroupUser1_Result.aspx'
		}
		else{
			frmRightLeft.window.location.href='S_GroupUser2_Left.aspx'
			frmRightSource.window.location.href='S_GroupUser2_Source.aspx'
			frmRightResult.window.location.href='S_GroupUser2_Result.aspx'
		}
	}

	function SaveRight(theObj){
	var vS='',vID=document.all.hidUser.value;
	var TSStr,vT=theObj.name;
	vS=getValue(vT);if(vS==''){return false;}

	if (document.all.radType0.checked){window.frmRightSource.document.location.href="S_GroupUser1_Source.aspx?id="+vID+"&pstr="+vS;}
	else {window.frmRightSource.document.location.href="S_GroupUser2_Source.aspx?id="+vID+"&pstr="+vS;}
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
		<script language="C#" runat="server">
		private void Page_Load(object sender,System.EventArgs e)
		{
		    purviewManage pM=new purviewManage(this);
			string str="对不起！该功能仅授权给门户维护员！";
			if(!pM.chkPurview("adm000")){
				Response.Output.Write(pM.pageRedirect(str,true));
			}
		}
		</script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
		<table width="662" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td valign="top" align="center">
					<table width="662" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>角色→管理人员</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
						<tr><td height="3px"></td></tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="100%" height="99%" valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%">
						<tr>
							<td valign="top" width="50%" height="100%" rowspan="2">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" height="99%">
									<tr>
										<td height="22">
											<input type="radio" name="radType" id="radType1" value='1' onclick="SelType(this)"checked>分管理人员按角色&nbsp;
											<input type="radio" name="radType" id="radType0" value='0' onclick="SelType(this)" >分角色按管理人员&nbsp;
										</td>
									<tr>
										<td valign="top" align="center" height="100%">
											<iframe name="frmRightLeft" src='S_GroupUser2_Left.aspx' width="98%" height="100%" frameborder="0">
											</iframe>
										</td>
									</tr>
								</table>
							</td>
							<td valign="top" width="60%" height="50%">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
									<tr>
										<td width="100%" colspan="3">
											<iframe name="frmRightSource" src='S_GroupUser2_Source.aspx' width="100%" height="99%"
												frameborder="1" scrolling='auto'></iframe>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td valign="top" width="60%" height="50%">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
									<tr>
										<td width="45%" height="26" valign="middle" align="center">
											<input type="hidden" name="hidUser"> 
											<input type="button" name="btn_add" title='赋予角色' onclick="SaveRight(this)" class='but20down'>
											<input type="button" name="btn_del" title='取消角色' onclick="SaveRight(this)" class='but20up'>
										</td>
									</tr>
									<tr>
										<td valign="top" align="center" height="100%" colspan="3">
											<iframe name="frmRightResult" src='S_GroupUser2_Result.aspx' width="100%" height="99%"
												frameborder="1" scrolling='auto'></iframe>
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
</HTML>
