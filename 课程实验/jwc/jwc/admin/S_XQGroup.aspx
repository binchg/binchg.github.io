<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>S_XQGroup</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
	<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>
	<script language="javascript">
	function SaveRight(obj){
		try{
			var s=obj.name;
			var key=document.all.hidRoleCode.value;
			var str="",url="";
			if(key!=""){
				if(s=="btn_add"){
					str=getval("frmRightSource");
					if(str=="")alert('请从未设置校区中选择！');
					url="?type=add&keyStr="+key+"&scharea="+str;
				}else if(s=="btn_del"){
					str=getval("frmRightResult");
					if(str=="")alert('请从已设置校区中选择！');
					url="?type=del&keyStr="+key+"&scharea="+str;
				}
				if(str!="")
				 window.frmRightResult.document.location.href="S_XQGroup_Result.aspx"+url;
			}else{
				alert('请选择管理人员/角色！');
			}
		}catch(e){alert(e);}
	}
	
	function getval(theID){
		var i,R;
		str='';
		try{eval("R=window."+theID+".document.all.count.value;");}catch(e){R=0;}
		for(i=1;i<=R;i++)
		{ 
   			if(eval("window."+theID+".document.all.Chk"+i+".checked")==true)
			{
				if(str=='')
					{str=eval("window."+theID+".document.all.Chk"+i+".value");}
				else
					{str=str+';'+eval("window."+theID+".document.all.Chk"+i+".value");}
			}  
		}
		return str;
	}
	</script>
  </head>
  <body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" topmargin='0' leftmargin='0'>
	<table border="0" width="100%" height="100%" cellspacing="0" cellpadding="0">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>校区→管理人员/角色</b></td>
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
							<td valign="top" height="100%" rowspan="2">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
									<tr>
										<td valign="top" align="center" height="100%">
											<iframe name="frmRightLeft" src='S_XQGroup_left.aspx' width="98%" height="99%" frameborder="0">
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
											<iframe name="frmRightSource" src='S_XQGroup_Source.aspx' width="100%" height="99%" frameborder="1"
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
											<input type="hidden" name="hidRoleCode"> 
											<input type="button" name="btn_add" title='设置' onclick="SaveRight(this)" class='but20down'>
											<input type="button" name="btn_del" title='取消' onclick="SaveRight(this)" class='but20up'>
										</td>
									</tr>
									<tr>
										<td valign="top" align="center" height="100%" colspan="3">
											<iframe name="frmRightResult" src='S_XQGroup_Result.aspx' width="100%" height="99%" frameborder="1"
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
