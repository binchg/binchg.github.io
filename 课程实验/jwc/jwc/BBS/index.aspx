<%@ Page language="c#" Codebehind="index.aspx.cs" AutoEventWireup="false" Inherits="JWNET.BBS.index" %>
<script language='JavaScript' src='returnfunction.js'></script>

<HTML>
	<HEAD>
		<title>论坛首页</title>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<LINK href="../_style/Styles_BBS.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	</HEAD>
	<body bgColor="#ffffff" leftMargin="0" topMargin="0" marginheight="0" marginwidth="0"  scroll=auto>
		<center>
			<div align="center">
			<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b><font color=#000000>论坛首页</font></b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
			</td></tr>
			</table>  
			<TABLE id="Table1" cellSpacing="1" width="99%" border="0">
				<TR>
					<TD style="COLOR: #000000" align="left" width="100%">
						<A href="Theme_Search.aspx">搜索主题</A>
						| 讨论区数：<%=iArearCount%>
						| 主题数：<%=iThemeCount%>
						| 回复数：<%=iRevertCont%></TD>
				</TR>
			</TABLE>
			<asp:Repeater ID=Repeater1 Runat=server>
					<HeaderTemplate>
						<table border="0" width="99%" cellspacing="1" bgcolor="#89bfa7">
							<tr style="background-color:#89bfa7"> 
								<TD align="center" width="50%" bgColor="#bfe5d5" height="20"><B>讨论区</B></TD>
								<TD noWrap align="center" width="6%" bgColor="#bfe5d5" height="20"><B>主题数</B></TD>
								<TD noWrap align="center" width="6%" bgColor="#bfe5d5" height="20"><B>回复数</B></TD>
								<TD align="center" width="38%" bgColor="#bfe5d5" height="20"><B>最新主题</B></TD>
							</tr>
					</HeaderTemplate>
					<ItemTemplate>
						<asp:Panel ID=areaRow Runat=server></asp:Panel>
					</ItemTemplate>
					<FooterTemplate>
					</tr></table>
					</FooterTemplate>
				</asp:Repeater>
				</div>
		</center>
		<div align="center">
			<center>
				<br>
				
				<table border="0" width="99%" cellspacing="1" ID="Table1">
				<tr><td width="100%"><font color="#000000">个人信息</font></td></tr> <!--#FF9933-->
				</table> 
				<table border="0" width="99%" cellspacing="1" bgcolor="#89bfa7" ID="Table2"> <!--#CCCCCC-->
				<tr><td bgcolor="#F5F5F5">
					<img border="0" src="images/person.gif" width="55" height="45">
					<%=PriInfo%>
				</td></tr>
				</table>
			</center>
		</div>
	</body>
</HTML>
