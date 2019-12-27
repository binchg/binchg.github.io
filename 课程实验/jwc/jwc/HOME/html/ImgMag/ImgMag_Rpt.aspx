<%@ Page language="c#" Codebehind="ImgMag_Rpt.aspx.cs" AutoEventWireup="false" Inherits="ImgMag.ImgMag_Rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>≤Â»ÎÕº∆¨</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script type="text/javascript">
			function getImgSrc(obj)
			{
				var vSrc="";
				vSrc=obj.src;
				vSrc="<img src='"+vSrc+"' border=0>"		   
				dialogArguments.insertHTML(vSrc);
				parent.window.close();
				window.close();	  
			}
		</script>
		<style>
			body { 
				SCROLLBAR-FACE-COLOR: #ffffff; 
				SCROLLBAR-TRACK-COLOR: #ffffff;
				SCROLLBAR-DARKSHADOW-COLOR: #ffffff;
				SCROLLBAR-SHADOW-COLOR: #CCCCCC; 
				SCROLLBAR-3DLIGHT-COLOR: #CCCCCC;
				SCROLLBAR-ARROW-COLOR: #CCCCCC; 
				SCROLLBAR-HIGHLIGHT-COLOR: #CCCCCC;		
			}
		</style>
	</HEAD>
	<body bottomMargin="0" leftMargin="0" topMargin="0" rightMargin="0">
		<TABLE  align="center" width="480px" cellSpacing="2" cellPadding="2" border="0">
			<asp:Literal ID="ltl_Images" Runat=server></asp:Literal>
		</TABLE>
	</body>
</HTML>
