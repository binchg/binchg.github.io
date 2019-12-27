<%@ Page language="c#" Codebehind="Set_LabExpeItem_Time.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Set_LabExpeItem_Time" %>
<html>
  <head>
    <title>分实验室确定实验项目可安排周次/节次</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
	<script language="javascript" >
		function SeachSYXM()
		{
			
			var xn;
			var xq;
			var sysid;
			var theURL;
			
			xn=document.all.xn.value;
			xq=document.all.xq.value;
			sysid=document.all.Sel_SYS.value;
			if(sysid==""||sysid=="Nothing"){
				alert('需选择实验(分)室！');
			}
			theURL='Set_LabExpeItem_Time_Lrpt.aspx?xn='+xn+'&xq='+xq+'&sysid='+sysid;
			window.frmLRpt.location.href=theURL;
		}
		
		function ShowListValue(theID,vP)
		{
			var vYX,theURL;
			try{
				vYX=document.all.Sel_YX.value;
				if(vYX!=""&&vYX!="Nothing")
				{
					theURL="./Private/List_"+vP+".aspx?yx="+vYX;
					window.vfrmRpt.location.href=theURL;
				}
			}
			catch(e){}
		}
	</script>
  </head>
  <body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  onselectstart=window.event.returnValue=false
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<form name="form1" id="form1" method="post" action="Set_LabExpeItem_Time_Left.aspx">
	<table width="660px" border=0 cellspacing="0" cellpadding="0" height="100%" align="center" >
		<tr><td valign="top" align="center"  colspan="2" >
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>分实验室确定实验项目可安排周次/节次</b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
			</table>   
		</td></tr>

		<!--查询区域-->           
		<tr>
		<td valign="top" align="center" height="26px" width="100%" colspan="2" nowrap>
			<table width="99%" border=0 cellspacing="0" cellpadding="0" align="center" height="26px">
				<tr> 
					<td width="94%" align="left"><%=(new BLL.ZNPK.Base().SetValue("YX_SYS",USER_OPTYX))%></td>
					<td width="6%" align="right"><input type=button name=seach value="检索" class="button" onclick="SeachSYXM()"></td> 
				</tr>
			</table>     
		</td></tr>
		
		<tr><td  width="40%" align="left" height="95%" >
			<iframe name="frmLRpt" src="Set_LabExpeItem_Time_Lrpt.aspx" width=100% height=99% frameborder=1></iframe></td>
			<td  width="60%" align="right" height="95%" >
			<iframe name="frmRRpt" align=center src="Set_LabExpeItem_Time_Rrpt.aspx" width=99% height=99% frameborder=1></iframe></td>
			<iframe name="vfrmRpt" scr="" style="display:none;" frameborder=0></iframe>
		</tr>
		<input type="hidden" name="xn" value="<%=vXN%>">
		<input type="hidden" name="xq" value="<%=vXQ%>">
	</table>
	</Form>
</body>
</html>
