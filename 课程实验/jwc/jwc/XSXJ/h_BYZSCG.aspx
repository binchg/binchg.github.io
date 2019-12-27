<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>学籍查询</title>
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="./../include/Scr/ind_HTML_hr.js"></script>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>毕业证书存根</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form action="h_BYZSCG_rpt.aspx" method="post" name="doublecombo" target="main">
				<tr>
					<td valign="top" align="center" height="5%">
						<table width="640" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td>学号&nbsp;<input name="txt_xm" type="text" value="" size="19" maxlength="20"></td>
								</td>
								<td width=400></td>
							<TD align="right"><input type="submit" name="Submit" value="检索" class="button"></TD>
							</tr>							
						</table>
						
					</td>
				</tr>
			</form>
			<tr>
			<td valign="top" align="center" height="3%"><br>
				<DIV id="theHead" style='WIDTH: 99%'></DIV>
			</td>
		</tr>
			<tr>
				<td valign="top" align="center" height="100%" width="660">
					<iframe name="main" src="h_BYZSCG_rpt.aspx?txt_xm=" width="99%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
