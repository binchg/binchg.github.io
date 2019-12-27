<%@ Page %>
<%@ Import NameSpace="System.Data.SqlClient"%>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>辅修学生名册</title>
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="C#" runat="server">
		public string html_xnxq;
		public string html_nj2;
		public string html_zy2;
		public string html_pycc;
		
		
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
			    //USER_OPTYX="%";
				//string THE_APPPUBLIC=Application["TheAppPublic"].ToString();
				//xsxj.App(THE_APPPUBLIC);
				html_xnxq=xsxj.Draw_fxxnxq();				
				html_nj2=xsxj.Draw_nj2("");	
				html_zy2=xsxj.Draw_zy2(USER_OPTYX);	
				html_pycc=xsxj.Draw_pycc();
				//html_c=c.CalendarEx(dt.ToString("d"),"cdate");		
			}
		}
		</script>
		<script language="JavaScript" src="./../include/Scr/ind_HTML_hr.js"></script>
		<script language="JavaScript">
		</script>
	</HEAD>
	<body  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" method="post" action="e_fxxsmc_rpt.aspx" target="main">
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
			<tr>
				<td vAlign="top" align="center" colSpan="3">
					<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr>
							<td vAlign="bottom" align="center"><b>辅修学生名册</b></td>
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
						<table id="tblJbcx" height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td width="225" height="28">学年学期&nbsp;<select name="sel_xnxq" style='WIDTH:165px'><%=html_xnxq%></select><input id="flag" name="flag" value="sec" type="hidden"></td>
								<td width="150" id="disyxzy" height="28" style="display:none">主修年级/专业&nbsp;<select name="sel_nj2" style='WIDTH:65px'><%=html_nj2%></select></td>
								<td width="150" height="28" id="disfxzy" style="display:_none">辅修年级/专业&nbsp;<select name="sel_nj1" style='WIDTH:65px'><%=html_nj2%></select></td>
								<td width="120"><select name="sel_fxzy" style='WIDTH:130px'><%=html_zy2%></select>
								<td width="160" align=right><input class="button" type="submit" value="检索" name="submit"></td>
				</td>
			</tr>
			<tr>
				<td width="100%" colspan="9" height="28px"><table width="100%" cellpadding="0" border="0" cellspacing="0">
						<tr>
							
							<td colspan="6">
								 <input type=radio name=radCx value="0" checked onclick="disfxzy.style.display='';disyxzy.style.display='none'">分辅修年级/专业按主修年级/专业
									<input type=radio name=radCx value="1" onclick="disfxzy.style.display='none';disyxzy.style.display=''">分主修年级/专业按辅修年级/专业
								</td>
							<td align="right"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		</td> </tr>
		<tr>
			<td id="ifr" vAlign="top" align="center" height="100%">
				<iframe name="main" src="e_fxxsmc_rpt.aspx?flag=firstload" frameBorder="0" width="99%" height="98%">
				</iframe>
			</td>
		</tr>
		</table>
		</form> 
	</body>
</HTML>
