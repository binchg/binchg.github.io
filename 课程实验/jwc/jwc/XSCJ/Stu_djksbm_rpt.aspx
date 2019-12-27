<%@ Page %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<script language="JavaScript" src='../include/Scr/ind_subPublic.js'></script>
<FONT face="宋体"></FONT>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_STU pSub=new BLL_STU();

string USER_ID=PubObj.USER_ID;
string USER_ZH=PubObj.USER_ZH;
string USER_NAME=PubObj.USER_NAME;
string USER_LVID=PubObj.USER_LVID;
string USER_BJID=PubObj.USER_BJID;
string USER_LEVEL=PubObj.USER_LEVEL;
string USER_OPTYX=PubObj.USER_OPTYX;
string USER_OPTDW=PubObj.USER_OPTDW;
//USER_ID="00011007";

string vXNXQ="";
string[] PV=new string[7];
int R=0;

Response.Output.Write (PubObj.HtmlHear("","","Stu_djksbm_rpt.aspx"));
	
if (Request.Form["state"]=="报名")
{
	PV[0]=Request.Form["year"].ToString();
	PV[1]=Request.Form["month"].ToString();
	PV[2]=USER_ID;
	PV[3]=Request.Form["lb"].ToString();
	PV[4]=Request.Form["dj"].ToString();
	PV[5]=Request.Form["llbm"].ToString();
	PV[6]=Request.Form["czbm"].ToString();
	pSub.SetSQDJKSBM(PV);
}
else if (Request.Form["state"]=="取消") 
{
	PV[0]=Request.Form["year"].ToString();
	PV[1]=Request.Form["month"].ToString();
	PV[3]=Request.Form["lb"].ToString();
	PV[4]=Request.Form["dj"].ToString();

	pSub.SetSQDJKSBM(PV[0].Trim()+PV[1].Trim(),USER_ID,PV[3],PV[4]);
}


pSub.ArrayDefineDJKSBM();
try{R=pSub.GetTableDJKSBM(USER_ID);
}catch(Exception ){}
if (R>0)
{
	try{
		pSub.GetStuInfo(USER_ID,this.Page);
		Response.Output.Write(pSub.DrawRptHeadDJKS());
		Response.Output.Write(pSub.DrawRptMainDJKSBM(USER_ID));
	}catch(Exception ){}
}
	
Response.Output.Write (PubObj.HtmlTrail());
%>
<script language="JavaScript">
function SQSet(theID){
	var lb,jd,year,month,ll,cz
	try{state=theID.value;lb=theID.LB;dj=theID.DJ;year=theID.YEAR;month=theID.MONTH;ll=theID.LLBM;cz=theID.CZBM}
	catch(e){}
  	document.all.lb.value=lb;
	document.all.dj.value=dj;
	
	document.all.year.value=year;
	document.all.month.value=month;
	document.all.state.value=state;
	document.all.llbm.value=ll;
	document.all.czbm.value=cz;
	if(lb=="02")
	{
		if(ll+cz=="")
		{
			alert("请选择报名构成！");
			return false;
		}
	}
	theID.disabled=true;
	form1.submit()
  
}
</script>
