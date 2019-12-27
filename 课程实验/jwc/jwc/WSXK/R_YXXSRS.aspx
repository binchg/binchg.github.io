<%@ Page language="c#" Codebehind="R_YXXSRS.aspx.cs" AutoEventWireup="false" Inherits="JWNET.WSXK.R_YXXSRS" %>
<%@ Import NameSpace="BLL.WSXK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>预选学生人数</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ShowListValue(theID,vP)
			{
				var vNJ,vYX,vZY,vXZBJ,vCDDW,theURL;
				try{
					if(vP=="YXZY")
					{
						vYX=document.all.Sel_YX.value;
						vNJ=document.all.Sel_NJ.value;
						if(!document.all.ChkNJ.checked){vNJ="";}
						theURL="./Private/List_"+vP+".aspx?yx="+vYX+"&nj="+vNJ;
					}
					else if(vP=="ZYBJ")
					{
						vZY=document.all.Sel_ZY.value;
						vNJ=document.all.Sel_NJ.value;
						if(!document.all.ChkNJ.checked){vNJ="";}
						theURL="./Private/List_"+vP+".aspx?zy="+vZY+"&nj="+vNJ;
					}
					else if(vP=="CDDWKC")
					{
						vCDDW=document.all.Sel_CDDW.value;
						if(vCDDW!=""){theURL="./Private/List_"+vP+".aspx?cddw="+vCDDW;}
					}
					window.vfrmRpt.location.href=theURL;
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
				var vYX,vZY,vRpt,vCDDW;
				try{
					vRpt=document.all.rpt.value;
					if(vRpt=="0")
					{
						vCDDW=document.all.Sel_CDDW.value;
						if((vCDDW=="")||(vCDDW=="Nothing"))
						{
							alert('请选择承担单位!');return false;
						}
						else{return true;}
					}
					else
					{
						vYX=document.all.Sel_YX.value;
						vZY=document.all.Sel_ZY.value;
						if((vYX=="")||(vYX=="Nothing"))
						{
							alert('请选择院(系)/部!');return false;
						}
						else if((vZY=="")||(vZY=="Nothing"))
						{
							alert('请选择专业!');return false;
						}
						else{return true;}
					}
				}
				catch(e){}
			}
			
			function SelBe(theID)
			{
				var s=theID.value;
				try{
					if(s=='0'){
						Dis1.style.display='';
						Dis2.style.display='none';
						document.all.rpt.value='0';}
					else{
						Dis1.style.display='none';
						Dis2.style.display='';
						document.all.rpt.value='1';}
				}
				catch(e){}
			}
		</script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
		<form name="form1" method="post" action="R_YXXSRS_rpt.aspx" target="main" onsubmit="return ChkValue()">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td valign="top" align="center">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td valign="bottom" align="center"><b>预选学生人数</b></td>
							</tr>
							<tr>
								<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="top" align="center" height="5%">
						<table width="662" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td  align="left" height="26" width="34%"><%=(new Private_Base().SetValue("XKXNXQ",""))%></td> 
								<td align="left" width="56%">
									<input type="radio" name="Qry_Add" value="0" checked onclick=SelBe(this)>分课程按任课教师
									<input type="radio" name="Qry_Add" value="1"  onclick=SelBe(this)>分年级/专业/班级按课程
									<input name="rpt" type="hidden" value="0">
								</td>
								<td align="right" width="10%"><input name="submit" type="submit" id="submit" value="检索" class="button"></td>
							</tr>
							<tr id="Dis1" style="display:_none;" >
								<td align="left" height="26" width="100%" colspan=3><%=(new Private_Base().SetValue("CDDWKC",USER_OPTDW))%></td>
							</tr>
							<tr id="Dis2" style="display:none;">
								<td align="left" height="26" width="100%" colspan=3><%=(new Private_Base().SetValue("NJYXZYBJ",XNXQ,USER_OPTYX))%></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="5%"><DIV id="theHead" style="WIDTH: 99%"></DIV>
					</td>
				</tr>
				<tr>
					<td valign="top" align="center" height="100%">
						<iframe name="main" src="R_YXXSRS_rpt.aspx" width="99%" height="98%" frameborder="0">
						</iframe><iframe name="vfrmRpt" src="" style="DISPLAY:none;WIDTH:0px;HEIGHT:0px" frameborder="0">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>



