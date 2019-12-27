<%@ Page language="c#" Codebehind="Stu_sdpj.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXKP.Stu_sdpj" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
			<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
			<script language="javascript">
	function ListTime(theID){
		try{
			var str=theID.value;
			var pc=str.split("|")[1];
			sjqd.innerHTML=eval("document.all.hid_"+pc+".value;");
			form1.submit();
		}catch(e){}
	}
			</script>

	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="Stu_sdpj_rpt.aspx" method="post" target="main">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td valign="top" align="center">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td valign="bottom" align="center"><b>提交师德评价表</b></td>
							</tr>
							<tr>
								<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td vAlign="top" align="center" height="5%">
						<%=vPV[1]%>
						<table width="660" border="0" cellspacing="0" cellpadding="3" align="center" height="26">
							<tr>
								<td rowSpan="8">评价轮次&nbsp;<%=vPV[0]%></td>
							</tr>
							<tr>
								<td id="sjqd"></td>
							</tr>
						</table>
					</td>
				</TD>
				<tr>
					<td valign="top" align="center" height="5%">
						<DIV id="theHead" style='DISPLAY: none;WIDTH: 99%'></DIV>
					</td>
				</tr>
				<tr>
					<td valign="top" align="center" height="100%">
						<iframe name="main" src="Stu_sdpj_rpt.aspx" width="99%" height="98%" frameborder="0"></iframe>
					</td>
				</tr>
			</table>
		</form>
		<script language="javascript">document.all.sel_lc.onchange();</script>
	</body>
</HTML>
