<%@ Page %>
<%@ Import NameSpace="System.Data.SqlClient"%>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="JWNET"%>
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
		public string html_xsxj;
		public string html_xnxq;
		public string html_ydlb;
		public string html_yx;
		public string html_xn;
		
	
		
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
				html_xn=xsxj.Draw_nj2("");
				html_yx=xsxj.Draw_yx(USER_OPTYX);
				html_ydlb=xsxj.draw_ydlb("%");	
				html_xnxq=xsxj.Draw_xnxq_bj("all");	
				html_yx=xsxj.Draw_yx();	
				//html_pycc=xsxj.Draw_pycc();
				//html_c=c.CalendarEx(dt.ToString("d"),"cdate");		
			}
		}
		</script>
		<script language="JavaScript" src="./../include/Scr/ind_HTML_hr.js"></script>
		<script language="JavaScript">
		</script>
	</HEAD>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%" align=center>
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>学籍异动情况</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form action="f_XSYDTJ_RPT.ASPX" method="post" name="doublecombo" target="main">
<tr><td valign="top" align="center" height="5%" >
	<table width="640" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	<tr><td>年级<select name=sel_nj><%=html_xn%></select></td>
	<td>学年学期<select name=sel_xnxq  style="width:165"><%=html_xnxq%></select></td>
        <td >异动类别
	  <select name="lb" style="width:98">
          <%=html_ydlb%>
         </select></td>
  	   <td width=29% >院(系)/部<select name="Sel_YX" style="width:129"><%=html_yx%></select><input name=flag type=hidden value="sec"></td></tr><tr>
	  <TD align="right" colspan=4><input type="submit" name="Submit" value="检索" class="button" ></td>
	 
	</tr>
	</table>
</td></tr>
</form>
<tr>
			<td valign="top" align="center" height="3%"><br>
				<DIV id="theHead" style='WIDTH: 99%'></DIV>
			</td>
</tr>
<tr><td valign="top" align="center" height="100%" width=660>
<iframe name=main src="f_XSYDTJ_RPT.ASPX?flag=firstload" width=99% height=98% frameborder=0></iframe>
</td></tr>
</table>
</body>
</HTML>
