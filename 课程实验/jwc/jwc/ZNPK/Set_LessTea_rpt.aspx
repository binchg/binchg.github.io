<%@ Page language="c#" Codebehind="Set_LessTea_rpt.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.Set_LessTea_rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_rpt.css" type="text/css" rel="stylesheet">
		<script language="javascript">
			function op(vK,vKCMC,vKCID,vCDDW,vJSID,vYQDRS)
			{ 
			   try{
				if((chkC.value=='')&&(chkI.value=='')){
					chkC.value=eval(vK+".style.backgroundColor");
					chkC1.value=eval(vK+".style.color");
					chkI.value=vK;
					eval(vK+".style.backgroundColor='#89bfa7'");
					eval(vK+".style.color='white'");

					}else{
					if(chkI.value!=vK){
						eval(chkI.value+".style.backgroundColor='"+chkC.value+"'");
						eval(chkI.value+".style.color='"+chkC1.value+"'");
						chkI.value=vK;
						chkC.value=eval(vK+".style.backgroundColor");
						eval(vK+".style.backgroundColor='#89bfa7'");
						eval(vK+".style.color='white'");
					}
				}
				//课程代码和名称
				parent.document.all.theKC.innerHTML='<td id=theKC colspan=2>课程：'+vKCMC+'</td>'   
				parent.document.all.kcdm.value=vKCID;
				parent.document.all.kccddw.value=vCDDW;
				parent.document.all.jsid.value=vJSID;
				parent.document.all.sel_ssbm.value=vCDDW;
				parent.Form1.method='post';
				parent.Form1.action='Set_TeaInfo.aspx';
				parent.Form1.submit();
				}
				catch(e){}
			}
		</script>
	</HEAD>
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  
		leftMargin="0" topMargin="0" onsource="window.event.returnValue=false">
		<asp:datagrid id="LessTeaData" BorderStyle="Solid" BorderColor="#89bfa7" BorderWidth="1px" ShowHeader="False"
			Width="100%" AllowCustomPaging="True" AutoGenerateColumns="False" runat="server" AllowSorting="True">
			<Columns>
				<asp:BoundColumn>
					<HeaderStyle Width="5%"></HeaderStyle>
					<ItemStyle HorizontalAlign="Center"></ItemStyle>
				</asp:BoundColumn>
				<asp:BoundColumn DataField="zwmc" ReadOnly="True">
					<HeaderStyle Width="35%"></HeaderStyle>
					<ItemStyle HorizontalAlign="Left"></ItemStyle>
				</asp:BoundColumn>
				<asp:BoundColumn DataField="zxf" ReadOnly="True">
					<HeaderStyle Width="8%"></HeaderStyle>
					<ItemStyle HorizontalAlign="Right"></ItemStyle>
				</asp:BoundColumn>
				<asp:BoundColumn DataField="zxs" ReadOnly="True">
					<HeaderStyle Width="8%"></HeaderStyle>
					<ItemStyle HorizontalAlign="Right"></ItemStyle>
				</asp:BoundColumn>
				<asp:BoundColumn DataField="xm" ReadOnly="True">
					<HeaderStyle Width="19%"></HeaderStyle>
					<ItemStyle HorizontalAlign="Left"></ItemStyle>
				</asp:BoundColumn>
				<asp:BoundColumn DataField="ssyx" ReadOnly="True">
					<HeaderStyle Width="25%"></HeaderStyle>
					<ItemStyle HorizontalAlign="Left"></ItemStyle>
				</asp:BoundColumn>
				<asp:BoundColumn Visible="False" DataField="kcid"></asp:BoundColumn>
				<asp:BoundColumn Visible="False" DataField="cddw_id"></asp:BoundColumn>
				<asp:BoundColumn Visible="False" DataField="Teacher"></asp:BoundColumn>
				<asp:BoundColumn Visible="False" DataField="jsrs"></asp:BoundColumn>
			</Columns>
		</asp:datagrid>
			<input id="chkC" type="hidden" name="chkC">
			<input id="chkC1" type="hidden" name="chkC1">
			<input id="chkI" type="hidden" name="chkI">
	</body>
</HTML>
