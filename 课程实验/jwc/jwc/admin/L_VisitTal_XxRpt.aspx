<%@ Page language="c#" Codebehind="L_VisitTal_XxRpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.admin.L_VisitTal_XxRpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title><asp:Literal ID="titleStrId" Text="" Runat="server"/> 用户登录日志</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
  </head>
  <body leftmargin="0" topmargin="0"oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false">
   	<table width='100%' align=center border=0 CELLPADDING=0 CELLSPACING=0  bordercolorlight='#75A7AE' bordercolordark='#FFFFFF'>
		<tr valign="middle" align="left" >
			<td width="100%" colspan="3" style="height:26">
				<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
					<tr><td valign="bottom" align="center"><b>用户登录日志</b></td></tr>
					<tr><td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
					</td></tr>
				</table>  
			</td> 
		</tr>
		<tr valign="middle" align="left">
			<td width="30%"  height="26">&nbsp;用户：<asp:Literal ID="usrNameStr" Runat="server" Text=""/></td>
			<td width="30%"  height="26">&nbsp;角色：<asp:Literal ID="roleNameStr" Runat="server" Text=""/></td>
			<td width="40%"  height="26">&nbsp;登录次数：<asp:Literal ID="lognCountStr" Runat="server" Text=""/></td>
		</tr>
		<form id="Form1" method="post" runat="server">
			<tr valign="middle" align="center" >
				<td width="30%" colspan="3" height="95%">
					<asp:Panel ID="pageRpt" Runat="server"/>
				</td>
			</tr>	
		</form>
	</table>
  </body>
</html>
