<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.admin"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="System.Web" %>
<%
BLL_SetDoor pSub=new BLL_SetDoor();

string[]ThePer=new string[]{"10%","20%","10%","30%","30%"};
string[]TheAlign=new string[]{"center","center","center","",""};
string[]TheHeadStr=new string[]{"序号","开关状态","年级","起始时间","结束时间"};
Response.Output.Write(pSub.page_Head_HTML());
Response.Output.Write("<form name='form1' method='post' action='SetDoor_JXJH_njzypyfa_rpt.aspx'> ");
//提交
if(Request.ServerVariables["REQUEST_METHOD"]=="POST")
{
	try{
		pSub.SaveKG_njzypyfa(this);
	}catch(Exception ex){Response.Output.Write(pSub.Alert("数据存储失败！"));}
}
string vStr=pSub.TotalKG_njzypyfa();
Response.Output.Write(pSub.DrawRptHear(ThePer,TheHeadStr,vStr));
try{
	Response.Output.Write(pSub.DrawMain_njzypyfa(ThePer,TheAlign));
}catch(Exception){}
Response.Output.Write("</form> ");
Response.Output.Write(pSub.page_Bottom_HTML());
%>
