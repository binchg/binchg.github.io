<%@ Page language="c#" Codebehind="Tea_ArrangeExpe_SelTimeDialog.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Tea_ArrangeExpe_SelTimeDialog" %>
<HTML>
	<HEAD>
		<title>安排周次/节次</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			var MouseOverBgColor='#A1D0b8';
			var MouseOutBgColor='#DDF2E6';
			function onMouseOver_TD(Object){	
				Object.style.backgroundColor=MouseOverBgColor;
			}
			
			function onMouseOut_TD(Object){
				Object.style.backgroundColor=MouseOutBgColor;
			}
			
			function onMouseDown_TD(Object){	
				Object.style.borderStyle='inset';
			}
			
			function onMouseUp_TD(Object){	
				Object.style.borderStyle='outset';
			}
			
			function onClickTD(Object,clickID){
				var i;
				var zccount=document.all.zccount.value;
				for(i=1;i<=zccount;i++){
					if(i==clickID){
						eval("document.all.layer"+i+".style.display='';");
					}
					else{
						eval("document.all.layer"+i+".style.display='none';");
					}
				}
			}
			
			function ChkValue(){
				var i,j,k;
				var ChkBoxObject;
				var ZC;
				var ZCJC="";
				var zccount=document.all.zccount.value;
				if(zccount>=10)alert('正在处理数据，请稍后...');
				for(i=1;i<=zccount;i++){
					eval("ZC=document.all.zc"+i+".value");
					for(j=1;j<8;j++){
						for(k=1;k<8;k++){
							eval("ChkBoxObject=document.all.Z"+i+"K"+j+"J"+k);
							if(ChkBoxObject.checked){
								if(ZCJC=="")
									ZCJC="Z"+ZC+"K"+k+"J"+j;
								else
									ZCJC+=";Z"+ZC+"K"+k+"J"+j;
							}
						}
					}
				}
				if(ZCJC==""){
					alert('需选择周次/节次！');
				}else{
					window.returnValue=ZCJC;
					window.close();
				}
			}
		</script>
		<style> td.button{ width:50px; height:9px; cursor:hand; border-style:outset; border-width:2px; background-color:#DDF2E6; padding-left:5px; }
	td.head{ height:20px; background-color:#C5E3D4; }
		</style>
		<!--C5E3D4onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"-->
	</HEAD>
	<body 
		leftMargin="0" topMargin="0" marginheight="0" marginwidth="0" scroll="no">
		<table width="98%" height="99%" border="0" cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td width="100%" style="HEIGHT:5px" nowrap colspan=2></td>
			</tr>
			<tr>
				<td width="100%"  colspan=2><hr style="COLOR:#000000" size="1" >
				</td>
			</tr>
			<tr>
				<td width="100%" align="left"  valign="top" height="20%"  colspan=2><asp:Panel ID="zcRpt" Runat="server"></asp:Panel></td>
			</tr>
			<tr>
				<td width="100%" align="left" valign="top" height="200" nowrap  colspan=2><asp:Panel ID="jcRpt" Runat="server"></asp:Panel></td>
			</tr>
			
			<tr>
				<td width="100%" height="5%"  colspan=2></td>
			</tr>
			<tr>
				<td width="100%" colspan=2><hr style="COLOR:#000000" size="1">
				</td>
			</tr>
			<tr><td width="80%" align="left" >注：蓝色文字表示周次/节次下无课学生所占比例</td>
				<td width="20%" valign="top" style="HEIGHT:20px" align="right" nowrap >
					<input type="button" class="but20" id="surebut" value="确定" onclick="ChkValue();" disabled>
					<input type="button" class="but20" id="closebut" value="返回" onclick="window.close();">
					<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
				</td>
			</tr>
		</table>
	</body>
</HTML>
