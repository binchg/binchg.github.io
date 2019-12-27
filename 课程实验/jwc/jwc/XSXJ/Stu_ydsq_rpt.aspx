<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Page %>
<%

BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
int R=0;
string vXNXQ=xsxj.GetYDSQXNXQ();
if(vXNXQ=="") Response.Redirect ("../_help/sorry.aspx?str=STOP_DOOR");
bool DoorValue=pSub.TimeArea("YDSQ","");
if(!DoorValue) Response.Redirect ("../_help/sorry.aspx?str=STOP_DOOR");
string USER_ID=pSub.USER_ID;

string SubmitStr="";
string vLB="",vYY="",vBZ="";
Response.Output.Write(pSub.HtmlHear());
try{SubmitStr=Request.Form["SetSQ"].ToString();}catch(Exception){SubmitStr="";}
if (SubmitStr=="申请") 
{
	try{vLB=Request.Form["sel_ydlb"].ToString();}catch(Exception){vLB="";}
	try{vYY=Request.Form["sel_ydyy"].ToString();}catch(Exception){vYY="";}
	try{vBZ=Request.Form["txt_memo"].ToString();}catch(Exception){vBZ="";}
	if(xsxj.ydsqWring(vXNXQ,USER_ID,vLB))
	{
		Response.Output.Write("<script language=javascript>alert('拒绝申请！(原因：该学年学期该异动类别你已经异动过了)')</script>");
	}
	else
	{
		xsxj.SaveMEYDSQ(vXNXQ,USER_ID,vLB,vYY,vBZ);
	}
}
else if (SubmitStr=="取消") 
{
	try{vLB=Request.Form["hid_lb"].ToString();}catch(Exception){vLB="";}
	xsxj.DelMEYDSQ(vXNXQ,USER_ID,vLB);
	
}


Response.Output.Write("<form name=form1 action=Stu_ydsq_rpt.aspx method=post>");
Response.Output.Write(xsxj.DrawMainYDSQ(USER_ID,vXNXQ));
Response.Output.Write("</form>");
Response.Output.Write(pSub.HtmlTrail());
%>