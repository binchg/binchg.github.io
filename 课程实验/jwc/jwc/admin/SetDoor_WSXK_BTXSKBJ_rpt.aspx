<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.admin"%>
<%@ Import NameSpace="System" %>
<%@ Page %>
<%
BLL_SetDoor pSub=new BLL_SetDoor();

string[]ThePer=new string[]{"5%","15%","30%","5%","15%","10%","10%","10%"};
string[]TheAlign=new string[]{"center","center","","right","","right","right","right"};
string[]TheHeadStr=new string[]{"序号","开关状态","课程","学分","上课班级","选课人<br>数上限","已选人数","空余名额"};
Response.Output.Write(pSub.page_Head_HTML());
string vSubmit="";
try{vSubmit=Request.QueryString["submit"].ToString().Trim();}catch(Exception){}
if(vSubmit=="ok")
{
	try{
		pSub.SaveKG_BTXSKBJ(this);
	}catch(Exception ex){Response.Output.Write(pSub.Alert("数据存储失败！"));}
}
string vStr=pSub.TotalKG_btxskbj();
Response.Output.Write(pSub.DrawRptHear(ThePer,TheHeadStr,vStr,true));
if(Request.ServerVariables["REQUEST_METHOD"]=="POST")
{
	string vCDDW="",vKC="",sRS1="",sRS2="",vKCLB="";
	try{vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){}
	try{vKC=Request.Form["sel_kc"].ToString().Trim();}catch(Exception){}
	try{sRS1=Request.Form["txt_Fme"].ToString().Trim();}catch(Exception){}
	try{sRS2=Request.Form["txt_Tme"].ToString().Trim();}catch(Exception){}
	try{vKCLB=Request.Form["kclb"].ToString().Trim();}catch(Exception){}

	Response.Output.Write("<form name='form1' method='post' action='SetDoor_WSXK_BTXSKBJ_rpt.aspx?submit=ok'> ");
	try{
		Response.Output.Write(pSub.DrawMain_BTXSKBJ(ThePer,TheAlign,vCDDW,vKC,sRS1,sRS2,vKCLB));
	}catch(Exception){}
	Response.Output.Write("<input type=hidden name=sel_cddw value='"+vCDDW+"'>");
	Response.Output.Write("<input type=hidden name=sel_kc value='"+vKC+"'>");
	Response.Output.Write("<input type=hidden name=txt_Fme value='"+sRS1+"'>");
	Response.Output.Write("<input type=hidden name=txt_Tme value='"+sRS2+"'>");
	Response.Output.Write("</form> ");
}
Response.Output.Write(pSub.page_Bottom_HTML());
%>
<FONT face="宋体"></FONT>
