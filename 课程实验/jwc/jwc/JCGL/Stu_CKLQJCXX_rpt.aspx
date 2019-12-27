<%@ Page %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JCGL.BLL_subPrivate_JCGL PubObj =new BLL_subPrivate_JCGL(this);
BLL.JCGL.BLL_JCGL pSub=new BLL_JCGL();
string USER_ID=PubObj.USER_ID;
string vflag="";
int R=0;

Response.Output.Write (PubObj.HtmlHear(""));
//if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
//{
	pSub.ArrayDefineStuCKLQJCXX();
	R=pSub.GetTableStuCKLQJCXX(USER_ID,vflag);
	if (R>0)
	{
		Response.Output.Write(pSub.DrawRptHead(USER_ID,R));
		Response.Output.Write(pSub.DrawRptMainStuCKLQJCXX());
	}
//}
Response.Output.Write (PubObj.HtmlTrail());
%>
