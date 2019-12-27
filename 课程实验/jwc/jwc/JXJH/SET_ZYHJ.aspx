<%@ Page %>
<%@ Import NameSpace="BLL.JXJH"%>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
pSub.JXJH_TimeArea(this,"JH_YX_NJZY-KCHJ");
pSub.DoorOnOff(this,"JH_YX_NJZY-KCHJ");
%>
<HTML>
	<HEAD>
		<title>设置专业实践环节</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
		function SaveME(theID){
			if (theID.value=="保存")
			{
				form1.action="SET_ZYHJ_Save.aspx?p=upd";
			}
			else 
			{form1.action="SET_ZYHJ_Save.aspx?p=del";}
		}
		function OnSaveBtn(){
			if (document.all.kkxq.value!="" && (document.all.zx_flag.checked || document.all.fx_flag.checked))
			{document.all.submit.disabled=false;}
			else
			{document.all.submit.disabled=true;}
		}
		function ChkValue(theForm){try{
		if(theForm.kcdm.value == '')
		{ alert('须选定环节！');theForm.kcmc.focus();return false;}
		try{vID=theForm.kkxq.options[theForm.kkxq.selectedIndex].value;}catch(e){vID='';}
		if(vID == ""){ alert('须选定开课学期！');theForm.kkxq.focus();return false;}
		//if(confirm('你确信要继续吗?'))
		//{return true;}return false;
		return true;
		}catch(e){return false;}}

		function QryKC(theID){
			var s=theID.value;//alert(s);
			if(theID.checked){document.all.txtKC.disabled=false;document.all.txtKC.focus();}
			else{document.all.txtKC.disabled=true;
			if(document.all.txtKC.value!='')Ex_ZYKC(document.all.sel_zy);
			document.all.txtKC.value='';
		}}

		function window.onresize(){
			try{var bHide=window.top.frmbody.mfr.cols=="0,*";}catch(e){var bHide='Nothing'} //alert(bHide);
			if (bHide=='Nothing'){return false;}
			if(bHide) document.all.sel_zy.style.width='300';
			else document.all.sel_zy.style.width='200';
		}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" bgcolor="#ffffff" text="#000000"
		leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<center>
			<table align="center" width="660" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td>
						<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%">
							<tr>
								<td valign="top" align="center" colspan="2">
									<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
										<tr>
											<td valign="bottom" align="center"><b>设置专业实践环节</b></td>
										</tr>
										<tr>
											<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<form name="form1" id="form1" method="post" action="SET_ZYHJ_Save.aspx?p=upd" target="frmKC"
								onsubmit='return ChkValue(this)'>
								<!--查询区域-->
								<tr id="Dis1">
									<td valign="top" align="center" height="5%" colspan="2">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
											<tr height="20">
												<td width="17%" align="left">年&nbsp;&nbsp;级&nbsp;<select name="sel_xn" style="width:55px;" onchange='showListZY(document.all.sel_yx.options[document.all.sel_yx.selectedIndex].value,this,1)'><%=(new ind_subPublic()).WRT_nj()%></select></td>
												<td width="30%" align="left"><iframe name="frmZY" src='' frameborder="0" style='DISPLAY: none;WIDTH: 0px;HEIGHT: 0px'></iframe>
													<!-- USER_Level="SYS" //-->
													&nbsp;院(系/部)&nbsp;<select name="sel_yx" onchange="showListZY(this,document.all.sel_xn.options[document.all.sel_xn.selectedIndex].value,0)"
														style='WIDTH:120px'>
														<%=(new ind_subPublic()).PutValue("yx",pSub.USER_OPTYX)%>
													</select></td>
												<td width="58%" align="left">
													<input type="checkbox" name="chkKC" onclick="QryKC(this)">按环节代码或名称检索 <input type="text" name="txtKC" style="WIDTH:191px" size="26" maxlength="25" title='输入环节代码或名称即可模糊检索'
														val='' disabled onchange="Ex_ZYKC(document.all.sel_zy)"> 
													<!--<td width="30%" align="center" id=theCCDX>培养层次：____&nbsp;培养对象：____</td> --></td>
											</tr>
										</table>
									</td>
								</tr>
								<!--录入区域-->
								<tr>
									<td width="30%" align_="center" valign="top" id="theZY">
										<select name="sel_zy" id='sel_zy' OnChange="Ex_ZYKC(this)" size='6' multiple style="WIDTH:200px">
										</select>
									<td valign="top" width="70%" align="center"><iframe name="frmKC" src='' frameborder="1" style='Display:none;WIDTH:0px;HEIGHT:0px'></iframe>
										<table id="Dis3" width="100%" border="0" cellspacing="0" cellpadding="0" align="center"
											height="26">
											<tr class="B" height="20">
												<td  nowrap>环节代码</td>
												<td>
													<table border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td><input type="text" name="kcdm" size="15" val='' disabled><input type="hidden" name="kcid" val=''></td>
															<td>&nbsp;环节名称&nbsp;</td>
															<td><input type="text" name="kcmc" style="WIDTH:223px" size="30" val='' disabled></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr class="H" height="20">
												<td width="10%" nowrap>环节类别</td>
												<td>
													<table border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td><select name="kclb" style='WIDTH:119px' disabled onchange="OnSaveBtn()"><%=(new ind_subPublic()).PutValue("hjlb","all","")%></select></td>
															<td>&nbsp;学分&nbsp;</td>
															<td><input type="text" name="zxf" size="6" val='' disabled onblur="OnSaveBtn()"></td>
															<td>&nbsp;周数&nbsp;</td>
															<td><input type="text" name="zs" size="6" val='' disabled onblur="OnSaveBtn()"></td>
															<td>&nbsp;开课学期&nbsp;</td>
															<td><select name="kkxq" style='WIDTH:42px' onchange="OnSaveBtn()"><%=(new private_JXJH()).SetValue("kkxq","all")%></select></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr class="H">
												<td width="10%" height="20" nowrap>内容要求</td>
												<td width="90%">
												<input type="text" name="memo" value=''style="width:290" maxlength=50>
												<input type=checkbox name=zx_flag value='1'checked onclick="OnSaveBtn()">主修&nbsp;
												<input type=checkbox name=fx_flag value='1' onclick="OnSaveBtn()">辅修
												</td>
											</tr>
										</table>
										<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="22">
											<input type="hidden" name="RowXH">
											<TR>
												<td width="45%" valign="middle" id="theCount" value="0"><br>
												</td>
												<td width="35%" valign="middle" align="right" id="radState" value='0'>
												<td width="20%" valign="middle" align="right">
													<br>
													<input type="submit" value="取消" name="delbtn" class="button" disabled onclick="if(confirm('是否取消选定记录？')){SaveME(this)}else{return false;}">
													<input type="submit" value="保存" name="submit" class="button" disabled onclick="if(confirm('是否保存记录？')){SaveME(this);}else{return false;}"></td>
											</TR>
										</table>
									</td>
								</tr>
							</form>
							<tr>
								<td valign="top" align="center" height="5%" colspan="2">
									<DIV id="theHead" style='WIDTH: 100%'></DIV>
								</td>
							</tr>
							<tr>
								<td valign="top" align="center" height="100%" colspan="2">
									<iframe name="frmRpt" src="SET_ZYHJ_Rpt.aspx" width="100%" height="95%" frameborder="1">
									</iframe>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</center>
		<script language="javascript">
			function showListZY(yx,nj,vf){
				var vnj;
				var vID;
				if(vf==0){vID=yx.value;vnj=nj;}else{vID=yx;vnj=nj.value;}
				vURL='./Private/LIST_JHSet_YXZY.aspx?id='+vID+'&nj='+vnj+'&zy='+document.all.sel_zy.value;
				window.frmZY.document.location.href=vURL;
				Ex_ZYKC(document.all.sel_zy);
				KC_Cls();
			}
			function Ex_ZYKC(theID){
				var s,vNJ,vID,vKC=''; try{s=theID.value;}catch(e){s='';} if(s=='')return false;
				if(document.all.chkKC.checked) vKC=document.all.txtKC.value; //alert(vKC);
				vNJ=document.all.sel_xn.options[document.all.sel_xn.selectedIndex].value
				vID=s.substring(0,4);//theCCDX.innerHTML=s.substring(4,s.length);
				window.frmRpt.location.href='SET_ZYHJ_Rpt.aspx?nj='+vNJ+'&id='+vID+'&kc='+vKC; 
				document.all.submit.disabled=true;document.all.delbtn.disabled=true;
				//alert(window.frmRpt.location.href);
				KC_Cls();
			}

			function KC_Cls(){
				document.all.kcdm.value='';document.all.kcmc.value='';
				document.all.zxf.value='';document.all.zs.value='';
				document.all.kclb.value='';document.all.kkxq.value='';
				document.all.memo.value='';
			}
		</script>
	</body>
</HTML>
