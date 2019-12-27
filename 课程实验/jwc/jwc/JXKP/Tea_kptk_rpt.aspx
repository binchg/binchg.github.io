<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string USER_ID=PubObj.USER_ID;
string vXNXQ="",SJ_flag="",vPJLC="",vPJLX="",PostValue="";
int R=0;

Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	//*******时间区段*********
	try{PostValue=Request.Form["sel_lc"].ToString();}catch(Exception){}
	
	try{SJ_flag=PostValue.Split('|')[3];}catch(Exception){}
	try{vPJLC=PostValue.Split('|')[1];}catch(Exception){}
	try{vPJLX=PostValue.Split('|')[2];}catch(Exception){}
	if (SJ_flag!="1")
	{
		Response.Redirect ("../_help/Sorry.aspx?str=非教学评价时间！");
	}
	try{vXNXQ=PostValue.Split('|')[0];}catch(Exception){}
	//********end*********

	pSub.ArrayDefineWSKPJSP();
	try{R=pSub.GetTableWSKPJSP(vXNXQ,USER_ID,vPJLC);
	}catch(Exception){}
	if (R>0)
	{
		try{Response.Output.Write (pSub.DrawRptMainWSKPJSP_TK(vXNXQ,USER_ID,vPJLC));
		}catch(Exception){}
	}
	else
	{
		Response.Redirect ("../_help/Sorry.aspx?str=NO_DATA");
	}
}
Response.Output.Write (PubObj.HtmlTrail());
%>

<script language="JavaScript" type="text/JavaScript">
function MM_openBrWindow(theURL,winName,features){window.open(theURL,winName,features);}
</script>
<script language=javascript src=../include/Scr/ind_subPublic.js></script>