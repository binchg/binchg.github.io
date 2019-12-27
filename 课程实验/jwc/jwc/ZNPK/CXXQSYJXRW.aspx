<%@ Page language="c#" Codebehind="CXXQSYJXRW.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.CXXQSYJXRW" %>
<HTML>
	<HEAD>
		<title>查看学期实验教学任务</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ChkValue(){
				var TheObjVal;
				TheObjVal=document.all.sel_cddw.value;
				if((TheObjVal=="")||(TheObjVal=="Nothing")){
					alert('需选定承担单位！');
					return false;
				}
				return true;
			}
		</script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="CXXQSYJXRW_Rpt.aspx" target="frmRpt" method="post">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>查看学期实验教学任务</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="28">
						<table width="660" height="100%" cellSpacing="0" cellPadding="0" align="center" border="0">
							<tr>
								<td width="35%" ><%=(new BLL.ZNPK.Base().SetValue("XNXQ-SYJXRW"))%></td>
								<td align="left" width="34%" >承担单位&nbsp;<select name="sel_cddw" style="width:163px"><%=(new BLL.ZNPK.Base().SetValue("CDDW",USER_OPTDW))%></select></td>
								<td align="left" width="25%" >课程&nbsp;<input type=text name="txt_kc" maxlength=20 size=17></td>
								<td align="right" width="6%" nowrap><input class="button" type="submit" name="submit" value="检索" onclick="return ChkValue()"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="3%"><br>
						<DIV id="theHead" style='WIDTH: 99%'></DIV>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="100%">
						<iframe name="frmRpt" src="CXXQSYJXRW_Rpt.aspx" width="99%" height="99%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>