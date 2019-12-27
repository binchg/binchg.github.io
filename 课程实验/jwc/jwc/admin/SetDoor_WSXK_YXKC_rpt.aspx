
<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.admin"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="System.Web" %>
<%
BLL_SetDoor pSub=new BLL_SetDoor();

string[]ThePer=new string[]{"6%","18%","36%","6%","22%","12%"};
string[]TheAlign=new string[]{"center","center","","right","","center"};
string[]TheHeadStr=new string[]{"序号","开关状态","课程","学分","承担单位","需要选教师"};
Response.Output.Write(pSub.page_Head_HTML());
string vSubmit="";
try{vSubmit=Request.QueryString["submit"].ToString().Trim();}catch(Exception){}
if(vSubmit=="ok")
{
	try{
		pSub.SaveKG_YXKC(this);
	}catch(Exception ex){Response.Output.Write(pSub.Alert("数据存储失败！"));}
}
string vStr=pSub.TotalKG_yxkc();
Response.Output.Write(pSub.DrawRptHear_yxkc(ThePer,TheHeadStr,vStr));
if(Request.ServerVariables["REQUEST_METHOD"]=="POST")
{
	string vCDDW="",vKC="";
	try{vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){}
	try{vKC=Request.Form["sel_kc"].ToString().Trim();}catch(Exception){}
	Response.Output.Write("<form name='form1' method='post' action='SetDoor_WSXK_YXKC_rpt.aspx?submit=ok'> ");
	try{
		Response.Output.Write(pSub.DrawMain_YXKC(ThePer,TheAlign,vCDDW,vKC));
	}catch(Exception){}
	Response.Output.Write("<input type=hidden name=sel_cddw value='"+vCDDW+"'>");
	Response.Output.Write("<input type=hidden name=sel_kc value='"+vKC+"'>");
	Response.Output.Write("</form> ");
	
}
Response.Output.Write(pSub.page_Bottom_HTML());
%>