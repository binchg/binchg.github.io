<%@ Page language="c#" Codebehind="Theme_List.aspx.cs" AutoEventWireup="false" Inherits="JWNET.BBS.Theme_List" %>
<HTML>
	<HEAD>
		<title>主题列表</title>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<LINK href="../_style/Styles_Qry.css" type="text/css" rel="stylesheet">
		<script language='JavaScript' src='returnfunction.js'></script>
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		leftMargin="0" topMargin="0" onsource="window.event.returnValue=false" scroll=auto>
		<center>
			<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b><font color=#000000>浏览主题</font></b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
			</td></tr>
			</table> 
			<table cellSpacing="0" width="99%" border="0">
				<tr>
					<td vAlign="bottom" align="left" width="40%">
						<font size="2"><A href="Theme_Write.aspx?area=<%=iArea%>&ParentId=-1"">发表主题</A></font>
  					  | <font size="2"><A href="Theme_Search.aspx?area=<%=iArea%>">搜索主题</A></font>
					</td>
					<td vAlign="bottom" noWrap width="10%" align=right>页码<asp:Label ID="cPage" Runat="server" ForeColor="#000000">0</asp:Label>/<asp:Label ID="CountPage" Runat="server" ForeColor="#000000">0</asp:Label></td>
				</tr>
			</table>
			<asp:repeater id="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
				<HeaderTemplate>
					<table border="0" width="99%" bgcolor="#89bfa7" cellspacing="1">
						<tr class='T'>
							<td width="5%" height="20" align="center">
							</td>
							<td width="36%" height="20" align="center">主题</td>
							<td width="11%" height="20" align="center">发表人</td>
							<td width="20%" height="20" align="center">更新时间</td>
							<td width="8%" height="20" align="center">点击数</td>
							<td width="8%" height="20" align="center">回复数</td>
							<td width="12%" height="20" align="center">最新回复人</td>
						</tr>
				</HeaderTemplate>
				<ItemTemplate>
					<tr>
						<td width="5%" bgcolor="#FFFBEE" height="22" align="center">
							<a href="Theme_View.aspx?area=<%=iArea%>&lstsort=<%=iSort%>&lstday=<%=iDay%>&page=1&id=<%# DataBinder.Eval(Container.DataItem, "ThemeID")%>" target="_blank"><img border="0" src="images/titleicon/<%# DataBinder.Eval(Container.DataItem, "Icon")%>" alt="用新窗口打开主题" width="15" height="15"></a>
						</td>
						<td bgcolor="#FFFFFF" height="22" style="LEFT: 0px; WIDTH: 298; WORD-WRAP: break-word">
							<a href="Theme_View.aspx?area=<%=iArea%>&lstsort=<%=iSort%>&lstday=<%=iDay%>&page=1&id=<%# DataBinder.Eval(Container.DataItem, "ThemeID")%>">
								<%# DataBinder.Eval(Container.DataItem, "Theme")%>
							</a>
							<asp:Image id='topmost' ImageUrl='images/topmost.gif' BorderWidth="0px" AlternateText='顶端主题' Visible="False" Runat=server></asp:Image>
							<asp:Image id='hot' ImageUrl='images/hot.gif' BorderWidth="0px" AlternateText='热门主题' Visible="False" Runat=server></asp:Image>
						</td>
						<td width="11%" bgcolor="#EFEFEF" height="22" align="left"><%# DataBinder.Eval(Container.DataItem, "Author")%></td>
						<td width="20%" bgcolor="#FFFFFF" height="22">
							<%# DataBinder.Eval(Container.DataItem, "Date","{0:yyyy-MM-dd}") %>							
							<%# DataBinder.Eval(Container.DataItem, "Time","{0:hh:mm:ss}")%>
						</td>
						<td width="8%" bgcolor="#EFEFEF" height="22" align="right"><%# DataBinder.Eval(Container.DataItem, "Hit") %></td>
						<td width="8%" bgcolor="#FFFFFF" height="22" align="right"><%# DataBinder.Eval(Container.DataItem, "ReplyCount") %></td>
						<td width="12%" bgcolor="#EFEFEF" height="22" align="left"><%# DataBinder.Eval(Container.DataItem, "Replier")%><br>
						</td>
					</tr>
				</ItemTemplate>
				<FooterTemplate>
					</table>
				</FooterTemplate>
			</asp:repeater>
			<form name="form1" action="Theme_List.aspx" id="form1" runat="server">
				<table border="0" width="98%" cellspacing="0" bgcolor="#bfe5d5"> <!--F0F0F0-->
					<tr>
						<td align="left" nowrap>
							<asp:DropDownList Width="130px" id="lstSort" Runat="server">
								<asp:ListItem Value="0">按更新时间排序</asp:ListItem>
								<asp:ListItem Value="1">按标题排序</asp:ListItem>
								<asp:ListItem Value="2">按发表人姓名排序</asp:ListItem>
								<asp:ListItem Value="5">按最新回复人排序</asp:ListItem>
								<asp:ListItem Value="3">按点击数排序</asp:ListItem>
								<asp:ListItem Value="4">按回复数排序</asp:ListItem>
							</asp:DropDownList>
							<asp:DropDownList Width="100px" id="lstDay" Runat="server">
								<asp:ListItem Value="0">今天</asp:ListItem>
								<asp:ListItem Value="3">三天以来</asp:ListItem>
								<asp:ListItem Value="7">一周以来</asp:ListItem>
								<asp:ListItem Value="30">一个月以来</asp:ListItem>
								<asp:ListItem Value="90" Selected>三个月以来</asp:ListItem>
								<asp:ListItem Value="365">一年以来</asp:ListItem>
							</asp:DropDownList>
							&nbsp;
							<asp:Button Runat="server" Text="检索" id="cmdGo" CssClass="but20"></asp:Button>
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
						</td>
					</tr>
				</table>
			</form>
		</center>
	</body>
</HTML>
