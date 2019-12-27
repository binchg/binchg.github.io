<%@ Page language="c#" Codebehind="stu_sy_xszx_chooseskbj.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.WSXK.stu_sy_xszx_chooseskbj" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>青果软件</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<LINK href="../_Style/styles_Qry.css" type="text/css" rel="stylesheet">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language=javascript>
			function ChkVal()
			{
				var idval="";
				var idstr="";
				try{
					var divCol=FormAdd.all.tags('input');
					for (i=0;i<divCol.length;i++){    
						if((divCol(i).type=='radio')&&(divCol(i).checked)){
							if(idval==""){
								idval=divCol(i).value;
								idstr=divCol(i).str;
							}else{
								idval+=";"+divCol(i).value;
								idstr+=";"+divCol(i).str;
							}
						}
					}
					if(idval!=""&&idstr!=""){
						idstr=idstr+'@'+idval;
						window.returnValue=idstr;
						setTimeout(this.close(),1000);
					}else{
						alert('需选定实验班级！');
					}
				}catch(e){}
			}
		</script>
		<style>
			TD{font-family: "宋体"; font-size: 12px;border-color_:#008080;
			border-left:medium none; border-right_: 1px solid; 
			border-top:medium none; border-bottom_:1px solid; 
			padding-left:3px;padding-right:3px;word-wrap: break-word; word-break: break-all; 
			}
		</style>
	</HEAD>
	<body scroll="auto">
	<form name="FormAdd" method=post >
		<table width="99%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr style="height:28">
				<td align="right" style="height:28">
					<input class="button" type="button" name="submit" id=sure value="确定" onclick="ChkVal()">
					<input class="button" type="button" name="submit" value="关闭" onclick="window.close()"></td>
			</tr>
			<tr>
				<td >
					<div style="OVERFLOW:auto;WIDTH:100%;HEIGHT:100%">
						<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
					</div>
				</td>
			</tr>
		</table>
	</form>
	</body>
</HTML>