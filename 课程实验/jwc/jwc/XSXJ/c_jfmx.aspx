<%@ Page CodeBehind="c_jfmx.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.c_jfmx" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="BLL.include" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>c_jfmx</title>
		<%
XSXJ_XSDA pSub=new XSXJ_XSDA(this);
%>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<TBODY>
				<tr>
					<td valign="top" align="center" colspan="3">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td valign="bottom" align="center"><b>学生交费明细</b></td>
							</tr>
							<tr>
								<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<form name="form1" method="post" action="c_jfmx_rpt.aspx" target="main">
					<tr>
						<td valign="top" align="center" height="24" id="objCx">
							<!--  简单查询表单  -->
							<table width="660" border="0" id="tblJbcx">
								<tr>
									<td width="25%"><%=(new XSXJ_XSDA().SetValue("YXZYBJ",pSub.USER_OPTYX))%>
										姓名&nbsp;<input name="sel_xm" type="text" size="6" maxlength="10"></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<!--  查询方式选择及查询按钮  -->
							<table width="660" border="0" align="center">
								<TBODY>
									<tr>
										<td align="left"> <!--<input type="radio" name="chkCxfs" value=0 checked onclick="swapCxtbl(this.value)">基本查询&nbsp;&nbsp; 
            <INPUT onclick=swapCxtbl(this.value) type=radio value=1 
            name=chkCxfs>高级查询&nbsp;&nbsp;  --></TD>
          <TD align=right width="10%"><INPUT class=button type=submit value=检索 name=btn_search><!--onclick=checkCFTJ();--> </TD></TR></TBODY></TABLE></TD></TR></FORM>
  <TR>
    <TD vAlign=top align=middle height="5%"><BR>
      <DIV id=theHead style="WIDTH: 100%"></DIV></TD></TR>
  <TR>
    <TD vAlign=top align=middle height="100%"><IFRAME name=main 
      src="c_jfmx_rpt.aspx" frameBorder=0 width="100%" 
  height="95%"></IFRAME></TD></TR></TBODY></TABLE></BODY></HTML>
