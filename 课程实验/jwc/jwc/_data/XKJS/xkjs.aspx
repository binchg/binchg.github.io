<%@ Page language="c#" Codebehind="xkjs.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame._data.XKJS.xkjs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>
			<%=TheTitle%>
		</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0" marginwidth="0"
		marginheight="0" scroll="yes">
		<table width="100%" height="100%" cellspacing="0" cellpadding="0" align="center" border="0">
			<tr>
				<td bgcolor="#dfdfdf" width="20%" height="100%"><br>
				</td>
				<td width="21" align="center" height="100%">
					<table width="608" height="100%" cellspacing="0" cellpadding="0" align="center">
						<tr>
							<td height="5"></td>
						</tr>
						<tr>
							<td height="10" align="center">
								<table width="99%">
									<tr>
										<td width="99%" height="5" align="center">
											<font style="COLOR:red"><b><big>
														<asp:Literal id="TheAffiche" runat="server"></asp:Literal></big></b></font>
										</td>
									</tr>
									<tr>
										<td width="100%" height="1" valign="top"><hr>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td valign="top" align="center" colspan="2">
								<table width="600" height="100%" border="0" cellspacing="0" cellpadding="0" align="center">
									<tr>
										<td valign="top" width="100%" style="FONT-SIZE:14px" align="left">
											<div style="BORDER-RIGHT:0px;BORDER-TOP:0px;OVERFLOW-Y:visible;FONT-SIZE:14px;BORDER-LEFT:0px;WIDTH:595px;LINE-HEIGHT:24px;BORDER-BOTTOM:0px;FONT-FAMILY:ËÎÌו Fixedsys;BACKGROUND-COLOR:transparent">
												<%=TheContent%>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="5"><br>
							</td>
						</tr>
					</table>
				</td>
				<td bgcolor="#dfdfdf" width="20%" height="100%"><br>
				</td>
			</tr>
		</table>
	</body>
</HTML>
