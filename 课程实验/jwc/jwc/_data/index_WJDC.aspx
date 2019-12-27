<%@ Page CodeBehind="index_WJDC.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame._data.index_WJDC" %>
<html>
	<head>
	    <title>问卷调查</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_Style/Styles_Home.css" type="text/css">
		<script language="javascript">
		function chkValue(){
			try{
				if(document.all.selType.value==""){
					alert('请选择一个答案提交！');
					return false;
				}else if(confirm('确信要提交吗？'))
					return true;
				else 
					return false;
			}catch(e){alert(e);}
		}
		function chkRadioValue(obj){
			try{
				if(obj.checked){
					document.all.selType.value=obj.value;
				}
			}catch(e){alert(e);}
		}
		</script>
	</head>
	<body text="#000000"onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
		<form name="form1" method="post" runat="server">
			<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
		</form>
	</body>
</html>
