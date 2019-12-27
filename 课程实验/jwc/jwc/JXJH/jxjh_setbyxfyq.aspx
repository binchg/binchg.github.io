<%@ Page %>
<%@Import NameSpace="BLL.include"%>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
pSub.JXJH_TimeArea(this,"JH_YX_NJZY-KCHJ");
pSub.DoorOnOff(this,"JH_YX_NJZY-BYXFYQ");
%>
<HTML>
	<HEAD>
		<title>设置专业毕业学分要求</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
		function SELsubmit(){
			if(main.document.all.zy.value==""){alert("请先检索！");return}
			if(confirm('确定要保存吗？')){
			main.form1.action="jxjh_setbyxfyq_rpt.aspx?button=setvalue";
			main.form1.submit();}
		}

		function SetzylbValue(){
		form1.action="jxjh_setbyxfyq_left.aspx"
		form1.target="frameleft"
		form1.submit();
		form1.action="jxjh_setbyxfyq_right.aspx"
		form1.target="frameright"
		form1.submit();
		}
		function radSubmit(theID){form1.submit();}
		</script>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table align="center" width="660" border="0" height="100%" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
						<tr>
							<td valign="top" align="center" colspan="2">
								<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
									<tr>
										<td valign="bottom" align="center"><b>设置专业毕业学分要求</b></td>
									</tr>
									<tr>
										<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<form name="form1" method="post" action="" target="">
							<tr>
								<td valign="top" align="center" height="5%" colspan="2">
									<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
										<TBODY>
											<tr>
												<td align="left" width="14%">年级<select style="width:55px;" name="sel_nj"><%=(new ind_subPublic()).WRT_nj()%></select></td>
												<td align="left">院(系)/部
													<select name="sel_yx" style='WIDTH:140px'>
														<%=(new ind_subPublic()).PutValue("yx",pSub.USER_OPTYX)%>
													</select>
													<input type="radio" name="radgs" id="radgs1" value="1" checked>主修 
													<input type="radio" name="radgs" id="radgs2" value="0">辅修
													<input type="radio" name="radgs" id="radgs3" value="2">辅修(双学位) 
													</td><td align=right>
													<input type="button" name="btn_search" value="检索" class="button" onclick="SetzylbValue()">
													<input type="button" name="btn_set" value="保存" class="button" onclick="SELsubmit()">
												</td>
											</tr>
							</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" align="left" height="5%"><br>
					<DIV id="theHead1" style='WIDTH: 99%;HEIGHT: 16px'><br>
					</DIV>
				</td>
				<td valign="top" align="left" height="5%"><br>
					<DIV id="theHead2" style='WIDTH: 99%'><br>
					</DIV>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" width="40%" height="100%" rowspan="2">
					<iframe name="frameleft" src="jxjh_setbyxfyq_left.aspx" width="99%" height="100%" frameborder="1">
					</iframe>
				</td>
				<td valign="top" align="center" width="50%" height="40%">
					<iframe name="frameright" src="jxjh_setbyxfyq_right.aspx" width="99%" height="100%" frameborder="1">
					</iframe>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="60%">
					<iframe name="main" src="jxjh_setbyxfyq_rpt.aspx" width="99%" height="100%" frameborder="1">
					</iframe>
				</td>
			</tr>
			</FORM>
		</table>
		</TD></TR></TBODY></TABLE>
	</body>
</HTML>
