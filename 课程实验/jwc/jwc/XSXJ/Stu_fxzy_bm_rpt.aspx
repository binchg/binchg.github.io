<%@ Page %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%
BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
int R=0;
bool vFxf=false;
bool t=false;
string vState="";
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;
string vXNXQ=xsxj.GetFXSQXNXQ();

Response.Output.Write(pSub.HtmlHear());

try{vState=Request.Form["state"].ToString();}catch(Exception){}
if(vState=="报名")
{
	string vFXNJ="",vFXZY="",vFXLB="";
	try{vFXNJ=Request.Form["fxnj"].ToString();}catch(Exception){}
	try{vFXZY=Request.Form["fxzy"].ToString();}catch(Exception){}
	try{vFXLB=Request.Form["fxlb"].ToString();}catch(Exception){}
	xsxj.SaveMEFXBM(vXNXQ,USER_ID,vFXNJ,vFXZY,vFXLB);
}
else if(vState=="取消")
{
	xsxj.DelMEFXBM(USER_ID);
}

Response.Output.Write("<form name=form1 action='Stu_fxzy_bm_rpt.aspx' method=post>");

t=pSub.TimeArea("FXSQ","");
if(!t)
{Response.Redirect ("../_help/sorry.aspx?str=非辅修报名时间！");}
xsxj.strHeadYXFXZY();
vFxf=xsxj.GetTablexffx(USER_ID);
if(vFxf){t=false;}
R=xsxj.GetTableYXFXZY(vXNXQ,USER_ID);

Response.Output.Write(xsxj.DrawHearYXFXZY(R));
if (R>0)
{
	Response.Output.Write(xsxj.DrawMainYXFXZY(t,USER_ID));
}
Response.Output.Write("<input type=hidden name=fxnj value=''>");
Response.Output.Write("<input type=hidden name=fxzy value=''>");
Response.Output.Write("<input type=hidden name=fxlb value=''>");
Response.Output.Write("<input type=hidden name=xnxq value='"+vXNXQ+"'>");
Response.Output.Write("<input type=hidden name=state value=''>");
Response.Output.Write("</form>");
Response.Output.Write(pSub.HtmlTrail());
%>
<script language="JavaScript">
function SQSet(theID){
  var nj,zy,state,fxlb
  try{state=theID.value;nj=theID.NJ;zy=theID.ZY;fxlb=theID.FXW}
  catch(e){alert("未知错误,操作终止！");return false;}
  if(confirm('你确定要'+state+'吗？'))
   {
		document.all.fxnj.value=nj;
		document.all.fxzy.value=zy;
		document.all.fxlb.value=fxlb;
		document.all.state.value=state;
		form1.submit()
   }
}
</script>
<script language=javascript src=../include/Scr/ind_subPublic.js></script>