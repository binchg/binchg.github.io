<%@ Import NameSpace="BLL.XSXJ"%>
<%@ Page language="c#" Codebehind="R_XJDA_ZXXSMC.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.R_XJDA_ZXXSMC" %>
<HTML>
	<HEAD>
		<title>在校学生名册</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">		
		<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
		<script language="javascript">
			function ShowListValue(theID,vP)
			{
				var vNJ,vYX,vZY,vXZBJ,theURL;
				try{
					if(vP=="NJYXZY")
					{
						vYX=document.all.Sel_YX.value;
						vNJ=document.all.Sel_NJ.value;
						theURL="./Private/List_"+vP+".aspx?yx="+vYX+"&nj="+vNJ;
					}else if(vP=="ZYBJ"){
						vZY=document.all.Sel_ZY.value;
						vNJ=document.all.Sel_NJ.value;
						theURL="./Private/List_"+vP+".aspx?zy="+vZY+"&nj="+vNJ;
					}else if(vP=="XNXQ_NJ"){
						vXNXQ=document.all.Sel_XNXQ.value;
						theURL="./Private/List_"+vP+".aspx?xnxq="+vXNXQ+"&str=shownj";
					}
					window.frm.location.href=theURL;
				}
				catch(e){}
			}
			
			function ChkVal()
			{
				var vNJ,vYX,vZY,vBJ
				try{
					vNJ=document.all.Sel_NJ.value;
					vYX=document.all.Sel_YX.value;
					vZY=document.all.Sel_ZY.value;
					vBJ=document.all.Sel_BJ.value;
					if(vNJ==""||vNJ=="Nothing"){alert('需选定年级！');return false;}
					if(vYX==""||vYX=="Nothing"){alert('需选定院(系)/部！');return false;}
					if(vZY==""||vZY=="Nothing"){alert('需选定专业！');return false;}
					if(vBJ==""||vBJ=="Nothing"){alert('需选定班级！');return false;}
					return true;
				}
				catch(e){}
			}
			function doPrint(){ 
				frmRpt.document.execCommand("Print",true);
			}		
		</script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" onselectstart="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" leftMargin="0" topMargin="0" marginheight="0"
		marginwidth="0" onsource="window.event.returnValue=false">
		<form name="form1" onsubmit="return ChkVal()" action="R_XJDA_ZXXSMC_Rpt1.aspx" method="post"
			target="frmRpt">
			<FONT face="宋体">-</FONT>
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td vAlign="bottom" align="center"><b>在校学生名册</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center">
									<script language="JavaScript">Draw_HR('99.5%')</script>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="56">
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td align="left" colSpan="2" height="28"><%=(new  XSXJ_Rpt().SetValue("NJYXZYBJ",XNXQ,USER_OPTYX))%></td>
							</tr>
							<tr>
								<td align="left" width="94%" height="28">学年学期&nbsp;<select style="WIDTH: 165px" onchange='ShowListValue(this,"XNXQ_NJ")' name="Sel_XNXQ"><%=(new XSXJ_Rpt().GetXNXQInfo())%></select>
									培养层次&nbsp;<select style="WIDTH: 100px" name="Sel_PYCC"><%=(new XSXJ_Rpt().GetPYCCInfo())%></select>
								</td>
								<td noWrap align="right" width="12%" height="28"><input class="button" type="submit" value="检索" name="submit">
									<input class="but20" id="print" onclick="doPrint()" type="button" value="打印" name="button">
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td vAlign="top" align="center" height="26"></td>
				</tr>
				<tr>
					<td vAlign="bottom" align="center" height="100%"><IFRAME name="frmRpt" src="R_XJDA_ZXXSMC_Rpt1.aspx" frameBorder="1" width="100%" height="98%">
						</IFRAME><IFRAME style="DISPLAY: none" name="frm"></IFRAME>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
