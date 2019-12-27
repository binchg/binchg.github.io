<%@ Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language=C# runat=server>
string zx_flag="0";
string fx_flag="0";
		
private void Page_Load(object sender,System.EventArgs e)
{
 if(Request.ServerVariables["REQUEST_METHOD"].ToString().Trim()=="POST"){
		try{
			string vP=Request["p"].ToString().Trim();
			string vNJ=Request["sel_xn"].ToString().Trim();
			string vZYID=Request["sel_zy"].ToString().Trim();
			string vKCDM=Request["kcid"].ToString().Trim();
			if(vP.ToUpper()=="UPD"){
				string vKKXQ=Request["kkxq"].ToString().Trim();
				string vMEMO=Request["memo"].ToString().Trim();
				string vKCLB1=Request["kclb1"].ToString().Trim();
				string vKCLB2=Request["kclb2"].ToString().Trim();
				string vZSXS=Request["zsxs"].ToString().Trim();
				string vKHFS=Request["khfs"].ToString().Trim();
				try{zx_flag=Request["zx_flag"].ToString().Trim();}catch(Exception){}
				try{fx_flag=Request["fx_flag"].ToString().Trim();}catch(Exception){}
				Response.Output.Write((new private_JXJH()).SET_ZYKC_UpdKC(vNJ,vZYID,vKCDM,vKKXQ,vMEMO,vKCLB1,vKCLB2,vZSXS,vKHFS,zx_flag,fx_flag));
				
			}else{
				Response.Output.Write((new private_JXJH()).SET_ZYKC_DelKC(vNJ,vZYID,vKCDM));
			}
		}catch(Exception){}
	}
}

</script>
<script language="javascript">
function Farbe(){try{
	TDupd();
	var whichEl; var i,vChar,vStr;
	var divColl = parent.document.all.tags("input");	

	for (i=0;i<divColl.length; i++){    
	whichEl = divColl(i); 
	if(whichEl.type=='text'){vChar=whichEl.val;
	if(typeof(vChar)=="undefined")vChar='';
	whichEl.value=vChar;
	}}
	clearText();
}catch(e){alert('¸´Î»Ê§°Ü!')}
window.clearInterval(aktiv);}

function clearText(){
	parent.document.all.kcdm.value='';parent.document.all.kcmc.value='';
	parent.document.all.zxs.value=''; parent.document.all.zxf.value='';
	parent.document.all.jsxs.value='';parent.document.all.syxs.value='';
	parent.document.all.sjxs.value='';parent.document.all.qtxs.value='';
	parent.document.all.zsxs.value='';

	parent.document.all.kclb1.value='';parent.document.all.kclb2.value='';
	parent.document.all.khfs.value='';parent.document.all.kkxq.value='';
	parent.document.all.memo.value='';parent.document.all.submit.disabled=true;
	parent.document.all.memo.focus();parent.document.all.delbtn.disabled=true;
}

function TDupd(){
	var RowXH=parent.document.all.RowXH.value;
	parent.frmRpt.document.all.item("chkKC",RowXH-1).checked=true;
	eval("parent.frmRpt.T"+RowXH+".del='0'");
	eval("parent.frmRpt.T"+RowXH+".zx_flag='<%=zx_flag%>'");
	eval("parent.frmRpt.T"+RowXH+".fx_flag='<%=fx_flag%>'");
}

function TDdel(){
	var RowXH=parent.document.all.RowXH.value
	parent.frmRpt.document.all.item("chkKC",RowXH-1).checked=false;
	parent.document.all.zx_flag.disabled=false;
	parent.document.all.fx_flag.disabled=false;
	parent.document.all.zx_flag.checked=true;
	parent.document.all.fx_flag.checked=false;
	eval("parent.frmRpt.T"+RowXH+".del='1'");
	eval("parent.frmRpt.T"+RowXH+".zfx='0'");
	eval("parent.frmRpt.T"+RowXH+".zx_flag=''");
	eval("parent.frmRpt.T"+RowXH+".fx_flag=''");
	clearText();
}
</script>


