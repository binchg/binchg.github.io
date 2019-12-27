<%@ Page language="c#" Codebehind="CKLSHDAP.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.CKLSHDAP" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<HTML>
  <HEAD>
		<title>查看临时活动安排</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ChkVal()
			{
				try{
					var TheObjVal=document.all.Sel_XNXQ.value;
					if((TheObjVal=="")||(TheObjVal=="Nothing")){
						alert('需选定学年学期！');
						return false;
					}
					TheObjVal=document.all.Sel_YX.value;
					if((TheObjVal=="")||(TheObjVal=="Nothing")){
						alert('需选定院(系)/部！');
						return false;
					}
					return true;
				}catch(e){}
			}
			
			function Change(theID,str)
			{
				if(str=="hddd"){
					if(theID.checked){
						document.all.hddd.style.backgroundColor='#ffffff';
						document.all.hddd.disabled=false;
					}else{
						document.all.hddd.style.backgroundColor='#dcdcdc';
						document.all.hddd.disabled=true;
					}
				}
				if(str=="sqrq"){
					if(theID.checked){
						document.all.sqrq.style.backgroundColor='#ffffff';
						document.all.sqrq.disabled=false;
					}else{
						document.all.sqrq.style.backgroundColor='#dcdcdc';
						document.all.sqrq.disabled=true;
					}
				}
			}
		</script>
		<script language=vbscript>
			function chkdate(theID)
				if Not isDate(theID.value) then 
					call msgbox("须录入正确格式的时间！",64,"") 
       				theID.value=Date
					theID.select()
				end if
			end function
		</script>
		<LINK href="../_style/styles_Qry.css" type=text/css rel=stylesheet >
  </HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form action="CKLSHDAP_Rpt.aspx" name=form1 method=post target="frmRpt">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td vAlign="top" align="center" height="26">
					<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td vAlign="bottom" align="center"><b>查看临时活动安排</b></td>
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
							<td width="100%" height=28px>
								<table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
									<tr>
										<td align="left" width="34%" >学年学期&nbsp;<select name='Sel_XNXQ'  style='WIDTH:165px'><%=(new Base().SetValue("XNXQ"))%></select></td>
										<td align="left" width="34%" >院(系)/部&nbsp;<select name="Sel_YX" style="width:163px"><%=(new Base().GetYXInfo(USER_OPTYX))%></select></td>
										<td align="left" width="11%" ><input  name="chk_sqrq" type=checkbox onclick=Change(this,"sqrq")  value="1" >申请日期</td>
										<td align="left" width="13%" ><input name="sqrq" type=text style="width:90px" disabled  style="BACKGROUND-COLOR:#dcdcdc" value="<%=DateTime.Now.ToShortDateString()%>" onblur='chkdate(this)' maxlength=10></td>
										<td align=right width="8%"><input class="button" type="submit" name="submit" value="检索" onclick="return ChkVal()"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td width="100%" height=28px>
								<table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
									<tr><td align="left" width="11%" ><input  name="chk_hddd" type=checkbox onclick=Change(this,"hddd") value="1" >活动地点</td>
										<td align="left" width="35%" ><select name="hddd" style="width:208px" disabled style="BACKGROUND-COLOR:#dcdcdc"><%=(new Base().GetROOM())%></select></td>
										<td align="right" width="54%" nowrap><br></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td valign="bottom" align="center" height="100%">
					<iframe name="frmRpt" src="CKLSHDAP_Rpt.aspx" width="100%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
		</form>
	</body>
</HTML>