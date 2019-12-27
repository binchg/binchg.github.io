<%@ Page language="c#" Codebehind="stu_xscx.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.WSXK.stu_xscx1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>重修选</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
	</HEAD>
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<form name="form1" action="stu_xscx_rpt.aspx" method="post" target="frmRpt">
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td vAlign="top" align="center">
						<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td vAlign="bottom" align="center"><b>重修选</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="28">
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td align="left" width="60" nowrap>学年学期：</td>
								<td align="left" width="135" nowrap><%=xnxqstr%><FONT face="宋体"></FONT><br>
								</td>
								<td align="left" width="60" nowrap>时间区段：</td>
								<td align="left"><%=timestr%><br>
								</td>
								<td align="right" width="70" nowrap>&nbsp;
									<%if(seacher_flag=="show"){%>
									<input class="button" type="button" name="submit" value="提交" onclick="frmRpt.document.all.Submit.onclick()"></td>
								<%}%>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td vAlign="bottom" align="center" height="95%">
						<iframe name="frmRpt" src="stu_xscx_rpt.aspx" frameBorder="0" width="100%" height="98%">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
