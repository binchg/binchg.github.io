<%@ Page %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%
	BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
	BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
	int R=0;
	string USER_ID=pSub.USER_ID;

	Response.Output.Write(pSub.HtmlHear());
	R=xsxj.GetTebleStuBaseInfo(USER_ID);
	if (R>0){
		Response.Output.Write(xsxj.DrawMainStuBaseInfo());
	}else{
		Response.Redirect ("../_help/sorry.aspx?str=STOP_DOOR");
	}
	Response.Output.Write(pSub.HtmlTrail());
%>