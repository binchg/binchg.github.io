<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.JXJH"%>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
pSub.JXJH_TimeArea(this,"JH_YX_NJZY-KCHJ");
pSub.DoorOnOff(this,"JH_YX_NJZY-KCHJ");
%>
<HTML>
	<HEAD>
		<title>设置专业理论课程</title>
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
					var kclb1=document.all.kclb1.value;
					var kclb2=document.all.kclb2.value;
					//alert(kclb1);alert(kclb2);
					if(kclb2=='01'&& kclb1=='03')
					{
						alert('不能设置公共任选课！');
						return false;
					}else if(confirm("是否保存记录？")){
						form1.action="SET_ZYKC_Save.aspx?p=upd";
						return true;
					}else
						return false;
				}
				else 
				{
					if(confirm("是否删除选定记录？")){
						form1.action="SET_ZYKC_Save.aspx?p=del";
						return true;
					}else
						return false;
				}
			}

			function OnSaveBtn(){
			if (document.all.kclb1.value!="" && document.all.kclb2.value!="" && document.all.zsxs.value!="" && document.all.khfs.value!="" && document.all.kkxq.value!="" && (document.all.zx_flag.checked || document.all.fx_flag.checked))
			{document.all.submit.disabled=false;}
			else
			{document.all.submit.disabled=true;}

			}


			function TestValue(theObj)
			{var i,bReg,vStr=theObj.value;
			bReg=isNaN(vStr); 
			if(vStr!='') if(bReg){
			theObj.value=vStr.substring(0,vStr.length-1);
			theObj.focus();return false;}
			}

			function ChkValue(theForm){try{
			var str,vID;

			if(theForm.kcdm.value == '')
			{ alert('须选定相应的课程！');theForm.kcmc.focus();return false;}

			try{vID=document.all.kclb2.options[document.all.kclb2.selectedIndex].value;}catch(e){vID='';}
			if(vID == ""){ alert('须选定课程类别！');document.all.kclb2.focus();return false;}

			try{vID=document.all.kclb1.options[document.all.kclb1.selectedIndex].value;}catch(e){vID='';}
			if(vID == ""){ alert('须选定课程类别！');document.all.kclb1.focus();return false;}

			vStr=theForm.zsxs.value;
			if(isNaN(vStr))
			{ alert('周学时须为数字！');theForm.zsxs.focus();return false;}
			else if(vStr<=0)
			{ alert('周学时须为大于0！');theForm.zsxs.focus();return false;}
			else if(vStr>50)
			{ alert('周学时须为小于50！');theForm.zsxs.focus();return false;}

			try{vID=theForm.khfs.options[theForm.khfs.selectedIndex].value;}catch(e){vID='';}
			if(vID == ""){ alert('须选定考核方式！');theForm.khfs.focus();return false;}

			try{vID=theForm.kkxq.options[theForm.kkxq.selectedIndex].value;}catch(e){vID='';}
			if(vID == ""){ alert('须选定开课学期！');theForm.kkxq.focus();return false;}


			if(confirm('是否保存记录？')) return true;
			else return false;
			}catch(e){return false}}

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
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<center>
			<table align="center" width="660" border="0" cellpadding="0" cellspacing="0" height="100%">
				<tr>
					<td>
						<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%">
							<tr>
								<td valign="top" align="center" colspan="2">
									<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
										<tr>
											<td valign="bottom" align="center"><b>设置专业理论课程</b></td>
										</tr>
										<tr>
											<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<form name="form1" id="form1" method="post" action="SET_ZYKC_Save.aspx?p=upd" target="frmKC"
								onSubmit='return ChkValue(this)'>
								<!--检索区域-->
								<tr id="Dis1">
									<td valign="top" align="center" height="5%" colspan="2">
										<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
											<tr height="20">
												<td width="11%" align="left">年级&nbsp;<select name="sel_xn" id="sel_xn" style="width:55px;" onchange='showListZY(document.all.sel_yx.options[document.all.sel_yx.selectedIndex].value,this,1)'><%=(new ind_subPublic()).WRT_nj()%></select></td>
												<td width="26%" align="left"><iframe name="frmZY" src='' frameborder="0" style='Display:none;WIDTH:0px;HEIGHT:0px'></iframe>
													&nbsp;院(系)/部&nbsp;<select name="sel_yx" id="sel_yx" onchange="showListZY(this,document.all.sel_xn.options[document.all.sel_xn.selectedIndex].value,0)"
														style='WIDTH:130px'>
														<%=(new ind_subPublic()).PutValue("yx",pSub.USER_OPTYX)%>
													</select></td>
												<td width="50%" align="left">
													<input type="checkbox" name="chkKC" onclick="QryKC(this)">按课程代码或名称检索 <input type="text" name="txtKC" style="WIDTH:228px" maxlength="25" title='输入课程代码或名称即可模糊检索'
														val='' disabled onchange="Ex_ZYKC(document.all.sel_zy)"> 
													<!--<td width="30%" align="center" id=theCCDX>培养层次：____&nbsp;培养对象：____</td>--></td>
											</tr>
										</table>
									</td>
								</tr>
								<!--修改区域-->
								<tr>
									<td width="30%" align_="center" valign="top" id="theZY">
										<select name="sel_zy" id='sel_zy' OnChange="Ex_ZYKC(this)" size='6' multiple style="WIDTH:200px"  >
										</select>
								
									<td valign="top" width="70%" align="center"><iframe name="frmKC" src='' frameborder="0" style='Display:none;WIDTH:0px;HEIGHT:0px'></iframe>
										<table id="Dis3" width="285" border="0" cellspacing="0" cellpadding="0" align="center"
											height="26">
											<tr class="B" height="20">
												<td width="100%" nowrap>课程代码</td>
												<td nowrap><input type="text" name="kcdm" size="8" val='' disabled><input type="hidden" name="kcid">
													课程名称<input type="text" name="kcmc" size="26" val='' disabled></td>
												<td nowrap>
													<table border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td nowrap>总 学 时</td>
															<td><input type="text" name="zxs" size="4" val='' disabled></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr class="B" height="20">
												<td width="100%" nowrap>学&nbsp;&nbsp;&nbsp;&nbsp;分</td>
												<td nowrap>
													<table border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td nowrap><input type="text" name="zxf" size="3" value='0' val='' disabled></td>
															<td nowrap>讲授学时&nbsp;</td>
															<td><input type="text" name="jsxs" size="4" val='' disabled></td>
															<td nowrap>实验学时&nbsp;</td>
															<td><input type="text" name="syxs" size="4" val='' disabled></td>
															<td nowrap>上机学时&nbsp;</td>
															<td><input type="text" name="sjxs" size="4" val='' disabled></td>
														</tr>
													</table>
												</td>
												<td nowrap>
													<table border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td nowrap>其他学时</td>
															<td><input type="text" name="qtxs" size="4" val='' disabled></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr class="H" height="20">
												<td width="100%" nowrap>
												课程类别
												<td nowrap>
													<table border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td><select name="kclb2" style='WIDTH:70px' onchange="OnSaveBtn()"><%=(new ind_subPublic()).PutValue("kclb2","all","")%></select>
																<select name="kclb1" style='WIDTH:50px' onchange="OnSaveBtn()">
																	<%=(new ind_subPublic()).PutValue("kclb1","all","")%>
																</select></td>
															<td nowrap>周学时&nbsp;</td>
															<td><input type="text" name="zsxs" size="4" maxlength="4" val='' onkeyup="TestValue(this)"
																	onblur="OnSaveBtn()"></td>
															<td nowrap>考核方式&nbsp;</td>
															<td><select name="khfs" onchange="OnSaveBtn()"><%=(new ind_subPublic()).PutValue("khfs","all","")%></select></td>
														</tr>
													</table>
												</td>
												<td nowrap>
													<table border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td nowrap>开课学期</td>
															<td><select name="kkxq" style='WIDTH:40px' onchange="OnSaveBtn()"><%=(new private_JXJH()).SetValue("kkxq","all")%></select></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr class="H">
												<td width="100%" height="20" nowrap>备&nbsp;&nbsp;&nbsp;&nbsp;注</td>
												<td colspan="2">
													<input type=text name="memo" style='width:292' maxlength=50>
													<input type=checkbox name=zx_flag value='1' checked onclick="OnSaveBtn()">主修&nbsp;
													<input type=checkbox name=fx_flag value='1' onclick="OnSaveBtn()">辅修&nbsp;
												</td>
											</tr>
										</table>
										<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26"
											valign="middle">
											<input type="hidden" name="RowXH">
											<TR>
												<td width="45%" valign="middle" align=left id="theCount" value="0"><br>
												</td>
												<td width="35%" valign="middle" align="right" id="radState" value='0'>
												<td width="20%" valign="middle" align="right">
													<input type="submit" value="取消" name="delbtn" class="button" disabled valign="middle" onclick="return SaveME(this)">
													<input type="submit" value="保存" name="submit" class="button" disabled valign="middle" onclick="return SaveME(this)">
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
									<iframe name="frmRpt" src="SET_ZYKC_Rpt.aspx" width="100%" height="95%" frameborder="1">
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
			var s,vNJ,vID,vKC='';
			 try{s=theID.value;}catch(e){s='';} if(s=='')return false;
			if(document.all.chkKC.checked) vKC=document.all.txtKC.value; //alert(vKC);
			vNJ=document.all.sel_xn.options[document.all.sel_xn.selectedIndex].value
			vID=s.substring(0,4);//theCCDX.innerHTML=s.substring(4,s.length);
			window.frmRpt.location.href='SET_ZYKC_Rpt.aspx?nj='+vNJ+'&id='+vID+'&kc='+vKC; 
			document.all.submit.disabled=true;document.all.delbtn.disabled=true;
		//	alert(window.frmRpt.location.href);
			KC_Cls();
		}
		function KC_Cls(){
			document.all.kcdm.value='';document.all.kcmc.value='';document.all.zxs.value='';
			document.all.zxf.value='';document.all.jsxs.value='';document.all.sjxs.value='';
			document.all.syxs.value='';document.all.qtxs.value='';
			document.all.kclb1.value='';document.all.kclb2.value='';document.all.zsxs.value='';
			document.all.khfs.value='';document.all.kkxq.value='';document.all.memo.value='';
		}
		</script>
	</body>
</HTML>
