<%@ Page language="c#" Codebehind="Pri_TeaYXLJXJC_add.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Pri_TeaYXLJXJC_add" %>
<HTML>
	<HEAD>
		<title>录入教学进度表</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/Styles_rpt.css" type="text/css" rel="stylesheet">
		<script language=javascript>
			function ChkXS(Object){
				var ObjectValue=Object.value;
				if(isNaN(ObjectValue)){
					alert('学时须为数字！');
					Object.value='';
					Object.focus();
				}
				else if(ObjectValue<=0&&ObjectValue!=""){
					alert('学时须大于0！');
					Object.value='';
					Object.focus();
				}
			}
			
			function ChkZC(Object){
				var ObjectValue=Object.value;
				if(isNaN(ObjectValue)){
					alert('周次须为数字！');
					Object.value='';
					Object.focus();
				}
				else if(ObjectValue<=0&&ObjectValue!=""){
					alert('周次须大于0！');
					Object.value='';
					Object.focus();
				}
			}
			
			function ChkXQ(Object){
				var ObjectValue=Object.value;
				if(isNaN(ObjectValue)){
					alert('星期须为数字！');
					Object.value='';
					Object.focus();
				}
				else if((ObjectValue<1||ObjectValue>7)&&ObjectValue!=""){
					alert('星期的范围为1至7！');
					Object.value='';
					Object.focus();
				}
			}
		</script>
		<script language=vbscript>
			function ChkRQ(Object)
				if Not isDate(Object.value) and Object.value<>"" then 
					call msgbox("须录入正确格式的时间！",64,"") 
       				Object.value=""
					Object.select()
				end if
			end function
		</script>
		<style>
			textarea{
				font-size:12px;
				width:175px;
				overflow:auto;
				border-width:1px;
				border-style:solid;
				border-color:#89bfa7;
			}
			input.text{
				font-size:12px;
				border-width:1px;
				border-style:solid;
				border-color:#89bfa7;
			}
		</style>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>
		<form name="form1" action="Pri_TeaYXLJXJC_add.aspx" method="post" target="_self">
		<table width=99% align=center height=100% border=1 cellpadding=0 cellspacing=0>
			<tr>
				<td width=100% align=center style="height:3px"><br></td>
			</tr>
			<tr>
				<td width=100%  valign=top><asp:Panel ID="pageRpt" Runat="server"></asp:Panel></td>
			</tr>
			<tr>
				<td width=100% align=right >
					<input type=submit name="savebut" class="button" value="保存"  >
					<input type=button value="返回" class="button"  onclick="window.close();" >
				</td>
			</tr>
			<input type=hidden name="xnxq" value="<%=vXNXQ%>">
			<input type=hidden name="skbj" value="<%=vSKBJ%>">
		</table> 
		</form>
	</body>
</HTML>

