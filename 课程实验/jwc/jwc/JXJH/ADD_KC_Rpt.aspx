<%@ Page language="c#" Codebehind="ADD_KC_Rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.ADD_KC_Rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta http-equiv="Content-Type" content="text/html;charset=gb2312">
		<LINK href="../_style/styles_rpt.css" type="text/css" rel="stylesheet">
		<script language="javascript">
			function SelectUser(theID){
				try{
					var PivID,PivColor,vColor,PivFontColor;
					vColor='#89bfa7'

					PivID=document.all.PSTemp.ValueID;
					PivColor=document.all.PSTemp.PivColor;
					PivFontColor=document.all.PSTemp.PivFontColor;

					if (PivColor=="Noting" ){
						document.all.PSTemp.PivColor=theID.style.backgroundColor;
						document.all.PSTemp.PivFontColor=theID.style.color;
						document.all.PSTemp.ValueID=theID.id;
						theID.style.backgroundColor=vColor;
						theID.style.color="white";
						}
					else{
						eval(PivID+".style.backgroundColor='"+PivColor+"';");
						eval(PivID+".style.color='"+PivFontColor+"';");
						document.all.PSTemp.PivColor=theID.style.backgroundColor;
						document.all.PSTemp.PivFontColor=theID.style.color;
						document.all.PSTemp.ValueID=theID.id;
						theID.style.backgroundColor=vColor;
						theID.style.color="white";
						}
						
						parent.document.all.txt_kcdm.value=theID.value1;
						parent.document.all.hidcode.value=theID.value2;
						parent.document.all.sel_cddw.value=theID.value3;
						parent.document.all.txtNameCN.value=theID.value4;
						parent.document.all.sel_classBigType.value=theID.value5;
						parent.document.all.sel_classSmType.value=theID.value6;
						parent.document.all.txtNameEN.value=theID.value7;
						parent.document.all.txtXF.value=theID.value8;
						parent.document.all.txtTeachTime.value=theID.value9;
						parent.document.all.txtLabTime.value=theID.value10;
						parent.document.all.txtComTime.value=theID.value11;
						parent.document.all.txtEtcTime.value=theID.value12;
						parent.document.all.txtAllStudTime.value=theID.value13;
						parent.document.all.txt_JXDG.value=theID.value14;
						if(theID.isHidden=='0'){
							parent.document.all.DelBtn.disabled=false;
							parent.document.all.txt_kcdm.disabled=false;
							parent.document.all.sel_classBigType.disabled=false;
							parent.document.all.sel_classSmType.disabled=false;
							parent.document.all.txtXF.disabled=false;
							parent.document.all.txtTeachTime.disabled=false;
							parent.document.all.txtLabTime.disabled=false;
							parent.document.all.txtComTime.disabled=false;
							parent.document.all.txtEtcTime.disabled=false;
						}else{
						   parent.document.all.DelBtn.disabled=true;
						   parent.document.all.txt_kcdm.disabled=true;
							parent.document.all.sel_classBigType.disabled=true;
							parent.document.all.sel_classSmType.disabled=true;
							parent.document.all.txtXF.disabled=true;
							parent.document.all.txtTeachTime.disabled=true;
							parent.document.all.txtLabTime.disabled=true;
							parent.document.all.txtComTime.disabled=true;
							parent.document.all.txtEtcTime.disabled=true;
						}
					}catch(e){alert(e);};
				}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" leftMargin="0" topMargin="0">
		<asp:Panel ID="pageRpt" Runat="server"/>
	</body>
</HTML>
