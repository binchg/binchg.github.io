<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System.Data.SqlClient"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>教职工信息</title>
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="C#" runat="server">
		BLL.JXZY.jxzy_tea yxb=new BLL.JXZY.jxzy_tea();
		BLL.Calend.Calend c=new BLL.Calend.Calend();
		public string html_xl;
		public string html_xw;
		public string html_zc;
		public string html_gw;
		public string html_c;
		public DateTime dt=DateTime.Now;
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.JXZY.jxzy pSub=new BLL.JXZY.jxzy(this);
			// 在此处放置用户代码以初始化页面
			if(!IsPostBack)
			{
				html_xl=yxb.Draw_xl("xl");	
				html_xw=yxb.Draw_xl("xw");	
				html_zc=yxb.Draw_xl("zc");	
				html_gw=yxb.Draw_gw();
				html_c=c.CalendarEx(dt.ToString("d"),"cdate");		
			}
		}
		</script>
		<script language="JavaScript" src="./../include/Scr/ind_HTML_hr.js"></script>
		<script language="JavaScript">
		</script>
	</HEAD>
	<body topmargin='0' leftmargin='0'>
		<table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
			<tr>
				<td vAlign="top" align="center" colSpan="3">
					<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr>
							<td vAlign="bottom" align="center"><b>教师教辅人员信息</b></td>
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
				<td id="objCx" vAlign="top" align="center" height="4%">
					<form name="form1" method="post" action="r_ryxx_rpt.aspx" target="main">
						<table id="tblJbcx" height="100%" cellSpacing="0" cellPadding="0" width="660" align="center"
							border="0">
							<tr>
								<td width="140" height="20">学历&nbsp;<select name="sel_xl" style='WIDTH:100px'><%=html_xl%></select>
								<input id=flag name=flag value="sec" type=hidden>
								</td>
								<td width="25" height="20">学位</td>
								<td width="115"><select name="sel_xw" style='WIDTH:100px'><%=html_xw%></select></td>
								<td width="30" height="20">职称</td>
								<td width="115" id="theXQJXL"><select name="sel_zc" style='WIDTH:100px'><%=html_zc%></select></td>
								<td width="25">岗位</td>
								<td width="110">
									<select name="sel_gw" style='WIDTH:100px'><%=html_gw%>
									</select>
								</td>
								<td width="50">是否在岗</td>
								<td width="40"><select name="sel_sfzg">
										<option value='' selected></option>
										<option value='0'>是</option>
										<option value='1'>否</option>
									</select></td>
							</tr>
							<tr>
								<td width="100%" colspan="9"><table width="100%" cellpadding="0" border="0" cellspacing="0">
										<tr>
											<td width="90">计算年龄日期</td>
											<td width="130"><%=html_c%></td>
											<td width="55">年龄段</td>
											<td width="200"><input type="text" name="AgeF" size="3" maxlength="2">－<input type="text" name="AgeT" size="3" maxlength="2"></td>
											<td align="right"><input class="button" type="submit" value="检索" name="submit"></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="3%"><br>
					<DIV id="theHead" style='WIDTH: 99%'></DIV>
				</td>
			</tr>
			<tr>
				<td id="ifr" vAlign="top" align="center" height="100%">
					<iframe name="main" src="r_ryxx_rpt.aspx?flag=firstload" frameBorder="0" width="99%" height="98%"></iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
