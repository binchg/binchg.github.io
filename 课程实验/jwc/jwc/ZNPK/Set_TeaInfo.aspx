<%@ Page language="c#" Codebehind="Set_TeaInfo.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.Set_TeaInfo" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Set_TeaInfo</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_rpt.css" type="text/css" rel="stylesheet">
		<script language="JavaScript">
		function selon(theID,num)
		{
			try{
				var rs;
				rs=parseInt(parent.document.all.yqdjsrs.value);
				if(theID.checked==true){rs=rs+1;if(rs<0){rs=0;}}
				else{rs=rs-1;if(rs<0){rs=0;}}
				parent.document.all.theYQDRS.value=rs; 
				parent.document.all.yqdjsrs.value=rs; 
				parent.document.all.yqdjsrs.value=rs; 
				parent.document.all.gs.value=rs; 
			}catch(e){}
		}

		</script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" onselectstart="window.event.returnValue=false"
		id="Body1" ondragstart="window.event.returnValue=false" leftMargin="0" topMargin="0"
		marginheight="0" marginwidth="0" onsource="window.event.returnValue=false" runat="server">
		<form runat="server">
			<asp:datagrid id="TeacherDataGrid" runat="server" HorizontalAlign="Right" AutoGenerateColumns="False"
				ShowHeader="False" Width="100%" BorderWidth="0px">
				<Columns>
					<asp:BoundColumn DataField="flag"></asp:BoundColumn>
					<asp:BoundColumn DataField="xm" ReadOnly="True" HeaderText="姓名">
						<HeaderStyle Width="25%"></HeaderStyle>
					</asp:BoundColumn>
					<asp:BoundColumn DataField="xb" ReadOnly="True" HeaderText="性别">
						<HeaderStyle Width="15%"></HeaderStyle>
					</asp:BoundColumn>
					<asp:BoundColumn DataField="zc" ReadOnly="True" HeaderText="职称">
						<HeaderStyle Width="25%"></HeaderStyle>
					</asp:BoundColumn>
					<asp:BoundColumn DataField="xl" ReadOnly="True" HeaderText="学历">
						<HeaderStyle Width="20%"></HeaderStyle>
					</asp:BoundColumn>
					<asp:BoundColumn Visible="False" DataField="dm"></asp:BoundColumn>
					<asp:BoundColumn Visible="False" DataField="ssdw_id"></asp:BoundColumn>
				</Columns>
			</asp:datagrid></form>
	</body>
</HTML>
