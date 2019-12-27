<%@ Page language="c#" Codebehind="Set_ExpeArrange.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Set_ExpeArrange" %>

<html>
  <head>
    <title>辅助安排实验</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	<script language=javascript>
		function SaveChkValue(){
			var i;
			var sysid;
			var sysnum;
			var zcjc;
			var chkobject;
			var timestr="";
			sysnum=frmRRpt.document.all.sysnum.value;
			for(i=0;i<sysnum;i++){
				eval("chkobject=frmRRpt.document.all.chk"+i+".checked");	
				eval("sysid=frmRRpt.document.all.chk"+i+".value");	
				eval("zcjc=frmRRpt.document.all.chk"+i+".zcjc");	
				if(chkobject==true){
					if(timestr=="")
						timestr=sysid+"@"+zcjc;
					else
						timestr+="|"+sysid+"@"+zcjc;
				}
			}
			if(timestr==""){
				alert('需选择"实验室→周次/节次"！');
				return false;
			}else{
				if(confirm("是否保存？")){
					document.all.expetime.value=timestr;
					form1.target='hiddenFrm';
					form1.action='Set_ExpeArrange_Datarpt.aspx?flag=save';
					form1.submit();
					return true;
				}
			}
		}
		
		function DelChkValue()
		{
			var i;
			var object;
			var deldata="";
			var num=window.frmRpt.document.all.recordnum.value;
			for(i=0;i<num;i++){
				eval("object=frmRpt.document.all.chk"+i);	
				if(object.checked){
					if(deldata=="")
						deldata=object.value;
					else
						deldata+="|"+object.value;
				}
			}
			if(deldata!=""){
				if(confirm("是否取消？")){
					document.all.deldata.value=deldata;
					form1.target='hiddenFrm';
					form1.action='Set_ExpeArrange_Datarpt.aspx?flag=del';
					form1.submit();
				}
			}
		}
		
		
	</script>
  </head>
  <body  onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
	<form name="form1" method="post" action="Set_ExpeArrange_rpt.aspx" target=frmRpt>
	<table width="660px" border="0" cellspacing="0" cellpadding="0" height="100%" align=center >

		<tr><td valign="top" align="center">
			<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>辅助安排实验</b></td></tr>
			<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
			</td></tr>
			</table>   
		</td></tr>

		<tr><td height=24px><%=timestr%></td></tr>
		
		<tr><td height="55%">
			<table width=100% height="100%" border=0 cellpadding=0 cellspacing=0>
				<tr><td align="left" width=55%  height="16px" valign=bottom>待安排课程→上课班级→实验项目</td>
					<td height="16px" style="width:3px">&nbsp;</td>
					<td align="left" width=55%  height="16px" valign=bottom>可安排实验室→周次/节次</td>
				</tr>
				
				<tr>
					<td width=55% height=100% align=left >
						<iframe name=frmLRpt src="Set_ExpeArrange_Lrpt.aspx?xn=<%=xn%>&xq=<%=xq%>" width=100% height=99% frameborder=1></iframe>
					</td>
					<td height=100% style="width:3px">&nbsp;</td>
					<td width=45% height=100% align=left >
						<iframe name=frmRRpt src="Set_ExpeArrange_Rrpt.aspx" width=100% height=99% frameborder=1></iframe>
					</td>
				</tr>
			</table> 
		</td></tr>
		
		<tr><td height=26px align=right>
			<table width=100%  border=0 cellpadding=0 cellspacing=0><tr>
			<td width=85% align=left >指导教师&nbsp;<%=vSelectHTML%></td>
			<td width=15% align=right >
				<input type=button class=but20 name="savebut" value="保存" onclick="return SaveChkValue()">
				<input type=button class=but20 name="delbut" value="取消" onclick="return DelChkValue()" disabled>
			</td>
			</tr></table>
		</td></tr>
		
		<tr><td align="left" height="16px" valign=bottom>已安排课程→上课班级→实验项目</td></tr>
		<tr><td align="left" height="16px" valign=bottom><div style="width:100%" id="yapHead" ></div></td></tr>
		
		<tr><td valign="top" align="left" height="45%">
			<iframe name=hiddenFrm src=""  frameborder=1 style="display:none" height=100px width=100% ></iframe>
			<iframe name=frmRpt src="Set_ExpeArrange_rpt.aspx?xn=<%=xn%>&xq=<%=xq%>" width=100% height=99% frameborder=1></iframe>
			
			<input type=hidden name='xn' value='<%=xn%>'>
			<input type=hidden name='xq_id' value='<%=xq%>'>
			<input type=hidden name='kcid' value=''>
			<input type=hidden name='skbj' value=''>
			<input type=hidden name='skbjrs' value=''>
			<input type=hidden name='t_js' value=''>
			<input type=hidden name='t_apxs' value=''>
			<input type=hidden name='expeitemskbj' value=''>
			<input type=hidden name='expetime' value=''>
			<input type=hidden name='deldata' value=''>
		</td></tr> 
	</table>
	</form>
   </body>
</html>
