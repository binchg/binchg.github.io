<%@ Page %>
<%@ Import NameSpace="BLL.JXJH" %>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>查看课程/环节教学大纲</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language="javascript">
		function chkvalue()
		{
		var cddw;
		try{
 			cddw=document.all.sel_cddw.value;
			if((cddw=="")||(cddw=="Nothing")){alert('请选择承担单位！');return false;}
			return true;
		}
		catch(e){}
		}
		</script>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table align="center" width="660" border="0" cellpadding="0" cellspacing="0" height="100%">
		<tr><td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>查看课程/环节教学大纲</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" action="KCHJ_JXDG_rpt.aspx" target="frmRpt" method="post" onSubmit="return chkvalue()">
				<tr>
					<td valign="top" align="center" height="5%">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr height="20">
								<td width="10%" nowrap>承担单位</td>
								<td width="37%"><select name="sel_cddw" style='WIDTH:220px'><%Response.Output.Write((new private_JXJH()).SetValue("cddw",pSub.USER_OPTDW));%></select></td>
								<td width="28%" align="left" nowrap><span id="themc" style="COLOR:#000000">理论课程</span>&nbsp;
									<input name="kc" type="text" size="20" maxlength="40" title="输入名称可进行模糊检索"></td>
								<td width="35%" align="right" nowrap>&nbsp; <input type="submit" name="btn_search" value="检索" class="button">
									<!--input type="button" name="Print" value="打印" class=but20 -->
								</td>
							</tr>
							<tr>
								<td width="100%" colspan="4" align="left"><input type="radio" name="selrad" value="0" checked onClick="if(this.checked){window.themc.innerHTML='理论课程';}">理论课程&nbsp;
									<input type="radio" name="selrad" value="1" onClick="if(this.checked){window.themc.innerHTML='实践环节';}">实践环节</td>
							</tr>
						</table>
					</td>
				</tr>
			</form>
			<tr>
				<td valign="top" align="center" height="5%"><br>
					<DIV id="theHead" style='WIDTH: 99%'></DIV>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="frmRpt" src="KCHJ_JXDG_rpt.aspx" width="99%" height="93%" frameborder="0"></iframe>
				</td>
			</tr>
		</table>
		</td></tr>
		</table>
	</body>
</HTML>
