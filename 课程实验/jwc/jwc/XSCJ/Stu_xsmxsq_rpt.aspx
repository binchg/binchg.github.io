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

string vXNXQ="",SJ_flag="";
string[] PV=new string[7];
int R=0;
Response.Output.Write (PubObj.HtmlHear("","","Stu_xsmxsq_rpt.aspx"));
try{vXNXQ=Request["xnxq"].ToString();}catch(Exception){}
try{SJ_flag=Request["time"].ToString();}catch(Exception){}
if(SJ_flag!="1")
{
	Response.Redirect ("../_help/sorry.aspx?str=非免修申请时间！");
}

if (Request.Form["state"]=="申请")
{
	
	PV[0]=vXNXQ.Substring(0,4);
	PV[1]=vXNXQ.Substring(vXNXQ.Length-1,1);
	PV[2]=Request.Form["nj"].ToString();
	PV[3]=Request.Form["zyid"].ToString();
	PV[4]=USER_ID;
	PV[5]=Request.Form["kcdm"].ToString();
	PV[6]=PubObj.RequestSafeValue(Request.Form["YY"].ToString());
	pSub.SetSQMXSQ(PV);
}
else if (Request.Form["state"]=="取消") 
{
	PV[0]=vXNXQ.Substring(0,4);
	PV[1]=vXNXQ.Substring(vXNXQ.Length-1,1);
	PV[2]=Request.Form["nj"].ToString();
	PV[3]=Request.Form["zyid"].ToString();
	PV[4]=USER_ID;
	PV[5]=Request.Form["kcdm"].ToString();
	pSub.SetQXMXSQ(PV);
}
pSub.ArrayDefineMXSQ();
try{
R=pSub.GetTableMXSQ(vXNXQ,USER_ID);
}catch(Exception){}
Response.Output.Write(pSub.DrawRptHead(USER_ID,vXNXQ,R,true));
if (R>0)
{
	try{Response.Output.Write(pSub.DrawRptMainMXSQ(vXNXQ,USER_ID));
	}catch(Exception){}
}
else
{
	Response.Redirect ("../_help/sorry.aspx?str=NO_DATA");
}
Response.Output.Write ("<input type=hidden name=time value="+SJ_flag+">");	
Response.Output.Write (PubObj.HtmlTrail());
%>
<script language="JavaScript">
function SQSet(theID){
  var nj,zy,kc,state
  try{state=theID.value;nj=theID.NJ;zy=theID.ZY;kc=theID.KC}
  catch(e){alert("未知错误,操作终止！");return false;}
  document.all.kcdm.value=kc;
  document.all.zyid.value=zy;
  document.all.nj.value=nj;
  document.all.state.value=state;
  theID.disabled=true;
  form1.submit();
}
</script>
