<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<%@Import NameSpace="BLL.include"%>
<%@ Import NameSpace="DAL.admin" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vPost="",sAreaIcon="",sAreaName="",sAreaDescript="",sLock="";
	double iAreaID=0;
	string[] ThePer=new string[]{"5%","25%","10%","54%","6%"};
	string[] TheAlign=new string[]{"center","","center","","center"};
	string[] TheHeadStr=new string[]{"ÐòºÅ","Ãû³Æ","Í¼±ê","ÃèÊö","×´Ì¬&nbsp;"};

	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	DataPurviewManage ct=new DataPurviewManage();

	try{iAreaID=Convert.ToDouble(Request.Form["AreaID"]);}catch{};
	try{sAreaIcon=Request.Form["AreaIcon"].ToString().Trim();}catch{};
	try{sAreaName=Request.Form["AreaName"].ToString().Trim();}catch{};
	try{sAreaDescript=Request.Form["AreaDescript"].ToString().Trim();}catch{};
	try{sLock=Request.Form["lock"].ToString().Trim();}catch{};
	try{ vPost=Request.Form["button"].ToString().Trim();}catch(Exception){};

	if(vPost!="")
	{
		if(sLock=="")sLock="1";
		try{
			Response.Output.Write(ct.B_SetArea_Data(vPost,iAreaID,sAreaIcon,sAreaName,sAreaDescript,sLock));
		}catch(Exception ex){
			Response.Output.Write(ex.Message.ToString());
		}
		Response.Output.Write("<script language=javascript>parent.document.all.btnadd.onclick()</");
		Response.Output.Write("script>");
	}
	try{
		Response.Output.Write((new purviewManage()).B_SetArea_rpt(ct.B_SetArea_rpt_Data(""),ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}

	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

<script language="JavaScript">
document.body.onselectstart=new Function("return false;");
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
    //theID.style.color=black;
	SubmitUserID(theID.value,theID.Name,theID.Icon,theID.Descript,theID.Lock);
	}
else{
    eval(PivID+".style.backgroundColor='"+PivColor+"';");
    eval(PivID+".style.color='"+PivFontColor+"';");
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
    //theID.style.color=vColor1;
	SubmitUserID(theID.value,theID.Name,theID.Icon,theID.Descript,theID.Lock);
	}
}

function SubmitUserID(iAreaID,sAreaName,sAreaIcon,sAreaDescript,sLock){
//if (sLock==0){sLock="¿ª·Å";} else {sLock="¹Ø±Õ";}
   parent.document.all.bntDel.disabled=(iAreaID==1||iAreaID==2?true:false);  
   parent.document.all.hidcode.value=1;
   parent.document.all.AreaID.value=iAreaID;
   parent.document.all.AreaIcon.value=sAreaIcon;
   parent.document.all.AreaName.value=sAreaName;
   parent.document.all.AreaDescript.value=sAreaDescript;
   if(sLock=="0"){parent.document.all.lock.checked=true;}else{parent.document.all.lock.checked=false;}
}
</script>