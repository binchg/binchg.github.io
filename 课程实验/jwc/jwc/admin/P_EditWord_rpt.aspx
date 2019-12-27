<%@ Page CodeBehind="P_EditWord_rpt.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame.admin.P_EditWord_rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>文本编辑</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<link rel="stylesheet" href="../_style/styles_rpt.css" type="text/css">
		<script language="JavaScript">
			<!--
			function SelSubmit(thisID)
			{
				var id;
				id=thisID.value;
				if(id=="新增"){parent.frmRpt.location.href='P_EditWord_rpt.aspx?type=add';}
			}
			function getval(){

			var i,R,str,vZL,dsn;
			str='';
			try{R=document.all.count.value;}catch(e){R=0;}
			for(i=1;i<=R;i++)
			{ 
				if(eval("document.all.Chk"+i+".checked")==true)
					{if(str=='')
					{str=eval("document.all.Chk"+i+".value");}
				else
				{str=str+';'+eval("document.all.Chk"+i+".value");}
				}  
			}

			if(str==''){alert("请选择要删除的记录!"); return false;}
			else{
			if(confirm('是否删除!')){
			parent.frmRpt.location.href='P_EditWord_rpt.aspx?type=del&ChkDel='+str;
			}
			}
			}

			//-->
		</script>
		<!--oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false-->
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<form id="form1" action="P_EditWord_rpt.aspx" method="post" runat="server">
			<asp:panel id="pageRpt" Runat="server"></asp:panel></form>
	</body>
</HTML>
