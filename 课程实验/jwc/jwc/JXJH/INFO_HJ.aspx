<%@ Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
string [] info;
private void Page_Load(object sender,System.EventArgs e)
{
	string vKC="";
	try{ vKC=Request["id"].ToString().Trim();}catch(Exception){};
	try{
		info=(new private_JXJH(this)).Info_HJ(vKC);
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
}
</script>
<html>
	<head>
		<title>[教学计划]—环节信息</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language="javascript" src="../sys/DisabledTheKey.js"></script>
	</head>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" topmargin='0' leftmargin='0'>
		<table border="0" width="100%" height="100%">
			<tr>
				<td valign="middle" align="center" height="224" width="527">
					<table border="1" width="450" height="100" align="center" CELLPADDING="0" CELLSPACING="0"
						bordercolorlight="#75a7ae" bordercolordark="#ffffff">
						<tr align="center" class="T">
							<td width="82%" colspan="4">环节信息</td>
						</tr>
						<%try{%>
						<tr class="B" height="20">
							<td width="10%" nowrap>环节代码</td>
							<td width="40%" class="BT"><%=info[0]%><br>
							</td>
							<td width="1%" nowrap>承担单位</td>
							<td width="60%" class="BT"><%=info[5]%><br>
							</td>
						</tr>
						<tr class="H" height="20">
							<td width="10%" nowrap>中文名称</td>
							<td width="40%" class="BT"><%=info[7]%><br>
							</td>
							<td width="1%" nowrap>英文名称</td>
							<td width="60%" class="BT"><%=info[2]%><br>
							</td>
						</tr>
						<tr class="B" height="20">
							<td width="10%" nowrap>环节类别</td>
							<td width="40%" class="BT"><%=info[1]%><br>
							</td>
							<td width="1%" nowrap>学 &nbsp;&nbsp;&nbsp;分</td>
							<td width="60%" class="BT"><%=info[3]%><br>
							</td>
						</tr>
						<tr class="H" height="20">
							<td width="10%">周 &nbsp;&nbsp;&nbsp;数</td>
							<td width="30%" class="BT" align="top"><%=info[4]%><br>
							</td>
							<td width="10%" class="BT" align="top"><br>
							</td>
							<td width="50%" class="BT" align="top"><br>
							</td>
						</tr>
						<tr class="B" height="100">
							<td width="10%">内容简介</td>
							<td width="90%" colspan="3" class="BT" align="top">
							<div style="overflow:auto;height:100;width:100%"><%=info[6]%></div><br>
							</td>
						</tr>
						<%}catch(Exception ex){Response.Output.Write(ex.Message.ToString());Response.End();}%>
						<tr align="center"  class="T">
							<td width="82%" colspan="4"><br>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="bottom" align="center" height="14" width="527">
					<p align="center"><a href='' onclick="top.close()">【关闭窗口】</a></p>
				</td>
			</tr>
		</table>
	</body>
</html>
