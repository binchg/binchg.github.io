<%@ Page language="c#" Codebehind="R_HDXW_CKWTGXWSH.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.R_HDXW_CKWTGXWSH" %>
<%@ Import NameSpace="BLL.XSXJ"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>查看未通过学位审核学生</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language=javascript >
			function ShowListValue(theID,vP)
			{
				var vYXID,theURL;
				try{
					vYXID=theID.value;
					if(vYXID!="")
					{
						theURL="./Private/List_"+vP+".aspx?yx="+theID.value;
						window.frm.location.href=theURL;
					}
				}
				catch(e){}
			}
			function ChkVal()
			{
				var TheObjVal=document.all.Sel_YX.value;
				if((TheObjVal=="")||(TheObjVal=="Nothing")){
					alert('需选定院(系)/部！');
					return false;
				}else{
					return true;
				}
			}
		</script>
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="R_HDXW_CKWTGXWSH_Rpt.aspx" target="frmRpt" method="post">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>查看未通过学位审核学生</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="56">
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td width="17%" height=28px>毕业年届&nbsp;<select name="Sel_BYNJ" style="WIDTH:55px"><%=(new XSXJ_Rpt().GetBYNJInfo())%></select></td>
								<td width="60%" height=28px><%=(new XSXJ_Rpt().SetValue("YXZY",USER_OPTYX))%></td>
								<td align="right" width="23%" nowrap height=28px><input type=radio name=rad value="0" checked>格式一
								<input type=radio name=rad value="1">格式二</td>
							</tr>
							<tr>
								<td align="right" colspan=3 height=28px><input class="button" type="submit" name="submit" value="检索"  onclick="return ChkVal()"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="100%">
						<iframe name="frmRpt" src="R_HDXW_CKWTGXWSH_Rpt.aspx" width="100%" height="98%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>