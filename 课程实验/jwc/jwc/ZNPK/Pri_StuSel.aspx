<%@ Page language="c#" Codebehind="Pri_StuSel.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.Pri_StuSel" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>教学安排表</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	<script language=javascript>
		function CkkZcVal(theID)
		{
			var Tstr1=theID.value.split(',');
			var Tstr2;
			//按＂,＂拆分字符串
			for (i=0;i<=Tstr1.length-1;i++){
				if((isNaN(Tstr1[i])) || (Tstr1[i]=="")){
					//按＂-＂拆分字符串
					Tstr2=Tstr1[i].split('-');
  					for(j=0;j<=Tstr2.length-1;j++){
						if((Tstr2.length>2)||(isNaN(Tstr2[j]))||(Tstr2[j]=="")||(Tstr2[j]<0)||(Tstr2[j].length>2)){
							if(Tstr2[j].length>2){
								alert('周次不能超过100！');
							}else{
								alert('请输入正确的周次！');
							}
							theID.value='1-18';return false;
						}
					}
				}
			}
			return true;
		}
		
		function ChkVal()
		{
			var TheObjVal=document.all.Sel_XNXQ.value;
			if((TheObjVal=="")||(TheObjVal=="Nothing")){
				alert('需选定学年学期！');
				return false;
			}else{
				return true;
			}
		}
	</script>
    </head>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>教学安排表</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
						<form name="form" method="post" action="Pri_StuSel_rpt.aspx" ID="Form" target="frmRpt">
								<tr>
									<td width="34%" height="28px">学年学期&nbsp;<select name='Sel_XNXQ'  style='WIDTH:165px'><%=(new Base().SetValue("STU_XNXQ"))%></select></td>
									<td width="19%">
										<input type="radio" name="rad" value=0 checked onClick='if(this.checked==true){this.value=0;window.document.all.sel_area.style.visibility="hidden";}'>格式一
		                            	<input type="radio" name="rad" onClick='if(this.checked==true){this.value=1;window.document.all.sel_area.style.visibility="";}'}>格式二
		                            </td>
									<td width="41%" id="sel_area" style="visibility:hidden" >
										<input value="1" name="zc_flag" type=checkbox onclick=if(this.checked){document.all.zc_input.disabled=false;document.all.zc_input.focus();}else{document.all.zc_input.disabled=true;}>
										周次&nbsp;<input type=text style="width:80px" name="zc_input" disabled onblur=CkkZcVal(this) value="1-18">
										排序&nbsp;<select name="px" style="width:98px"><option value=0>按课程/环节</option><option value=1>按时间</option></select>
									</td>
									<td width="6%" align="right"><input name="Submit01" type="submit" value="检索" class="button" onclick="return ChkVal()"></td>
								
								</tr>
						</form>
					</table>
				</td>
			</tr>
			
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="vfrmRpt" src="" style="DISPLAY:none" width="0" height="0" frameborder="0"></iframe>
					<iframe name="frmRpt" src="Pri_StuSel_rpt.aspx" width="99%" height="98%" frameborder="0"></iframe>
				</td>
			</tr>
		</table>
	</body>
</html>

