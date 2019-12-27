<%@ Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>

<script language="C#" runat="server">
string zx_flag="0",fx_flag="0";
private void Page_Load(object sender,System.EventArgs e)
{
	string vNJ="",vZYID="",vKCDM="",vKKXQ="",vMEMO="",vP="";
	try{
			vP=Request["p"].ToString().Trim();
			vNJ=Request["sel_xn"].ToString().Trim();
			vZYID=Request["sel_zy"].ToString().Trim();
			if(vZYID.Length>=4){
				vZYID=vZYID.Substring(0,4);
			}
			vKCDM=Request["kcid"].ToString().Trim();
		}catch(Exception){}
		
		if(vP.ToUpper()=="UPD"){
			try{
				try{zx_flag=Request["zx_flag"].ToString().Trim();}catch(Exception){}
				try{fx_flag=Request["fx_flag"].ToString().Trim();}catch(Exception){}

				vKKXQ=Request["kkxq"].ToString().Trim();
				vMEMO=Request["memo"].ToString().Trim();
				Response.Output.Write((new private_JXJH()).UpdKCHJ(vNJ,vZYID,vKCDM,vKKXQ,vMEMO,zx_flag,fx_flag));
			}catch(Exception k){
				Response.Output.Write("<br>发生如下异常：<br>"+k.Message.ToString());
			}
		//UpdKCHJ()
		}else if(vP.ToUpper()=="DEL"){
			try{
				Response.Output.Write((new private_JXJH()).DelKCHJ(vNJ,vZYID,vKCDM));
			}catch(Exception ex){
				Response.Output.Write("<br>发生如下异常：<br>"+ex.Message.ToString());
			}
		//DelKCHJ()
		}
	
}
</script>

<script language="javascript">
//var aktiv=window.setInterval("Farbe()",100);
function Farbe(){try{
	//funTdUpd();
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
}catch(e){alert('复位失败!')}
window.clearInterval(aktiv);}

function clearText(){
    parent.document.all.kcdm.value='';
    parent.document.all.kcmc.value='';
    parent.document.all.zxf.value='';
    parent.document.all.zs.value='';
	parent.document.all.kclb.value='';
	parent.document.all.kkxq.value='';
	parent.document.all.memo.value='';
	parent.document.all.memo.focus();
	parent.document.all.submit.disabled=true;
	parent.document.all.delbtn.disabled=true;
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
parent.document.all.zx_flag.disabled=false;
parent.document.all.fx_flag.disabled=false;
parent.document.all.zx_flag.checked=true;
parent.document.all.fx_flag.checked=false;
eval("parent.frmRpt.T"+RowXH+".del='1'");
eval("parent.frmRpt.T"+RowXH+".zfx='0'");
eval("parent.frmRpt.T"+RowXH+".zx_flag=''");
eval("parent.frmRpt.T"+RowXH+".fx_flag=''");
clearText();
parent.frmRpt.document.all.item("chkKC",RowXH-1).checked=false;
}
</script>
