<%@ Page Language="C#" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
string[] vPV = new string[4];
	BLL.XSCJ.BLL_CJJZD pSub=new BLL_CJJZD();
	Response.Write (pSub.HtmlHear());
	pSub.ArrayDefine("XZBJ1");
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{vPV[1]=Request.Form["sel_bj"].ToString();}catch(Exception){vPV[1]="";}
		try{vPV[2]=Request.Form["sel_xnxq"].ToString();}catch(Exception){vPV[2]="";}
		try{Response.Write (pSub.DrawRptMain("XZBJ1",vPV));
		}catch(Exception ){}
	}

Response.Write (pSub.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
