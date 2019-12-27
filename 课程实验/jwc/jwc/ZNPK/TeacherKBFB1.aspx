<%@ Page language="c#" Codebehind="TeacherKBFB1.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.TeacherKBFB1" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<html>
  <head>
    <title>教师课表</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	<script language="javascript" src="./Private/ind_PrintSet.js"></script>
	<script language="javascript">
			function ChkValue()
			{
				var vJS;
				try{
					vJS=document.all.Sel_JS.value;
					if((vJS=="")||(vJS=="Nothing")){
						alert('需选定教师！');
						return false;
					}else{
						form.method='post';
						form.action='TeacherKBFB_rpt1.aspx';
						form.target='frmRpt';
						form.submit();
						return true;
					}
				}catch(e){}
			}
			
			function ShowListValue(theID,vP)
			{
				var vXNXQ,theURL,vW;
				try{
					vXNXQ=document.all.Sel_XNXQ.value;
					if(vXNXQ!="")
					{
						theURL="./Private/List_"+vP+".aspx?xnxq="+vXNXQ+"&js="+theID.value+"&w="+vW;
						window.vfrmRpt.location.href=theURL;
					}
				}
				catch(e){}
			}
			function doPrint(){
				frmRpt.document.execCommand("Print",true);
			}
			function doPrint(){
				frmRpt.document.execCommand("Print",true);
			}
		</script>
    </head>
	<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form" method="post" action="TeacherKBFB_rpt1.aspx" onsubmit="return ChkValue()">
		<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>教师课表</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="26px">
					<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td width="34%">学年学期&nbsp;<select name='Sel_XNXQ'  style='WIDTH:165px'><%=(new Base().SetValue("XNXQ"))%></select></td>
							<td align=left><%=(new Base().SetValue("JS","220"))%></td>
							</tr>
							</table>
							<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
							<td width="21%" align="right">
								<input name="Submit01" type="submit" value="检索" class="button" onclick="return ChkValue()">
								<input class="button" onclick="Export()" type="button" value="导出" name="educe"> 	
								<input type="button" name="button" id="print"  value="打印" class=but20 onclick='doPrint()'>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="26px" align=left>
					<input type=radio checked name="type" value="1">&nbsp;格式一
					<input type=radio name="type" value="2">&nbsp;格式二
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="vfrmRpt" src="" style="DISPLAY:none" width="0" height="0" frameborder="0"></iframe>
					<iframe name="frmRpt" src="TeacherKBFB_rpt1.aspx" width="100%" height="99%" frameborder="1"></iframe>
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>
