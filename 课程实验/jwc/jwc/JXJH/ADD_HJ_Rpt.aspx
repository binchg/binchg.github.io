<%@ Import NameSpace="BLL.JXJH" %>
<%@ Import NameSpace="DAL.JXJH" %>
<%@ Page Language="C#" %>


<%
   
   private_JXJH cj=new private_JXJH(this);
   string vTitle="实践环节信息";
   string [] ThePer=new string[]{"5% ","45%","10%","20%","10% ","10%"};
   string [] TheAlign=new string[]{"center","left","center","","right","right"};
   string [] TheHeadStr=new string[]{"序号","环节","环节类别","英文名称","学分","周数"};
  // string MEMO_ID="mod_hj";
  // int MEMO_Index=5;
  // int MEMO_ValNo=8;
  // string MEMO_ValStr="修改";
   Response.Output.Write(cj.page_Head_HTML("提交环节信息","styles_rpt"));
   Response.Output.Write("\n<input type=hidden PivColor='Noting' PivFontColor='Noting' ValueID='' name='PSTemp' value=''>\n");
   
   if(Request.ServerVariables["REQUEST_METHOD"].ToString().Trim()=="POST"){
		string vYHDM="",vCDDW="",vZWMC="",vYWMC="";
		string vXF="",vZS="",vSJLB="",vID="";
		string vLRJJ="",vRpt="";
		string vKC="";
		CourseTache ct=new CourseTache();
		try{
			vCDDW=Request.Form["cddw"].ToString().Trim();
		}catch(Exception){}
		
		
		string submitStr="";
		try{
			submitStr=Request.Form["submit"].ToString().Trim();
		}catch(Exception){}
		//add update
		if(submitStr=="保存"){
				try{vYHDM=Request.Form["kcdm"].ToString().Trim();}catch(Exception){}
				try{vZWMC=Request.Form["zwmc"].ToString().Trim();}catch(Exception){}
				try{vYWMC=Request.Form["ywmc"].ToString().Trim();}catch(Exception){}
				
				try{vXF=Request.Form["zxf"].ToString().Trim();}catch(Exception){}
				try{vZS=Request.Form["zxs"].ToString().Trim();}catch(Exception){}
				try{vSJLB=Request.Form["hjlb"].ToString().Trim();}catch(Exception){}
				try{vID=Request.Form["kcid"].ToString().Trim();}catch(Exception){}
				
				try{vLRJJ=Request.Form["lrjj"].ToString().Trim();}catch(Exception){}
				try{vRpt=Request.Form["hidselected"].ToString().Trim();}catch(Exception){}
			try{	
				ct.AddHJ(vID,vYHDM,vCDDW,vZWMC,vYWMC,vSJLB,vXF,vZS,vLRJJ);
				Response.Output.Write("<script language=javascript>var aktiv=window.setTimeout('Farbe()',500);</script>");
			}catch(Exception ex){
				Response.Output.Write(ex.Message.ToString());
			}
		}
		//del
		if(submitStr=="删除"){
			try{
				string vKCDM=Request.Form["kcid"].ToString().Trim();
				Response.Output.Write(ct.DelHJ(vKCDM).Trim());
				Response.Output.Write("<script language=javascript>var aktiv=window.setTimeout('Farbe()',500);</script>");
			}catch(Exception){
				Response.Output.Write("发生异常！\n删除失败！");
			}
		}
		
		//view Data
		try{		
			string sql="select sjmc from T_JH_PracticeTeach";
			string wherestr="sjmc";
			Response.Output.Write((new private_JXJH()).DrawRpt(ct.AddHJ_Rpt(vCDDW,vKC),sql,wherestr,9,ThePer,TheAlign,TheHeadStr).ToString().Trim());

		}catch(Exception ek){
			Response.Output.Write(ek.Message.ToString());
		}
   
   }else{
     Response.Output.Write((new private_JXJH()).DrawHead(0,ThePer,TheHeadStr));
   }
   Response.Output.Write(cj.page_Bottom_HTML());
 
%>



<script language="javascript">
<!--
//var aktiv=window.setTimeout("Farbe()",100);
function Farbe(){try{
	var whichEl; var i,vChar,vStr;
	//vStr=parent.form1.kcdm.val;
	//vStr=T1.value;

	vChar=parseInt('1'+vStr)+1;
	vStr=vChar.toString().substring(1,7);
	parent.form1.kcdm.val=vStr;//parent.form1.kcid.value=vStr; //alert(parent.form1.kcid.value);
	
	var divColl = parent.form1.all.tags("input");		
	for (i=0;i<divColl.length; i++){    
	whichEl = divColl(i); 
	if(whichEl.type=='text'){vChar=whichEl.val;
	if(typeof(vChar)=="undefined")vChar='';
	whichEl.value=vChar;
	}}
	parent.document.all.kcdm.disabled=false;
	parent.document.all.zxf.disabled=false;
	parent.document.all.zxs.disabled=false;
	parent.document.all.hjlb.disabled=false;
	parent.document.all.btndel.disabled=true;
	parent.document.all.hidselected.value="";
	parent.document.all.hjlb.selectedIndex=0;
	parent.form1.all.tags("textarea")(0).value='';
	parent.form1.all.zwmc.focus();

}catch(e){alert('复位失败!')}}



function SelectUser(theID){
var PivID,PivColor,vColor,PivFontColor
vColor='#89bfa7'

PivID=document.all.PSTemp.ValueID
PivColor=document.all.PSTemp.PivColor
PivFontColor=document.all.PSTemp.PivFontColor

if (PivColor=="Noting" ){
     
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
    SubmitUserID(theID.value,theID.delflag);
	}
else{
    eval(PivID+".style.backgroundColor='"+PivColor+"';");
    eval(PivID+".style.color='"+PivFontColor+"';");
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
    SubmitUserID(theID.value,theID.delflag);
	}
}

function SubmitUserID(theID,delflag){
if (delflag=="0"){parent.document.all.btndel.disabled=false;}
else{parent.document.all.btndel.disabled=true;}

parent.document.all.hidselected.value=theID;
parent.document.all.kcid.value=theID;
parent.frmCDDW.location.href='../include/PublicSetVar.aspx?p=HJ&id='+theID+"&flag="+delflag;
}
//-->
</script>

 
