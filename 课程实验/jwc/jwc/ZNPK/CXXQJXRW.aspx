<%@ Page language="c#" Codebehind="CXXQJXRW.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.CXXQJXRW" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>查看学期教学任务</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/Styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
	</HEAD>
	<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  
	leftMargin="0" topMargin="0" marginwidth="0" marginheight="0">
		<table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0"
			leftmargin="0" topmargin="0">
			<tr>
				<td vAlign="top" align="center">
					<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr>
							<td vAlign="bottom" align="center"><b>查看学期教学任务</b></td>
						</tr>
						<tr>
							<td vAlign="bottom" align="center">
								<script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" action="CXXQJXRW_Rpt.aspx" method="post" target="main">
				<tr>
					<td vAlign="top" align="center" height="5%">
						<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td align="left" width="35%" height="26"><%=(new Base().SetValue("JXRWXNXQ"))%></td>
								<td align="center" width="30%"><input onclick='try{form1.kcmc.value="";form1.Qry_Add.value="1";}catch(e){}' type="radio"
										CHECKED name="Qry">按课程 <input onclick='try{form1.kcmc.value="";form1.Qry_Add.value="2";}catch(e){}' type="radio"
										name="Qry">按教师 <input onclick='try{form1.kcmc.value="";form1.Qry_Add.value="3";}catch(e){}' type="radio"
										name="Qry">按班级
								</td>
								<td align="left" width="30%">&nbsp;名称/代码&nbsp;<input title="可模糊检索" type="text" size="16" name="kcmc"></td>
								<td align="right" width="5%"><input class="button" type="submit" value="检索" name="btn_search">
								</td>
							</tr>
						</table>
					</td>
					<input type="hidden" value="1" name="Qry_Add">
				</tr>
				<tr>
					<td vAlign="top" align="center" height="4%">
						<DIV id="theHead" style="WIDTH: 99%; HEIGHT: 100%"></DIV>
					</td>
				</tr>
				<tr>
					<td vAlign="top" align="center" height="100%"><iframe id="main" name="main" src="CXXQJXRW_Rpt.aspx" frameBorder="0" width="99%" height="98%">
						</iframe>
					</td>
				</tr>
			</form>
		</table>
	</body>
</HTML>
