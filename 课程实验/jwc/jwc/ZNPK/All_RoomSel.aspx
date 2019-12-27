<%@ Page language="c#" Codebehind="All_RoomSel.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.All_RoomSel" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<HTML>
  <HEAD>
		<title>全校课表[按教室]</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function Change(theID,str)
			{
				if(str=="lf")
				{
					if(theID.checked)
					{
						document.all.Sel_LF.style.backgroundColor='#ffffff';
						document.all.Sel_LF.disabled=false;
					}
					else
					{
						document.all.Sel_LF.style.backgroundColor='#dcdcdc';
						document.all.Sel_LF.disabled=true;
					}
				}
				if(str=="jslx")
				{
					if(theID.checked){
						document.all.Sel_JSLX.style.backgroundColor='#ffffff';
						document.all.Sel_JSLX.disabled=false;
					}
					else{
						document.all.Sel_JSLX.style.backgroundColor='#dcdcdc';
						document.all.Sel_JSLX.disabled=true;
					}
				}
			}
		</script>
		<LINK href="../_style/styles_Qry.css" type=text/css rel=stylesheet >
  </HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form action="All_RoomSel_Rpt.aspx" method="post" target="frmRpt">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td vAlign="top" align="center" height="26">
					<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td vAlign="bottom" align="center"><b>全校课表[按教室]</b></td>
						</tr>
						<tr>
							<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
						</tr>
					</table>
				</td>
			</tr>
		
			<tr>
				<td height="56px">
					<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr>
							<td width="34%" height="28px" >学年学期&nbsp;<select name='Sel_XNXQ'  style='WIDTH:165px'><%=(new Base().SetValue("XNXQ"))%></select></td>
							<td width="25%" height="28px" >校区&nbsp;<select name="Sel_XQXX" style="WIDTH:136px"><%=(new Base().GetXQInfo())%></select></td>
							<td width="33%" height="28px" ><input  name="chk_lf" type=checkbox onclick=Change(this,"lf")  value="1" >楼房&nbsp;<select name="Sel_LF" style="width:165px"  disabled style="BACKGROUND-COLOR:#dcdcdc"><%=(new Base().GetLFInfo(""))%></select></td>
							<td width="6%"  height="28px" align=right><input class="button" type="submit" name="submit" value="检索" ></td>
						</tr>
						<tr>
							<td width="34%" height="28px" ><input  name="chk_jslx" type=checkbox onclick=Change(this,"jslx")  value="1" >教室类型&nbsp;<select name="Sel_JSLX" style="width:145px"  disabled style="BACKGROUND-COLOR:#dcdcdc"><%Response.Output.Write((new BLL.include.ind_subPublic()).PutValue("jslx","ALL"));%></select></td>
							<td width="67%" height="28px" colspan=3><br></td>
						</tr>
					</table>
				</td>
			</tr>		
						
			<tr>
				<td valign="bottom" align="center" height="100%">
					<iframe name="frmRpt" src="All_RoomSel_Rpt.aspx" width="100%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
		</form>
	</body>
</HTML>