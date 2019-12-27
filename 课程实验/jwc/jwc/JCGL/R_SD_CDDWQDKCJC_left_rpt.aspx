<%@ Page language="c#" Codebehind="R_SD_CDDWQDKCJC_left_rpt.aspx.cs" AutoEventWireup="false" Inherits="BookWeb.JCGL.R_SD_CDDWQDKCJC_left_rpt" %>
<HTML>
	<HEAD>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language=javascript src=../include/Scr/ind_Selected.js></script>
		<script language=javascript>
			function op(theID)
			{
				var sel,vKCID,vXNXQ,theURL,vCBS,vJC;
				sel=SelectUser(theID);
				vCBS=parent.document.all.sel_cbs.value;
				vJC=parent.document.all.jc.value;
				if (sel)
				{
					if(vCBS==''&&vJC.replace(' ','')==''){
						alert('需选择出版社或输入教材信息！');
					}	
					else{
						vXNXQ=theID.XNXQ;
						vKCID=theID.value;
						parent.document.all.add.disabled=false;
						parent.document.all.kchj.value=vKCID;
						theURL='R_SD_CDDWQDKCJC_ZZ.aspx?theflag=delkc';
						parent.frm.location.href=theURL;
						theURL='R_SD_CDDWQDKCJC_bottom_rpt.aspx?xnxq='+vXNXQ+'&kchj='+vKCID+'&xsqrlag='+parent.document.all.xsqrlag.value;
						parent.main.location.href=theURL;
						theURL='R_SD_CDDWQDKCJC_right_rpt.aspx?xnxq='+vXNXQ+'&kchj='+vKCID+'&pressid='+vCBS+'&jc='+vJC;;
						parent.rightfrm.location.href=theURL;
					}
				}
			}
		</script>
	</HEAD>
</HTML>
