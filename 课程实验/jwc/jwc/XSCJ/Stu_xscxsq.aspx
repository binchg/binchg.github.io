<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
<HTML>
	<HEAD>
		<title></title>
		<%
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_STU pSub=new BLL_STU();
string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
string[] vPV;

SelObj.DoorOnOff(this,"CJ_XS_CXSQ");
vPV=pSub.CXSQ_XNXQtime();
%>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>		
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>重修报名</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
						<tr><td valign="bottom" align="center" id=theStr>
								<div >
								<asp:Literal ID="infoStr" Runat="server" Text=""></asp:Literal>
								</div>		
							</td>
						</tr>						
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td id="vis_xnxq"><%=vPV[4]%></td>
						</tr>
						
					</table>
				</td>
			</TD>
			<tr>
				<td align="center">						    
					<DIV id="theHead" style='DISPLAY: none;WIDTH: 99%'></DIV>					
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%" width="99%">
					<iframe name=main src="Stu_xscxsq_rpt.aspx?xnxq=<%=vPV[0]%>&amp;time=<%=vPV[3]%>" width="99%" height="98%" frameborder=0>
					</iframe>
				</td>
			</tr>			
		</table>
	</body>
</HTML>
