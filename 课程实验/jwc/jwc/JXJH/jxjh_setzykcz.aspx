<%@ Page %>
<%@ Import NameSpace="BLL.JXJH"%>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
//pSub.JXJH_TimeArea(this,"JH_YX_NJZY-KZ");
pSub.DoorOnOff(this,"JH_YX_NJZY-KCHJ");
%>
<HTML>
	<HEAD>
		<title>设置专业课组</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<base target="main">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
			function SearchSubmit(){
			document.all.addkcz.disabled=false;
			document.all.savekcz.disabled=true;
			document.all.delkcz.disabled=true;
			form1.target="main1";form1.action="jxjh_setzykcz_kcz_rpt.aspx";form1.submit();
			form1.target="main2";form1.action="jxjh_setzykcz_kc_rpt.aspx";form1.submit();
			}

			function Setkcz(){                                    //添加
			try{main1.addkcz.style.display='';}catch(e){return}
			main1.addkcz.style.display='';
			main1.addkcz.sfdj='1';
			main1.addkcz.onmousedown();
			document.all.addkcz.disabled=true;
			document.all.delkcz.disabled=true;

			}

			function SaveKCZ(){                                    //保存
			var N=main2.document.all.vNU.value;
			var S=0,XF=0,kczname,kczkcs,kczxf,kczdm,xzkcstr="'TTT'",wxzkcstr="'TTT'";
			var ID=main1.document.all.sfxz.XZID.substr(1)

			if (N==0){alert('没有课程可以保存!');return;}
			//alert(N);
			/////////////////////////////////////////////////////////////保存验证

			if(main1.document.all.sfxz.XZDM=='XZ')
			{
			kczname=main1.document.all.kczname.value;
			kczkcs=main1.document.all.kczkcs.value;
			kczxf=main1.document.all.kczxf.value;
			}
			else
			{  
			kczname=eval("main1.document.all.T1"+ID+".value");
			kczkcs=eval("main1.document.all.T2"+ID+".value");
			kczxf=eval("main1.document.all.T3"+ID+".value");
			}

			for (i=1;i<=N;i++){
			if(eval("main2.document.all.Chk"+i+".checked"))
				{ 
				S=S+1;
				XF=XF+parseFloat(eval("main2.document.all.Chk"+i+".value"))
				xzkcstr= xzkcstr+",'"+eval("main2.document.all.Chk"+i+".KCDM")+"'"
				}
			else{ wxzkcstr= wxzkcstr+",'"+eval("main2.document.all.Chk"+i+".KCDM")+"'"}
			}
			//alert(xzkcstr)
			if(kczxf==''||kczname==''||kczkcs==''){alert("须输入课程组名称、选修学分下限和选修门数下限！");return;}
			if(isNaN(kczkcs)){alert("须正确输入选修学分下限！");return;}
			if(isNaN(kczxf)){alert("须正确输入选修门数下限！");return;}
			if(parseFloat(kczkcs)>S){alert("选修门数下限不应大于课程门数");return}  
			if(parseFloat(kczxf)>XF){alert("选修学分下限不应大于课程学分和");return}

			//////////////////////////////////////////////////////////////////////////////////end

			////////////////////////////////////////////////////////////////////////////////////保存提交处理

			if(main1.document.all.sfxz.XZDM=='XZ')
			{ 
				main1.document.all.Tkczdm.value=main1.kczdm.value
				main1.document.all.Tkczname.value=main1.document.all.kczname.value;
				main1.document.all.Tkczkcs.value=main1.document.all.kczkcs.value;
				main1.document.all.Tkczxf.value=main1.document.all.kczxf.value;
				main1.document.all.Tkczhx.value=main1.document.all.kczhx.value;
				try{main1.document.all.Tkcmk.value=main1.document.all.kcmk.value;}catch(e){}
				main1.form1.action='jxjh_setzykcz_kcz_rpt.aspx?button=add';main1.form1.submit();
				main2.form1.action='jxjh_setzykcz_kc_rpt.aspx?button=add&kczdm='+main1.kczdm.value+'&code1='+xzkcstr+'&code2='+wxzkcstr;main2.form1.submit();
			}
			else
			{
			     
				main1.document.all.Tkczdm.value=main1.document.all.sfxz.XZDM;
				main1.document.all.Tkczname.value=eval("main1.document.all.T1"+ID+".value");
				main1.document.all.Tkczkcs.value=eval("main1.document.all.T2"+ID+".value");
				main1.document.all.Tkczxf.value=eval("main1.document.all.T3"+ID+".value");
				main1.document.all.Tkczhx.value=eval("main1.document.all.T4"+ID+".value");
				try{main1.document.all.Tkcmk.value=eval("main1.document.all.T5"+ID+".value");}catch(e){}
				main1.form1.action='jxjh_setzykcz_kcz_rpt.aspx?button=edit';main1.form1.submit();
				main2.form1.action='jxjh_setzykcz_kc_rpt.aspx?button=edit&code1='+xzkcstr+'&code2='+wxzkcstr;main2.form1.submit();
			}
			document.all.savekcz.disabled=true; 
			document.all.addkcz.disabled=false;
			////////////////////////////////////////////////////////////////////////////end
			}

			function Delkcz(){            //删除
			var ID=main1.document.all.sfxz.XZID.substr(1)
			if(main1.document.all.sfxz.value=='1'){
			main1.document.all.Tkczdm.value=main1.document.all.sfxz.XZDM;
			try{
			main1.document.all.Tkczname.value=eval("main1.document.all.T1"+ID+".value");
			main1.document.all.Tkczkcs.value=eval("main1.document.all.T2"+ID+".value");
			main1.document.all.Tkczxf.value=eval("main1.document.all.T3"+ID+".value");
			main1.document.all.Tkczhx.value=eval("main1.document.all.T4"+ID+".value");
			}catch(e){return false;}
			main1.form1.action='jxjh_setzykcz_kcz_rpt.aspx?button=del';main1.form1.submit();
			main2.form1.action='jxjh_setzykcz_kc_rpt.aspx?button=del&kczdm='+main1.document.all.sfxz.XZDM;main2.form1.submit();
			}
			}
			function changezy(){
			document.all.sel_xy.onchange();
			}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" bgcolor="#ffffff" text="#000000"
		leftmargin="0" topmargin="0">
		<table align=center width="660" border="0" cellpadding="0" cellspacing="0" height="100%">
		<tr><td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="100%">
			<tr>
				<td valign="top" align="center" colspan="3">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>设置专业课组</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form action="jxjh_setzykcz_kcz_rpt.aspx" method="post" name="form1" target="main1">
				<!--if USER_Level<>"STU" then //-->
				<tr>
					<td valign="top" align="center" height="5%" colspan="3">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td width="90">年级&nbsp;<select name="sel_nj" style="width:55px;" onchange="changezy()"><%=(new ind_subPublic()).WRT_nj()%></select></td>
								<td><%=(new private_JXJH()).SetValue("yxzy",pSub.USER_OPTYX)%></td>
								<td align="right"><input type="submit" name="button" value="检索" onclick='SearchSubmit()' class="button"></td>
							</tr>
							<tr>
								<td align="center" colspan="3">
									<table width=100% border="0" cellspacing="0" cellpadding="0" align="center">
									<tr>
									<td width=150>
										<table width=100% border="1" cellspacing="0" cellpadding="0" align="center"  bordercolorlight="#75A7AE" bordercolordark="#FFFFFF">
										<tr><td>
											<input type=radio name="zfx_flag" value='1' checked>主修&nbsp;<input type=radio name=zfx_flag value='0'>辅修
										</td></tr>
										</table>
									</td><td width=250>
										<table width=100% border="1" cellspacing="0" cellpadding="0" align="center"  bordercolorlight="#75A7AE" bordercolordark="#FFFFFF">
										<tr><td>
											<input type="radio" name="radCx" value="02" checked>限选课组&nbsp;
											<input type="radio" name="radCx" value="03">任选课组&nbsp;
											<input type="radio" name="radCx" value="01">必修课组
										</td></tr>
										</table>
									</td><td align=right>
									<input type="button" name="Submit" id="addkcz" value="新增" class="button" onclick="Setkcz()">
									<input type="button" name="Submit" id="savekcz" value="保存" class="button" onclick="if(confirm('是否保存记录？')){SaveKCZ();}else{return false;}"	disabled>
									<input type="button" name="Submit" id="delkcz" value="删除" class="button" onclick="if(confirm('是否删除选定记录？')){Delkcz();}else{return false;}" disabled>
									</td></tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<!-- end if //-->
			</form>
			<tr>
				<td valign="top" align="center" height="5%"><br>
					<DIV id="theHead" style='WIDTH: 100%'></DIV>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%" width="40%">
					<iframe name="main1" src="jxjh_setzykcz_kcz_rpt.aspx" width="100%" height="98%" frameborder="1"
						scrolling="auto"></iframe>
				</td>
				
				<td valign="top" align="center" height="100%" width="50%">
					<iframe name="main2" src="jxjh_setzykcz_kc_rpt.aspx" width="100%" height="98%" frameborder="1"
						scrolling="auto"></iframe>
				</td>
			</tr>
		</table>
		</td></tr>
		</table>
	</body>
</HTML>
