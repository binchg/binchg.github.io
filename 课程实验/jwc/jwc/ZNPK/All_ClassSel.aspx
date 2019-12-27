<%@ Page language="c#" Codebehind="All_ClassSel.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.All_ClassSel" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<HTML>
  <HEAD>
		<title>全校课表[按班级]</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ChkVal()
			{
				try{
				}catch(e){}
			}
			
			function selnj(theID)
			{
				if(theID.checked){
					form1.Sel_NJ.disabled=false;
					}
				else{
					form1.Sel_NJ.disabled=true;
					form1.Sel_NJ.value='';
				}
			}
			
			function ShowListValue(theID,vP)
			{
				var vYXID,vNJ,vCHK,theURL;
				try{
					vYXID=document.all.Sel_YX.value;
					vNJ=document.all.Sel_NJ.value;
					if(document.all.chk.checked==false){vNJ="";}
					if(vYXID!="")
					{
						theURL="./Private/List_"+vP+".aspx?yx="+theID.value+"&nj="+vNJ;
						window.frm.location.href=theURL;
					}
				}
				catch(e){}
			}
		</script>
		<link href="../_style/styles_Qry.css" type=text/css rel=stylesheet >
  </HEAD>
	<body  oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="All_ClassSel_Rpt.aspx" method="post" target="frmRpt">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td vAlign="top" align="center" height="26">
					<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td vAlign="bottom" align="center"><b>全校课表[按班级]</b></td>
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
							<td height="28px" align="left" colspan=3>学年学期&nbsp;<select name='Sel_XNXQ'  style='WIDTH:165px'><%=(new Base().SetValue("XNXQ"))%></select></td>
							<td height="28px" align=right><input class="button" type="submit" name="submit" value="检索" ></td>
						</tr>
						<tr>
							<td width="4%"  height="28px"><input type="checkbox" name="chk" value='1' onClick="selnj(this)"></td>
							<td width="14%"  height="28px">年级&nbsp;<select name="Sel_NJ" style='WIDTH:52px' disabled>
							<option value="" selected></option><%=(new Base().SetValue("NJ",xnxq))%></select></td>
							<td width="60%"  align="left"  height="28px"><%=(new Base().SetValue("YXZY",USER_OPTYX))%></td>
							<td width="22%"  height="28px">&nbsp;校区&nbsp;<select name="Sel_XQXX" style="WIDTH:108px"><%=(new Base().GetXQInfo())%></select></td>
						</tr>
					</table>
				</td>
			</tr>		
								
			<tr>
				<td valign="bottom" align="center" height="100%">
					<iframe name="frmRpt" src="All_ClassSel_Rpt.aspx" width="100%" height="98%" frameborder="0">
					<iframe name="frm" src="" style="display:none;" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
		</form>
	</body>
</HTML>