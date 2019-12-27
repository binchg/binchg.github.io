<%@ Page language="c#" Codebehind="R_ZXBY_JYXSMC.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.R_ZXBY_JYXSMC" %>
<%@ Import NameSpace="BLL.XSXJ"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>结业学生名册</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ShowListValue(theID,vP)
			{
				var vNJ,vYX,vZY,vXZBJ,theURL;
				try{
					if(vP=="YXZY")
					{
						vYX=document.all.Sel_YX.value;
						vNJ=document.all.Sel_NJ.value;
						if(!document.all.ChkNJ.checked){vNJ="";}
						theURL="./Private/List_WNJYXZY.aspx?yx="+vYX+"&nj="+vNJ+"&w=130";
					}
					else if(vP=="ZYBJ")
					{
						vZY=document.all.Sel_ZY.value;
						vNJ=document.all.Sel_NJ.value;
						if(!document.all.ChkNJ.checked){vNJ="";}
						theURL="./Private/List_W"+vP+".aspx?zy="+vZY+"&nj="+vNJ+"&w=140";
					}
					window.frm.location.href=theURL;
				}
				catch(e){}
			}
			
			function ChageValue(theID)
			{
				try{
					if(theID.checked)
					{
						document.all.Sel_NJ.disabled=false;
					}
					else
					{
						document.all.Sel_NJ.disabled=true;
					}
				}
				catch(e){}
			}
			
			function ChkValue()
			{
				var vYX,vZY;
				try{
					vYX=document.all.Sel_YX.value;
					vZY=document.all.Sel_ZY.value;
					if((vYX=="")||(vYX=="Nothing"))
					{
						alert('需选定院(系)/部！');return false;
					}
					else{return true;}
				}
				catch(e){}
			}
		</script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="R_ZXBY_JYXSMC_Rpt.aspx" target="frmRpt" method="post" onsubmit='return ChkValue()'>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>结业学生名册</b></td>
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
								<td align="left" colspan=2  height="28px"><%=(new  XSXJ_Rpt().SetValue("chkNJYXZYBJ",XNXQ,USER_OPTYX))%></td>
							</tr>
							<tr>
								<td width="94%" align=left height="28px">毕业年届&nbsp;<select name="Sel_BYNJ" style="WIDTH:60px"><%=(new XSXJ_Rpt().GetBYNJInfo())%></select></td>
								<td align="right" width="6%" nowrap  height="28px"><input class="button" type="submit" name="submit" value="检索"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="100%">
					<iframe name=frm  style='display:none;'></iframe>
						<iframe name="frmRpt" src="R_ZXBY_JYXSMC_Rpt.aspx" width="100%" height="98%" frameborder="0"></iframe>
						
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
