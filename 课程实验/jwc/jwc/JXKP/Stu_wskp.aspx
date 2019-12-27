<%@ Page language="c#" Codebehind="Stu_wskp.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXKP.Stu_wskp" %>
<HTML>
	<HEAD>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
			<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
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
	<body text="#000000" bgColor="#ffffff" leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<form name="form1" action="Stu_wskp_rpt.aspx" method="post" target="main">
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td vAlign="top" align="center">
						<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td vAlign="bottom" align="center"><b>提交教学评价表</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center">
									<script language="JavaScript">Draw_HR('99.5%')</script>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td vAlign="top" align="center" height="5%">
						<%=vPV[1]%>
						<table height="26" cellSpacing="0" cellPadding="3" width="660" align="center" border="0">
							<tr>
								<td>评价轮次&nbsp;<%=vPV[0]%></td>
							</tr>
							<tr>
								<td id="sjqd"></td>
							</tr>
						</table>
					</td>
				</TD>
				<tr>
					<td vAlign="top" align="center">
						<DIV id="theHead" style="WIDTH: 99%"></DIV>
					</td>
				</tr>
				<tr>
					<td vAlign="top" align="center" height="100%"><iframe name="main" src="Stu_wskp_rpt.aspx" frameBorder="0" width="99%" height="92%"></iframe></td>
				</tr>
			</table>
		</form>
		<script language="javascript">document.all.sel_lc.onchange();</script>
	</body>
</HTML>
