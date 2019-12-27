<%@ Page %>
<%@ Import NameSpace="System.Data.SqlClient"%>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>青果软件——学籍查询</title>
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="C#" runat="server">
			public string html_zy;
			public string html_xnxq;
			public string html_cf;
			public string html_jl;
			public string html_nj2;
			
			private void Page_Load(object sender, System.EventArgs e)
			{	
			BLL.XSXJ.XSXJ_XSDA xsxj=new BLL.XSXJ.XSXJ_XSDA(this);
			string USER_ID=xsxj.USER_ID;
			string USER_ZH=xsxj.USER_ZH;
			string USER_NAME=xsxj.USER_NAME;
			string USER_LVID=xsxj.USER_LVID;
			string USER_BJID=xsxj.USER_BJID;
			string USER_LEVEL=xsxj.USER_LEVEL;
			string USER_OPTYX=xsxj.USER_OPTYX;
			string USER_OPTDW=xsxj.USER_OPTDW;
				if(!IsPostBack)
				{
					//string THE_APPPUBLIC=Application["TheAppPublic"].ToString();
					//xsxj.App(THE_APPPUBLIC);
					html_zy=xsxj.Draw_zy2(USER_OPTYX);	
					html_nj2=xsxj.Draw_nj2("ALL");
					html_xnxq=xsxj.Draw_xnxq_bj("");	
					html_cf=xsxj.draw_cflb("%");	
					html_jl=xsxj.draw_jllb("%");
					
					//html_c=c.CalendarEx(dt.ToString("d"),"cdate");		
				}
			}
		</script>
		<script language="JavaScript" src="./../include/Scr/ind_HTML_hr.js"></script>
		<script language="JavaScript">
		</script>
	</HEAD>
	<body  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<form name="form1" method="post" action="e_xscjxx_rpt.aspx" target="main">
					
		<table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
			<tr>
				<td vAlign="top" align="center" colSpan="3">
					<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr>
							<td vAlign="bottom" align="center"><b>学生奖惩信息</b></td>
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
				<td id="objCx" vAlign="top" align="center"  height="56px" >
						<table id="tblJbcx" height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td width="50" valign=bottom>学年学期</td>
								<td width=90  valign=bottom><select name="sel_xnxq"><%=html_xnxq%>
								</select></td>
								<td width=25  valign=bottom>年级</td>
								<td width=60  valign=bottom><select name="sel_nj"><%=html_nj2%></select></td>
								<td width=30  valign=bottom>专业&nbsp;</td>
								<td width=160  valign=bottom><select name="sel_zy" style="width:160px"><%=html_zy%></select></td>
								<td width=140  valign=bottom id=jlxx style="display:''">奖励&nbsp;<select name="sel_jl" style="width:110px"><%=html_jl%></select></td>
								<td width=140  valign=bottom id=cfxx style="display:none">惩罚&nbsp;<select name="sel_cf" style="width:110px"><%=html_cf%></select></td>
							</td>
					</tr>
					<tr>
						<td width="100%" colspan="9" height="28px"><table width="100%" cellpadding="0" border="0" cellspacing="0">
								<tr>
									<td align=left colspan=8><input type="radio" name="chkCxfs" value=0 checked onclick="jlxx.style.display='';cfxx.style.display='none';">奖励信息&nbsp;&nbsp;
										<input type="radio" name="chkCxfs" value=1 onclick="jlxx.style.display='none';cfxx.style.display='';">惩罚信息&nbsp;&nbsp;</td>
									<td align="right"><input name=flag value="sec" type=hidden><input class="button" type="submit" value="检索" name="submit"></td>
								</tr>
							</table>
						</td>
					</tr>
		</table>
		</td> </tr>
		<tr>
			<td valign="top" align="center" height="3%">
				<DIV id="theHead" style='WIDTH: 99%'></DIV>
			</td>
		</tr>
		<tr>
			<td id="ifr" vAlign="top" align="center" height="100%">
				<iframe name="main" src="e_xscjxx_rpt.aspx?flag=firstload" frameBorder="0" width="99%" height="98%"></iframe>
			</td>
		</tr>
		</table>
		</form> 
	</body>
</HTML>
