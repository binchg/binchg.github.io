<%@ Page language="c#" Codebehind="Pri_TeaCKYXLJXJC.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Pri_TeaCKYXLJXJC" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<%pflag="0";%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>查看教学进度安排</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript" src="Private/ind_ShowList.js"></script>
		<script language="javascript">
		function FSearch()
		{
			var xnxq,kc;
			try{
 				xnxq=document.all.sel_xnxq.value;
				kc=document.all.sel_kc.value;
				if((xnxq=="")||(xnxq=="Nothing")){alert('请选择学年学期！');return false;}
				if((kc=="")||(kc=="Nothing")){alert('请选择课程！');return false;}
				return true;
			}
			catch(e){}
		}
		</script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>查看教学进度安排</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							<iframe name=thefrmRpt src=''   frameborder=0 style='DISPLAY: none;HEIGHT: 0px;WIDTH:0'></iframe>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="22">
					<table width="660" border="0" align="center" cellpadding="0" cellspacing="0" height="100%">
						<form name="form1" method="post" action="Pri_TeaCKYXLJXJC_rpt.aspx" target="frmRpt" onSubmit='return FSearch()'>
								<tr>
									<%if (pflag=="1"){%>
									<td width="87%">
									<%=(new Base().SetValue("YXLXNXQJSKC",""))%></td>
									<td align="right" width="13%"><input name="Search" type="submit" value="检索" class="button"></td>
									<%}else{%>
									<td width="100%"><%=(new Base().SetValue("YXLXNXQKCJS",""))%></td>
								</tr><tr></tr>
								<TR>
									<td align="right" width="100%" colspan="2"><input name="Search" type="submit" value="检索" class="button"></td>
									<%}%>
								</TR>
						</form>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="5%"><br>
					<DIV id="theHead" style='DISPLAY: none;WIDTH: 100%'></DIV>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="frmRpt" src="Pri_TeaCKYXLJXJC_rpt.aspx" width="100%" height="100%" frameborder="0">
					</iframe>
				</td>
			</tr>
			</table>
	</body>
</HTML>
