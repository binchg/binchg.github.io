<%@ Page language="c#" Codebehind="kkjh_xqsyksjh.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.kkjh_xqsyksjh" %>
<HTML>
	<HEAD>
		<title>查看学期实验开设计划</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function show_dis(type){
				if(type=="njzy"){
					document.all.dis_njzy.style.display='';
					document.all.dis_cddw.style.display='none';
				}
				if(type=="cddw"){
					document.all.dis_cddw.style.display='';
					document.all.dis_njzy.style.display='none';
				}
			}
			
			function ChkValue(){
				var rad_njzy;
				var rad_cddw;
				var TheObjVal;
				rad_njzy=document.all.rad_njzy;
				rad_cddw=document.all.rad_cddw;
				
				if(rad_njzy.checked){
					TheObjVal=document.all.sel_nj.value;
					if((TheObjVal=="")||(TheObjVal=="Nothing")){
						alert('需选定年级！');
						return false;
					}
					TheObjVal=document.all.sel_zy.value;
					if((TheObjVal=="")||(TheObjVal=="Nothing")){
						alert('需选定专业！');
						return false;
					}
				}
				
				if(rad_cddw.checked){
					TheObjVal=document.all.sel_cddw.value;
					if((TheObjVal=="")||(TheObjVal=="Nothing")){
						alert('需选定承担单位！');
						return false;
					}
				} 
				return true;
			}
		</script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="kkjh_xqsyksjh_rpt.aspx" target="frmRpt" method="post">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>查看学期实验开设计划</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="56">
						<table width="660" height="100%" cellSpacing="0" cellPadding="0" align="center" border="0">
							<tr>
								<td width="34%" align="left">学年学期
									<select name="sel_xnxq" style="WIDTH:165px"><asp:Literal ID="opXNXQ" Text="" Runat="server"/>
									</select>
								</td>
								<td width="60%" align="left">
									<input type="radio" name="type" id="rad_njzy" checked value="0" onclick="show_dis('njzy')">分院(系)/部&nbsp;
									<input type="radio" name="type" id="rad_cddw" value="1" onclick="show_dis('cddw')">分承担单位
								</td>
								<td align="right" width="6%" nowrap><input class="button" type="submit" name="submit" value="检索" onclick="return ChkValue()"></td>
							</tr>
							<tr>
								<td colspan="3" id="dis_njzy" height="28">
									<table width="100%" height="100%" cellSpacing="0" cellPadding="0" align="left" border="0">
										<tr>
											<td width="85">年级&nbsp;<select name="sel_nj" style="WIDTH:55px" onchange="document.all.sel_xy.onchange();"><%=(new BLL.include.ind_subPublic()).WRT_nj()%></select></td>
											<td><%=(new BLL.JXJH.private_JXJH()).SetValue("yxzy",USER_OPTYX)%></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td colspan="3" id="dis_cddw" height="28" style="DISPLAY:none">
									承担单位&nbsp;<select name="sel_cddw" style="WIDTH:165px">
										<%=new BLL.JXJH.private_JXJH().SetValue("CDDW",USER_OPTDW)%>
									</select>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="3%">
						<DIV id="theHead" style='WIDTH: 99%'></DIV>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="100%">
						<iframe name="frmRpt" src="kkjh_xqsyksjh_rpt.aspx" width="99%" height="99%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
