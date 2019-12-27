<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.admin"%>
<%@ Import NameSpace="System" %>
<%@ Page %>
<%
BLL_SetDoor pSub=new BLL_SetDoor();

string[]ThePer=new string[]{"5%","20%","35%","10%","30%"};
string[]TheAlign=new string[]{"center","center","","center",""};
string[]TheHeadStr=new string[]{"序号","开关状态","院(系)/部","年级","专业"};
Response.Output.Write(pSub.page_Head_HTML());
string vSubmit="";
try{vSubmit=Request.QueryString["submit"].ToString().Trim();}catch(Exception){}
if(vSubmit=="ok")
{
	try{
		pSub.SaveKG_xknjzy(this);
	}catch(Exception ex){Response.Output.Write(pSub.Alert("数据存储失败！"));}
}
string vStr=pSub.TotalKG_btxnjzy();
Response.Output.Write(pSub.DrawRptHear(ThePer,TheHeadStr,vStr,true));
if(Request.ServerVariables["REQUEST_METHOD"]=="POST")
{
	string vNJ="",vZY="",vYX="";
	try{vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){}
	try{vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){}
	try{vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){}
	Response.Output.Write("<form name='form1' method='post' action='SetDoor_WSXK_YXZY_rpt.aspx?submit=ok'> ");
	try{
		Response.Output.Write(pSub.DrawMain_XKNJZY(ThePer,TheAlign,vNJ,vYX,vZY,"3"));
	}catch(Exception){}
	Response.Output.Write("<input type=hidden name=sel_nj value='"+vNJ+"'>");
	Response.Output.Write("<input type=hidden name=sel_zy value='"+vZY+"'>");
	Response.Output.Write("<input type=hidden name=sel_yx value='"+vYX+"'>");
	Response.Output.Write("</form> ");
}
Response.Output.Write(pSub.page_Bottom_HTML());
%>
<FONT face="宋体"></FONT>
