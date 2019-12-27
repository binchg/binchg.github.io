<%@ Page language="c#" Codebehind="KBFB_DayJCSel.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.KBFB_DayJCSel" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>周/日/节次课表</title>
		<meta name="vs_snapToGrid" content="False">
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="JavaScript" >
			function ChkValue(){
				var vXNXQ;
				try{
					vXNXQ=document.all.Sel_XNXQ.value;
					if((vXNXQ=="")||(vXNXQ=="Nothing")){
						alert('需选定学年学期！');
						return false;
					}else{
						return true;
					}
				}catch(e){}
			}
			
			function doPrint(){
				frmRpt.document.execCommand("Print",true);
			}
			</script>
	</HEAD>
	<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" method="post" action="KBFB_DayJCSel_rpt.aspx" target="frmRpt"  onsubmit="return ChkValue()">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td valign="top" align="center">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td valign="bottom" align="center"><b>周/日/节次课表</b></td>
							</tr>
							<tr>
								<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
							
							<tr>
								<td width="100%" height="26">
									<table width="662" border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td width=220px>学年学期&nbsp;<select  name="Sel_XNXQ" style='WIDTH:165px'><%=(new Base().SetValue("XNXQ"))%></select></td>
											<td width=101px align=center><%=(new Base().SetValue("ZC"))%></td>
											<td width=100px align=center>
												星期&nbsp;<select name="selxqs" style="WIDTH:65px">
													<option value="1" selected>星期一</option>
													<option value="2">星期二</option>
													<option value="3">星期三</option>
													<option value="4">星期四</option>
													<option value="5">星期五</option>
													<option value="6">星期六</option>
													<option value="7">星期日</option>
												</select>
											</td >
											<td  width="110px" ><%=(new Base().SetValue("JC"))%></select>
											</td>
											<td width="125px" id="theXQ">校区&nbsp;<select name="Sel_XQXX" style="WIDTH:95px"><%=(new Base().GetXQInfo())%></select></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="100%" height="26">
									<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td><input type="radio" name="rad" id="rad1" onClick='if(this.checked==true){this.value=1;window.document.all.Sel_ZC.disabled=false;window.document.all.Sel_JC.disabled=true;window.document.all.selxqs.disabled=true;}'>周课表&nbsp;&nbsp;
												<input type="radio" name="rad" id="rad2" onClick='if(this.checked==true){this.value=2;window.document.all.Sel_ZC.disabled=false;window.document.all.Sel_JC.disabled=true;window.document.all.selxqs.disabled=false;}'>日课表&nbsp;&nbsp;
												<input type="radio" name="rad" id="rad3" value="3" checked onClick='if(this.checked==true){this.value=3;window.document.all.Sel_ZC.disabled=false;window.document.all.Sel_JC.disabled=false;window.document.all.selxqs.disabled=false;}'>节次课表</td>
											<td align="right"><input name="Submit01" type="submit" value="检索" class="button">
											<input type="button" name="button" id="print"  value="打印" class=but20 onclick='doPrint()' ></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			
				<tr>
					<td valign="top" align="center" height="100%">
						<iframe name="frmRpt" src="KBFB_DayJCSel_rpt.aspx" width="99%" height="98%" frameborder="1"></iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
