<%@ Page %>
<%@ Import NameSpace="System.Data.SqlClient"%>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="JWNET"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>院(系)/部办理学期注册</title>
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">		
		<script language="C#" runat="server">
			BLL.XSXJ.XSXJ_XQZC xqzc=new BLL.XSXJ.XSXJ_XQZC();
			public string html_xsxj;
			public string html_xnxq;
			public string html_yx;
			public string html_pycc;
			public string html_yxbzzy;
			public string html_nj;
			
			
			private void Page_Load(object sender, System.EventArgs e)
			{
				BLL.XSXJ.XSXJ_XSDA xsxj=new BLL.XSXJ.XSXJ_XSDA(this);
				xsxj.DoorOnOff(this,"XJ_YX_XQZC");
				string vXNXQ=xqzc.return_xnxq_zc();
				if(vXNXQ=="") Response.Redirect ("../_help/sorry.aspx?str=STOP_DOOR");
				string USER_ID=xsxj.USER_ID;
				string USER_ZH=xsxj.USER_ZH;
				string USER_NAME=xsxj.USER_NAME;
				string USER_LVID=xsxj.USER_LVID;
				string USER_BJID=xsxj.USER_BJID;
				string USER_LEVEL=xsxj.USER_LEVEL;
				string USER_OPTYX=xsxj.USER_OPTYX;
				string USER_OPTDW=xsxj.USER_OPTDW;
				string htmlb=xqzc.java_main_zc();
				Response.Write(htmlb);
				if(!IsPostBack)
				{
					html_xsxj=xsxj.Draw_xnxq();	
					html_yxbzzy=xsxj.SetValue("NJYXZYBJ",USER_OPTYX);
					
				}
			}
		</script>
		<script language="JavaScript" src="./../include/Scr/ind_HTML_hr.js"></script>		
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" method="post" action="set_xqzc_rpt.aspx" target="main">
		<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
			<tr>
				<td vAlign="top" align="center" colSpan="3">
					<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr><td vAlign="bottom" align="center"><b>院(系)/部办理学期注册</b></td></tr>
						<tr><td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td></tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td id="objCx" vAlign="top" align="center" height="4%">
					<table id="tblJbcx" height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr><td><%=html_yxbzzy%></td></tr>
					    <tr><td width=660 colspan=7>
							<table width="100%" cellpadding=0 cellspacing=0 align=center>
								<tr><td width=120>
									<input name="sel_xmxh" type="radio" value="1" checked onclick=onclick="if(this.checked==true){document.all.selrad.value='0';}">学号 
									<input type="radio" name="sel_xmxh" value="0" onclick=onclick="if(this.checked==true){document.all.selrad.value='1';}" >姓名</td>
									<td width=60><input type="text" name="xmxh"></td>
									<td align=left width=100><input name="flag" value="sec" type=hidden></td>
									<td width=350 align=right><input type=checkbox name="bdflag" value="1" checked>限已报到学生</td>
									<td align="right" width=60><input type="submit" name="btn_search" value="检索" onclick="testvalue()" class=button></td>
								</tr>
							</table>
							</td>
						 </tr>
					</table>
			    </td>				
			</tr>
			
			<tr><td height=100% width=100% valign="top">
				<table width="660" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr><td height="80%" width=46% rowspan="3" valign="top"><iframe name="main" src="set_xqzc_rpt.aspx?flag=firstload" width=100% height=100% frameborder=1></iframe></td>
						<td width=5% valign="bottom"> <input type="button" name="addbd" value=">>" onclick="addzc()" class="button"><br><br></td>
						<td  width=50% rowspan="2" valign="middle" ><iframe name="topfrm" width="100%" height=99%  src="set_xqzc_rtop.aspx?flag=firstload"  frameborder=1></iframe>&nbsp;</td>
					</tr>
					<tr><td width=5% height="5%" valign="middle">&nbsp;</td></tr>
					<tr> 
						<td valign="top"><br><br><input type="button" name="delbbd" value="<<" onclick="delzc()" class="button"></td>
						<td width=50% height="50%"  valign="top"> <iframe name="buttonfrm" src="set_xqzc_rbottom.aspx?flag=firstload"  height=99%   width="100%" frameborder=1> </iframe></td>
					</tr>
				</table>
			</td></tr>
		</table>
		</form>
	</body>
</HTML>

