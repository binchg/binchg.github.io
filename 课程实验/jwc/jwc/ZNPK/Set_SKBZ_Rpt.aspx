<%@ Page language="c#" Codebehind="Set_SKBZ_Rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Set_SKBZ_Rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Rpt.css" type="text/css" rel="stylesheet">
		<script language="javascript">
			function op(vK,SKBZ,KCID)
			{ 
			   try{
					var N;
					var i;
					var dszskbj;
					var idval;
					var s=false;
					N=parent.document.all.yszcount.value;
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
					for(i=1;i<=N;i++)
					{
						idval=eval("document.all.chk"+i+".value");
						if(SKBZ==eval("document.all.chk"+i+".val"))
						{
							if(s==false){
								dszskbj=idval;
								s=true;
							}else{
								dszskbj=dszskbj+";"+idval;
							}
						}
						
					}
					parent.document.all.canelbutton.disabled=false;
					parent.document.all.setbutton.disabled=false;
					parent.document.all.skbz.value=SKBZ;
					parent.document.all.kcid.value=KCID;
					parent.document.all.dszskbj.value=dszskbj;
					parent.form.action='Set_SKBZ_LRpt.aspx';
					parent.form.target='LfrmRpt';
					parent.form.submit();
					parent.form.action='Set_SKBZ_RRpt.aspx';
					parent.form.target='RfrmRpt';
					parent.form.submit();
				}catch(e){}
			}
		</script>
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  
		leftMargin="0" topMargin="0" onsource="window.event.returnValue=false">
		<asp:panel id="pageRpt" Runat="server"></asp:panel><asp:datagrid id="YSZSKBZ_DataGrid" runat="server" AllowSorting="True" AutoGenerateColumns="False"
			AllowCustomPaging="True" Width="100%" ShowHeader="False" BorderWidth="1px" BorderColor="#89bfa7" BorderStyle="Solid">
			<Columns>
				<asp:BoundColumn DataField="skbzmc"></asp:BoundColumn>
				<asp:BoundColumn DataField="kcmc"></asp:BoundColumn>
				<asp:BoundColumn DataField="jsxm"></asp:BoundColumn>
				<asp:BoundColumn DataField="skbh"></asp:BoundColumn>
				<asp:BoundColumn DataField="skfsmc"></asp:BoundColumn>
				<asp:BoundColumn Visible="False" DataField="skbz"></asp:BoundColumn>
				<asp:BoundColumn Visible="False" DataField="kcid"></asp:BoundColumn>
				<asp:BoundColumn Visible="False" DataField="skbj"></asp:BoundColumn>
				<asp:BoundColumn Visible="False" DataField="kc_flag"></asp:BoundColumn>
			</Columns>
		</asp:datagrid><input id="chkC" type="hidden" name="chkC"> <input id="chkC1" type="hidden" name="chkC1">
		<input id="chkI" type="hidden" name="chkI">
	</body>
</HTML>
