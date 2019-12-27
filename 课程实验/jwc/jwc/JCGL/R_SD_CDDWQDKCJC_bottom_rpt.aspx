<%@ Page language="c#" Codebehind="R_SD_CDDWQDKCJC_bottom_rpt.aspx.cs" AutoEventWireup="false" Inherits="BookWeb.JCGL.R_SD_CDDWQDKCJC_bottom_rpt" %>
<HTML>
	<HEAD>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript">
			function selchk(theID,n)
			{
				if(theID.checked==true){
					window.document.all.selgs.value=parseInt(window.document.all.selgs.value)+1;
					eval("window.document.all.jsnum"+n+".disabled=false;");
					eval("window.document.all.tea"+n+".disabled=false;");
					parent.document.all.save.disabled=false;
					parent.document.all.del.disabled=false;
					}
				else{
  					window.document.all.selgs.value=parseInt(window.document.all.selgs.value)-1;
					eval("window.document.all.jsnum"+n+".disabled=true;");
					eval("window.document.all.tea"+n+".disabled=true;");
					eval("window.document.all.jsnum"+n+".value=0;");
					eval("window.document.all.tea"+n+".checked=false;");
					if(parseInt(window.document.all.selgs.value)==0){
						parent.document.all.save.disabled=true;
						parent.document.all.del.disabled=true;
					}
				}
			}
		</script>
	</HEAD>
</HTML>
