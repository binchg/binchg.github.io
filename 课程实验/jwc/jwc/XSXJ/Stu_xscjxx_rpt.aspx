<%@ Page %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%
BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;

int R1=0,R2=0;
Response.Output.Write(pSub.HtmlHear());
R2=xsxj.GetTableXSCJXX("1",USER_ID);
if (R2>0){
	xsxj.ArrayDefineXSCJXX("1");
	Response.Output.Write(xsxj.DrawRptHeadXSCJXX(USER_ID,"","1"));
	Response.Output.Write(xsxj.DrawMainXSCJXX(USER_ID,"1"));
	Response.Output.Write("<br>");
}
R1=xsxj.GetTableXSCJXX("0",USER_ID);
if (R1>0){
	xsxj.ArrayDefineXSCJXX("0");
	Response.Output.Write(xsxj.DrawRptHeadXSCJXX(USER_ID,"","0"));
	Response.Output.Write(xsxj.DrawMainXSCJXX(USER_ID,"0"));

}
if (R1+R2==0)Response.End();
//Response.Redirect ("../_help/sorry.aspx?str=NO_DATA");
Response.Output.Write(pSub.HtmlTrail());
%>
<script language=javascript src=../include/Scr/ind_subPublic.js></script>
