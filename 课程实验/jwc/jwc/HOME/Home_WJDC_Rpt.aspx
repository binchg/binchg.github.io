<%@ Page language="c#" Codebehind="Home_WJDC_Rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.HOME.Home_WJDC_Rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>Home_WJDC_Rpt</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Rpt.css" type="text/css">
    <script language="javascript">
    function chkValue(){
		try{
			if(document.all.questionStr.value==""){
				alert("须录入问卷题目！");
				document.all.questionStr.focus();
				return false;
			}
			var str="";
			for(var i=1;i<=5;i++){
				var askStr=eval("document.all.ask"+i+".value;");
				if(askStr.length>4){
					alert('超过了最大字符个数(四个字符)！');
					eval("document.all.ask"+i+".value='';")
					eval("document.all.ask"+i+".focus();")
					return false; 
				}
				str+=askStr;
			}
			if(str.length==0){
				alert('至少应输入一个备选答案！');
				document.all.ask1.focus();
				return false;
			}
			return true;
		}catch(e){alert(e);return false;}
    }
    </script>
  </head>
  <!--onselectstart=window.event.returnValue=false  oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false-->
  <body  topmargin="0" leftmargin="0">
		<form id="Form1" method="post" runat="server">
			<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
		</form>
	</body>
</HTML>
