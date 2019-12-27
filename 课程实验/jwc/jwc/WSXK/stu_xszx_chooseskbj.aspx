<%@ Page language="c#" Codebehind="stu_xszx_chooseskbj.aspx.cs" AutoEventWireup="false" Inherits="WSXK.WSXK_xszx_ChooseSkbj" %>

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
			function selradio(theID,N)
			{
				var object_id;
				var object_value;
				var object_temp;
				var skbz_id;
				var divColl;
				object_value=theID.value;
				object_temp=object_value.split("|");
				skbz_id=object_temp[0];
				try{
					var divCol=FormAdd.all.tags('input');
					for (i=0;i<divCol.length;i++)
					{    
						if(divCol(i).type=='radio')divCol(i).checked=false;
					}
					if(object_temp[0]!=""){
						try{eval("window.document.all.J"+object_temp[0]+".checked=true;");}catch(e){}
						try{eval("window.document.all.S"+object_temp[0]+".checked=true;");}catch(e){}
						try{eval("window.document.all.E"+object_temp[0]+".checked=true;");}catch(e){}
					}else{
						theID.checked=true;
					}
				}catch(e){}
				window.document.all.sure.disabled=false;
				window.document.all.jsskbj_str.value=object_temp[2];
			}
			
			function ChkVal()
			{
				var idval="";
				try{
					var divCol =FormAdd.all.tags('input');
					for (i=0;i<divCol.length;i++){    
						if((divCol(i).type=='radio')&&(divCol(i).checked)){
							if(idval==""){idval=divCol(i).value.split("|")[2];}
						}
					}
					window.returnValue=idval;
					setTimeout(this.close(),1000);
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
	<body MS_POSITIONING="GridLayout" scroll="yes">
	<form name="FormAdd" method=post >
		<table width="99%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr style="height:28">
				<td align="right" style="height:28">
					<input class="button" type="button" name="submit" id=sure value="确定" onclick="ChkVal()" disabled>
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