<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>jxjh_setzykcmk</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language="C#" runat="server">
		private void Page_Load(object sender,System.EventArgs e){
			KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
			try{
				myPage.InitPage(true);
				BLL.include.ind_subPublic indSub=new BLL.include.ind_subPublic();
				BLL.JXJH.private_JXJH sub=new BLL.JXJH.private_JXJH();
				opNJ.Text=indSub.WRT_nj();
				yxzyStr.Text=sub.SetValue("yxzy",myPage.CUR_UserInfo.USER_OptYX);
			}catch(Exception ex){
				myPage.ExceptionOutputStr(ex);
			}
		}
		</script>
		<script language="javascript">
		function changezy(){
			try{
				document.all.sel_xy.onchange();
			}catch(e){alert(e);};
		}
		function chkValueFrom(obj){
			try{
				var s=obj.id,url="";
				var nj=document.all.sel_nj.value;
				var zy=document.all.sel_zy.value;
				var moduleId=document.all.hidLeftSelModuleId.value;
				var newModuleId=document.all.hidLeftCount.value;
				if(s=="searchBtn"){
					document.all.hidLeftSelModuleId.value="";
					document.all.hidLeftCount.value="";
					if(nj==""||nj=="Nothing"){
						alert('须选定年级！');
						obj.focus();
					}else if(zy==""||zy=="Nothing"){
						alert('须选定院系专业！');
						obj.focus();
					}else{
						url="?type=search";
					}
				}else if(s=="newAddBtn"){
					var r=document.all.hidLeftCount.value;
					if(r!=""){
						eval("window.frmLeftRpt.document.all.tr_"+r+".style.display='';");
						eval("window.frmLeftRpt.document.all.tr_"+r+".ondblclick();");
					}
				}else if(s=="saveBtn"){
					//var moduleId=document.all.hidLeftSelModuleId.value;
					//var newModuleId=document.all.hidLeftCount.value;
					var subStr="",xf=0,count=0;
					
					if(moduleId!=""){
						var str=window.frmRightRpt.document.all.keyStr.value;
						var strArr=str.split('$');
						if(strArr.length>100)
							window.status="正在处理数据......请稍候...";
						if(strArr.length>0){
							for(var i=0;i<strArr.length;i++){
								if(eval("window.frmRightRpt.document.all.checkBox_"+strArr[i]+".checked")){
									count++;
									var tmpValue=eval("window.frmRightRpt.document.all.checkBox_"+strArr[i]+".value");
									if(subStr=="")
										subStr=tmpValue;
									else
										subStr+="$"+tmpValue;
									var xfValue=eval("window.frmRightRpt.document.all.checkBox_"+strArr[i]+".xf");
									if(xfValue!="")
									   xf+=parseInt(xfValue);
								}
							}
						}
						var moduleName=eval("window.frmLeftRpt.document.all.txtModuleName_"+moduleId+".value;");
						var txtMSXZ=eval("window.frmLeftRpt.document.all.txtMSXZ_"+moduleId+".value;");
						var txtXFXZ=eval("window.frmLeftRpt.document.all.txtXFXZ_"+moduleId+".value;");
						var txtKCXZ=eval("window.frmLeftRpt.document.all.txtKCXZ_"+moduleId+".value;");
						
						document.all.hidTxtModuName.value=moduleName;
						document.all.hidTxtMSXZ.value=txtMSXZ;
						document.all.hidTxtXFXZ.value=txtXFXZ;
						document.all.hidTxtKCS.value=txtKCXZ;
						
						if(moduleId=newModuleId&&count==0){
							url="";
						}else{
							if(moduleName=="")
								alert("须录入模块名称！");
							else if(txtMSXZ>count)
								alert('须核对课程门数下限！');
							else if(txtKCXZ!=count)
								alert('须核对课程门数！');
							else if(txtXFXZ>xf)
								alert('须核对学分！');
							else if(confirm('是否保存记录？'))
								url="?type=save";
							else 
								url="";
						}
						if(subStr.length>0)
							document.all.hidRightSubmitValue.value=subStr;
					}
				}else if(s=="delBtn"){			
					if(moduleId!=""&&moduleId!=newModuleId){
						if(confirm('是否删除选定的记录？'))
								url="?type=del"
					}
				}
				if(url!=""){
					window.Form1.action="./jxjh_setzykcmk_leftRpt.aspx"+url;
					window.Form1.target="frmLeftRpt";
					window.Form1.method="post";
					window.Form1.submit();
					
					window.Form1.action="./jxjh_setzykcmk_RightRpt.aspx"+url;
					window.Form1.target="frmRightRpt";
					window.Form1.method="post";
					window.Form1.submit();
				}
			}catch(e){alert(e);}
		}
		</script>
	</HEAD>
	<body topmargin="0" leftmargin="0">
		<form id="Form1" method="post">
			<table  align="center" width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr valign="top" align="center"><td>
				<table width="660px" border="0" cellspacing="0" cellpadding="0" align="center">
				<tr><td valign="top" align="center">
					<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="28">
						<tr><td valign="bottom" align="center"><b>设置专业课程模块</b></td></tr>
					<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
					</td></tr>
					</table>   
				</td></tr>
				<tr valign="middle" align="center"><td>
					<table align="center" width="100%" border="0" cellspacing="0" cellpadding="0" height="28" align="center">
					 <tr align="left" valign="middle">
						<td width="15%">&nbsp;年级&nbsp;<select name="sel_nj" style="width:55px;" onchange="changezy()"><asp:Literal ID="opNJ" Runat="server" Text=""/></select></td>
						<td width="64%"><asp:Literal ID="yxzyStr" Runat="server" Text=""/></td>
						<td width="21%" align="center">
							<input type="radio" id="chkZX" name="ChkZFX" value="0" checked>主修
							<input type="radio" id="chkFX" name="ChkZFX" value="1">辅修
						</td>
					 </tr>
					 <tr align="left" valign="middle">
						<td width="15%" colspan="2">
						    <input type="radio" name="chkRXX" id="chkXX" value="1" checked>限选模块&nbsp;&nbsp;&nbsp;
						    <input type="radio" name="chkRXX" id="chkRX" value="3">任选模块&nbsp;&nbsp;&nbsp;
						    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						    <iframe name="yxzy" style="display:none;width:0px;height:0px" frameborder="0"></iframe>
						     &nbsp;<input type="button" id="searchBtn" name="search" value="检索" class="but20" onclick="chkValueFrom(this)">
						</td>
						<td width="21%" align="center">
							<input type="button" id="newAddBtn" name="newAdd" value="新增" class="but20" onclick="chkValueFrom(this)">
							<input type="button" id="saveBtn" name="save" value="保存" class="but20" onclick="chkValueFrom(this)">
							<input type="button" id="delBtn" name="Del" value="删除" class="but20" onclick="chkValueFrom(this)">
							<input type="hidden" name="hidNJ">
							<input type="hidden" name="hidZYID">
							<input type="hidden" name="hidZFX">
							<input type="hidden" name="hidRXX">
							<input type="hidden" name="hidLeftCount">
							<input type="hidden" name="hidLeftSelModuleId">
							<input type="hidden" name="hidRightSubmitValue">
							<input type="hidden" name="hidTxtModuName">
							<input type="hidden" name="hidTxtMSXZ">
							<input type="hidden" name="hidTxtXFXZ">
							<input type="hidden" name="hidTxtKCS">
						</td>
					 </tr>
					</table>
				</td></tr>
				</table>
			</td></tr>
			<tr valign="top" align="center" height="99%" width="99%"><td>
			<table align="center" width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr valign="top"><td width="49%" align="left" height="99%">
			<fieldset style="width:99%;height:99%;"><legend>课程模块</legend>
				<table align="center" width="99%" height="99%" border="0" cellspacing="0" cellpadding="0" align="center">
					<tr valign="middle" align="center"><td height="99%">
						<iframe name="frmLeftRpt" src="./jxjh_setzykcmk_leftRpt.aspx" style="width:99%;height:99%;" frameborder="0" scrolling="auto"></iframe>
					</td></tr>
				</table>
			</fieldset>
			</td>
			<td width="49%" align="right" height="99%">
			<fieldset style="width:99%;height:99%;"><legend>课程</legend>
				<table align="center" width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" align="center">
					<tr valign="middle" align="center"><td height="99%">
						<iframe name="frmRightRpt" src="./jxjh_setzykcmk_RightRpt.aspx" style="width:99%;height:99%;" frameborder="0" scrolling="auto"></iframe>
					</td></tr>
				</table>
			</fieldset>
			</td></tr>
			</table>
			</td></tr>
			</table>
		</form>
	</body>
</HTML>
