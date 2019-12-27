<%@ Page language="c#" Codebehind="R_XJDA_FXXSMC.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.R_XJDA_FXXSMC" %>
<%@ Import NameSpace="BLL.XSXJ"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>辅修学生名册</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="javascript">
			function ShowListValue(theID,vP)
			{
				var theURL;
				var Sel_XNXQ;
				if(vP=="XNXQ_ZFXNJ")
				{
					var rad;
					if(theID.value==""||theID.value=="Nothing")
					{
						alert('需选定学年学期！');
					}
					else
					{
						if(document.all.radCx1.checked){rad="0";}else{rad="1";}
						theURL='./Private/List_XNXQ_ZFXNJ.aspx?xnxq='+theID.value+'&rad='+rad;
					}
				}
				else
				{
					Sel_XNXQ=document.all.Sel_XNXQ.value;
					theURL='./Private/List_XNXQ_ZFXNJZY.aspx?xnxq='+Sel_XNXQ+'&nj='+theID.value+'&rad='+vP;
				}
				window.frm.location.href=theURL;
			}
			
			function ChangRadState()
			{
				try{
					var theID=document.all.Sel_XNXQ;
					if(document.all.radCx1.checked){
						Area_ZXNJ.style.display='none';
						Area_FXNJ.style.display='';
					}else{
						Area_ZXNJ.style.display='';
						Area_FXNJ.style.display='none';
					}
					if(theID.value==""||theID.value=="Nothing"){
						alert('需选定学年学期！');
					}else{
						ShowListValue(theID,'XNXQ_ZFXNJ');}
				}catch(e){}
			}
		</script>
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="R_XJDA_FXXSMC_Rpt.aspx" target="frmRpt" method="post">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>辅修学生名册</b></td>
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
								<td width="34%" height="28">学年学期&nbsp;<select name="Sel_XNXQ" style="WIDTH:165px" onchange="ShowListValue(this,'XNXQ_ZFXNJ')">
										<option value="Nothing" selected>--------请选择--------</option>
										<%=(new XSXJ_Rpt().GetXNXQInfo())%>
									</select></td>
								<td align="left" height="28" width="60%" id="Area_FXNJ"><%=(new XSXJ_Rpt().SetValue("FXNJ_ZY",""))%></td>
								<td align="left" height="28" width="60%" id="Area_ZXNJ" style="DISPLAY:none"><%=(new XSXJ_Rpt().SetValue("ZXNJ_ZY",""))%></td>
								<td align="right" height="28" width="6%" nowrap><input class="button" type="submit" name="submit" value="检索"></td>
							</tr>
							<tr>
								<td colspan="4" height="28" align="left">
									<input type="radio" name="radCx" id="radCx1" value="0" checked onclick="ChangRadState()">分辅修年级/专业按主修年级/专业
									<input type="radio" name="radCx" id="radCx2" value="1" onclick="ChangRadState()">分主修年级/专业按辅修年级/专业
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="100%">
						<iframe name="frm" style="DISPLAY:none"></iframe><iframe name="frmRpt" src="R_XJDA_FXXSMC_Rpt.aspx" width="100%" height="98%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
