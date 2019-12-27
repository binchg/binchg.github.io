<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.admin"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="System.Web" %>
<%
BLL_SetDoor pSub=new BLL_SetDoor();

string[]ThePer=new string[]{"5%","15%","30%","25%","25%"};
string[]TheAlign=new string[]{"center","center","center","center","center"};
string[]TheHeadStr=new string[]{"序号","开关状态","学年学期","起始时间","结束时间"};
Response.Output.Write(pSub.page_Head_HTML());
if(Request.ServerVariables["REQUEST_METHOD"]=="POST")
{
	pSub.SaveKG_XSJC(this);
}
string vStr=pSub.TotalKG_XSJC();
Response.Output.Write("<form name='form1' method='post' action='SetDoor_JCGL_XSJC_rpt.aspx'> ");
Response.Output.Write(pSub.DrawRptHear(ThePer,TheHeadStr,vStr,false));
Response.Output.Write(pSub.DrawMain_XSJC(ThePer,TheAlign));
Response.Output.Write("</form> ");
Response.Output.Write(pSub.page_Bottom_HTML());
%>
