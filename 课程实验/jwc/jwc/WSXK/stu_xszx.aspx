
<%@ Page language="c#" Codebehind="stu_xszx.aspx.cs" AutoEventWireup="false" Inherits="JWNET.WSXK.stu_xszx" %>
<%@ Import NameSpace="BLL.WSXK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>正选</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
		<script language="JavaScript" type="text/JavaScript">
			//触发并更新级联列表框的数据
			function showListWSXK(thisID,vT){
				var vID=thisID.value;
				vURL='../WSXK/Private/List_WSXK_NJZY.aspx?id='+vID+'&xklb='+vT;
				window.WSXK_NJZY.document.location.href=vURL;
			}
		</script>
	</HEAD>
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<form name="form1" action="stu_xszx_rpt.aspx" method="post" target="frmRpt">
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td vAlign="top" align="center">
						<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td vAlign="bottom" align="center"><b>正选</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<%if(seacher_flag=="show"){%>
				<tr>
					<td align="center" height="28">
					<iframe name=WSXK_NJZY src='' frameborder=0 style='display:none;'></iframe>
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td align="left" width="60" nowrap>课程范围</td>
								<td align="left" width="150" ><%=(new Private_Base().GetXKLX(wsxk_id))%></td>
								<td align="left" width="360px" id="theZY"><select name=SelSpeciality style='height:20px;width:240'></select></td>
								<td align="right" width="90"><input class="button" type="submit" value="检索" name="Submit" disabled>
								<input class="button" type="button" name="submit" value="提交" onclick="frmRpt.document.all.Submit.onclick()" disabled ></td>
							</tr>
						</table>
					</td>
				</tr>
				<%}%>
				<tr>
					<td height="28">
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td align="left" width="60" nowrap>学年学期：</td>
								<td align="left" width="135" nowrap><%=xnxqstr%><br>
								</td>
								<td align="left" width="60" nowrap>时间区段：</td>
								<td align="left"><%=timestr%><br>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td vAlign="bottom" align="center" height="90%">
						<iframe name="frmRpt" src="stu_xszx_rpt.aspx" frameBorder="0" width="100%" height="98%">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
