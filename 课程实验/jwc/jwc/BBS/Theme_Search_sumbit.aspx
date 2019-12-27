<%@ Page language="c#" Codebehind="Theme_Search_sumbit.aspx.cs" AutoEventWireup="false" Inherits="JWNET.BBS.Theme_Search_sumbit" %>
<HTML>
	<HEAD>
		<title>论坛搜索结果</title>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" type="text/css" href="../_style/Styles_Qry.css">
		<script language='JavaScript' src='returnfunction.js'></script>
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0" scroll=auto>
		<center>
			<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b><font color=#000000>搜索结果</font></b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
			</td></tr>
			</table> 
			<br>
			<asp:repeater id="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
				<HeaderTemplate>
					<table border="0" width="99%" bgcolor="#89bfa7" cellspacing="1">
						<tr class='T'>
							<td width="5%" height="20" align="center">
							</td>
							<td width="50%" height="20" align="center">主题</td>
							<td width="13%" height="20" align="center">发表人</td>
							<td width="10%" height="20" align="center">点击数</td>
							<td width="10%" height="20" align="center">回复数</td>
							<td width="17%" height="20" align="center">最新回复人</td>
						</tr>
				</HeaderTemplate>
				<ItemTemplate>
					<tr>
						<td width="5%" bgcolor="#FFFBEE" height="22" align="center">
							<a href="Theme_View.aspx?area=<%=iArea%>+&page=1&id=<%# DataBinder.Eval(Container.DataItem, "ThemeID")%>" target="_blank"><img border="0" src="images/titleicon/<%# DataBinder.Eval(Container.DataItem, "Icon")%>" alt="用新窗口打开主题" width="15" height="15"></a>
						</td>
						<td bgcolor="#FFFFFF" height="22" style="LEFT: 0px; WIDTH: 298; WORD-WRAP: break-word">
							<a href="Theme_View.aspx?area=<%=iArea%>&page=1&id=<%# DataBinder.Eval(Container.DataItem, "ThemeID")%>">
								<%# DataBinder.Eval(Container.DataItem, "Theme")%>
							</a>
							<asp:Image id='topmost' ImageUrl='images/topmost.gif' BorderWidth="0px" AlternateText='顶端主题' Visible="False" Runat=server></asp:Image>
							<asp:Image id='hot' ImageUrl='images/hot.gif' BorderWidth="0px" AlternateText='热门主题' Visible="False" Runat=server></asp:Image>
						</td>
						<td width="13%" bgcolor="#EFEFEF" height="22" align="left"><%# DataBinder.Eval(Container.DataItem, "Author")%></td>
						<td width="10%" bgcolor="#EFEFEF" height="22" align="right"><%# DataBinder.Eval(Container.DataItem, "Hit") %></td>
						<td width="10%" bgcolor="#FFFFFF" height="22" align="right"><%# DataBinder.Eval(Container.DataItem, "ReplyCount") %></td>
						<td width="17%" bgcolor="#EFEFEF" height="22" align="left"><%# DataBinder.Eval(Container.DataItem, "Replier")%><br>
						</td>
					</tr>
				</ItemTemplate>
				<FooterTemplate>
					</table>
				</FooterTemplate>
			</asp:repeater>
			<form method="post" action="Theme_Search_sumbit.aspx" runat=server>
				<table border="0" width="98%" cellspacing="0" bgcolor="#bfe5d5">
					<tr>
						<td>
							页码<asp:Label ID="cPage" Runat="server" ForeColor="#000000">0</asp:Label>/<asp:Label ID="CountPage" Runat="server" ForeColor="#000000">0</asp:Label>
						</td>
						<td align="right">
							<asp:Label ID="LabArea" Visible="False" Runat="server"></asp:Label>
							<asp:HyperLink id="FristPage" Runat="server" Enabled="False">首页</asp:HyperLink>|
							<asp:HyperLink id="PreviousPage" Runat="server" Enabled="False">上一页</asp:HyperLink>|
							<asp:HyperLink id="NextPage" Runat="server" Enabled="False">下一页</asp:HyperLink>|
							<asp:HyperLink id="LastPage" Runat="server" Enabled="False">尾页</asp:HyperLink>| 
							&nbsp;转到第
							<asp:TextBox ID="txtPage" Width="40px" Runat="server" BackColor="#F9F9FF" BorderWidth="1px" BorderStyle="Solid"
							BorderColor="#ABC8EC"></asp:TextBox>页
							<input type=submit name=btn value="GO" class='but20'>
							
							<input type="hidden" name="area" value="<%=iArea%>">
							<input type="hidden" name="keyWord" value="<%=iKeyWord%>">
							<input type="hidden" name="chkTitle" value="<%=iRangeTitle%>">
							<input type="hidden" name="chkContent" value="<%=iRangeContent%>">
							<input type="hidden" name="chkAuthor" value="<%=iRangeAuthor%>">
							<input type="hidden" name="Aear0" value="<%=iDay0%>">
							<input type="hidden" name="Aear1" value="<%=iDay1%>">
							<input type="hidden" name="Aear2" value="<%=iDay2%>">
							<input type="hidden" name="chkSJ" value="<%=iDayFashion%>">
						</td>
					</tr>
				</table>	
			</form>
		</center>
	</body>
</HTML>
