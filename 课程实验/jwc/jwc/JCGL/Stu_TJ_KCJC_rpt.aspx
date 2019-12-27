<%@ Page %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JCGL.BLL_subPrivate_JCGL PubObj =new BLL_subPrivate_JCGL(this);
BLL.JCGL.BLL_JCGL pSub=new BLL_JCGL();
string vXNXQ="",p,KGstr="";
string USER_ID=PubObj.USER_ID;
int R=0;

KGstr=pSub.TimeAreaStuTJKCJC_ZT();
try{vXNXQ=Request.QueryString["xnxq"].ToString();}catch(Exception){vXNXQ="";}
try{p=Request.QueryString["p"].ToString();}catch(Exception){p="";}
if (p=="up")
{
	string chkval="",selval="";
	try{chkval=Request.QueryString["thePOST"].ToString();}catch(Exception){chkval="";}	
	try{selval=Request.QueryString["theP0ST1"].ToString();}catch(Exception){selval="";}
	if(KGstr=="1")
	{
		pSub.SaveValueStuTJKCJC(chkval,selval);
	}
	else
	{
		pSub.SaveValueStuTJKCJC_ZT(chkval,selval);
	}
}
Response.Output.Write (PubObj.HtmlHear(""));
if(KGstr=="1")
{
	pSub.ArrayDefineStuTJKCJC();
	R=pSub.GetTableStuTJKCJC(vXNXQ,USER_ID);
}
else
{
	pSub.ArrayDefineStuTJKCJC_ZT();
	R=pSub.GetTableStuTJKCJC_ZT(vXNXQ,USER_ID);
}
if(R==0)
{
	Response.Output.Write ("<script language=javascript>parent.stylebutton.style.display='none';");
	Response.Output.Write ("parent.frmRpt.location.href='../_help/sorry.aspx?str=NO_DATA';</script>");
}
Response.Output.Write (pSub.DrawRptHead(USER_ID,vXNXQ,R,true));
if(KGstr=="1")
{
	Response.Output.Write (pSub.DrawRptMainStuTJKCJC());
}
else
{
	Response.Output.Write (pSub.DrawRptMainStuTJKCJC_ZT());
}

Response.Output.Write ("<script language=javascript>");
Response.Output.Write ("parent.document.all.count.value="+R.ToString()+";");
Response.Output.Write ("parent.document.all.btn_search.disabled=false;");
Response.Output.Write ("</script>");
Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
