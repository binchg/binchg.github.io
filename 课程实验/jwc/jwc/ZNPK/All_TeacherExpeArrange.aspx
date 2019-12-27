<%@ Page language="c#" Codebehind="All_TeacherExpeArrange.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.All_TeacherExpeArrange" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<HTML>
	<HEAD>
		<title>全校实验安排表[按指导教师]</title>
		<meta name="vs_snapToGrid" content="False">
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ChkValue()
			{
				var vYX;
				try{
					vYX=document.all.Sel_YX.value;
					if((vYX=="")||(vYX=="Nothing")){
						alert('需选定院(系)/部！');
						return false;
					}else{
						form.method='post';
						form.action='All_TeacherExpeArrange_rpt.aspx';
						form.target='frmRpt';
						form.submit();
						return true;
					}
				}catch(e){}
			}
		</script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0" marginwidth="0"
		marginheight="0">
		<form name="form" method="post" action="All_TeacherExpeArrange_rpt.aspx" onsubmit="return ChkValue()">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td valign="top" align="center">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td valign="bottom" align="center"><b>全校实验安排表[按指导教师]</b></td>
							</tr>
							<tr>
								<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="28">
						<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td width="34%">学年学期&nbsp;<select name='Sel_XNXQ' style='WIDTH:165px'><%=(new Base().SetValue("XNXQ-SYAP"))%></select></td>
								<td width="52%">院(系)/部&nbsp;<select name='Sel_YX' style='WIDTH:165px'><%=(new Base().GetYXInfo(USER_OPTYX))%></select></td>
								<td width="14%" align="right"><input name="Submit01" type="submit" value="检索" class="button" onclick="return ChkValue()"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="center">
						<div id="theHead" align="center" style="WIDTH:99%"></div>
					</td>
				</tr>
				<tr>
					<td valign="top" align="center" height="100%">
						<iframe name="vfrmRpt" src="" style="DISPLAY:none" width="0" height="0" frameborder="0">
						</iframe><iframe name="frmRpt" src="All_TeacherExpeArrange_rpt.aspx" width="99%" height="99%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
