<%@ Page %>
<%@ Import NameSpace="System.Data.SqlClient"%>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="JWNET"%>
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
		<script language="C#" runat="server">
		public string html_xsxj;
		public string html_bynj;
		public string html_yx;
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
				//string term=var.public_term;
			    //string owner=var.public_owner;
				//string THE_APPPUBLIC=owner+"#"+term+"#"+"281";
				//xsxj.App(THE_APPPUBLIC);
				html_xsxj=xsxj.Draw_xnxq();					
				html_bynj=xsxj.draw_bynj("");	
				html_yx=xsxj.SetValue("yxzy",USER_OPTYX);	
				html_pycc=xsxj.Draw_pycc();
			}
		}
		</script>
		<script language="JavaScript" src="./../include/Scr/ind_HTML_hr.js"></script>
		<script language="JavaScript">
		</script>
	</HEAD>
	<body   leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
			<tr>
				<td vAlign="top" align="center" colSpan="3">
					<table height="20" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr>
							<td vAlign="bottom" align="center"><b>毕业生名册</b></td>
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
					<form name="form1" method="post" action="h_XSBYMX_RPT.ASPX" target="main">
						<table id="tblJbcx" height="100%" cellSpacing="0" cellPadding="0" width="660" align="center"
							border="0">
							<tr>
								<td width="30" height="20">年级</td>
								<td width="80" id="theXQJXL"><select name="Sel_nj" style='WIDTH:70px'><%=html_bynj%></select><input id="flag" name="flag" value="sec" type="hidden"></td>
								<td width="490">									
										<%=html_yx%>									
								<td width="30"><input class="button" type="submit" value="检索" name="submit"></td>
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
					<iframe name="main" src="h_XSBYMX_RPT.ASPX?flag=firstload" frameBorder="0" width="99%" height="98%">
					</iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
