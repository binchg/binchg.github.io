<%@ Import NameSpace="BLL.admin"%>
<%@ Page Language="C#" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>权限管理</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>
	</HEAD>
	<script language="JavaScript">
var lastGRP='';

/*
function SelType(theID){
var vL=document.all.sel_grp.value
if (theID.value=="0") {
   frmRightLeft.window.location.href='S_YXGroup1_left.aspx?'
   frmRightSource.window.location.href='S_YXGroup1_Source.aspx'
   frmRightResult.window.location.href='S_YXGroup1_Result.aspx'
  }
else{
   frmRightLeft.window.location.href='S_YXGroup2_Left.aspx?g='+vL
   frmRightSource.window.location.href='S_YXGroup2_Source.aspx'
   frmRightResult.window.location.href='S_YXGroup2_Result.aspx'
  }
}

function ShowUserList(){
	var vL=document.all.sel_grp.value;
	if(!document.all.radType0.checked){
		var vURL="S_YXGroup2_Left.aspx?g="+vL; //alert(vK);

		if(lastGRP!==vL){lastGRP=vL;
		window.frmRightLeft.document.location.href=vURL;
		}
		window.frmRightSource.document.location.href="S_YXGroup2_Source.aspx";
		window.frmRightResult.document.location.href="S_YXGroup2_Result.aspx";
	}
	
	else{	
		var vYX,vTDID
		try{vTDID=frmRightLeft.document.all.PSTemp.ValueID;
		    if (vTDID!="") 
		      vYX=eval("frmRightLeft."+vTDID+".value")
                    else
		      vYX=""	
		   }
		catch(e){vTDID="";vYX=""}
		
           	if(lastGRP!==vL){lastGRP=vL;
		window.frmRightSource.document.location.href="S_YXGroup1_Source.aspx?g="+vL+"&grp="+vYX;
		window.frmRightResult.document.location.href="S_YXGroup1_Result.aspx?g="+vL+"&grp="+vYX;
		}
	}
}
*/
function SaveRight(theObj){
	var vS='',vG=document.all.hidUser.value;
	var TSStr,vT=theObj.name,L=document.all.sel_grp.value;
	if(L==""){alert("请选择角色!");return false;}
	vS=getValue(vT);
	if(vS==''){return false;}
	if(vT=='btn_add'){
	TSStr='你确信要授权所选定的角色项吗?';
	}else if(vT=='btn_del'){
	TSStr='你确信要取消所选定角色的授权吗?';
	}

// if(!confirm(TSStr)) return false;
//if (document.all.radType0.checked){window.frmRightSource.document.location.href="S_YXGroup1_Source.aspx?grp="+vG+"&pstr="+vS+"&g="+L;}
//else {
window.frmRightSource.document.location.href="S_YXGroup2_Source.aspx?grp="+vG+"&pstr="+vS+"&g="+L;
//}
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
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" topmargin='0' leftmargin='0'>
		<table border="0" width="100%" height="100%" cellspacing="0" cellpadding="0">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>院(系)/部→管理人员/角色</b></td>
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
							<!--td height="18px" colspan="2">
								<input type="radio" name="radType" id="radType0" value='0' onclick="SelType(this)" checked>分院(系)/部按管理人员&nbsp;
								<input type="radio" name="radType" id="radType1" value='1' onclick="SelType(this)">分管理人员按院(系)/部&nbsp;
								(new purviewManage(this)).S_YX_GroupWRT_TheGroup()>
								<Response.Output.Write((new BLL.admin.BLL_admin()).SetValue("YHJSXX",""));>
							</td-->
							<td valign="top" height="100%" rowspan="2">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
									<tr>
										<td valign="top" align="center" height="100%">
											<iframe name="frmRightLeft" src='S_YXGroup2_left.aspx' width="98%" height="99%" frameborder="0">
											</iframe>
										<input type="hidden" name="sel_grp">
										</td>
									</tr>
								</table>
							</td>
							<td valign="top" width="50%" height="48%">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
									<tr>
										<td width="100%" colspan="3">
											<iframe name="frmRightSource" src='S_YXGroup2_Source.aspx' width="100%" height="99%" frameborder="1"
												scrolling='auto'></iframe>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td valign="top" width="50%" height="52%">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
									<tr>
										<td width="45%" height="24px" align="center">
											<input type="hidden" name="hidUser"> 
											<input type="button" name="btn_add" title='赋予权限' onclick="SaveRight(this)" class='but20down'>
											<input type="button" name="btn_del" title='取消权限' onclick="SaveRight(this)" class='but20up'>
										</td>
									</tr>
									<tr>
										<td valign="top" align="center" height="95%" colspan="3">
											<iframe name="frmRightResult" src='S_YXGroup2_Result.aspx' width="100%" height="99%" frameborder="1"
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
</HTML>
