<%@ Page %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string USER_ID=PubObj.USER_ID;
string USER_ZH=PubObj.USER_ZH;
string USER_NAME=PubObj.USER_NAME;
string USER_LVID=PubObj.USER_LVID;
string USER_BJID=PubObj.USER_BJID;
string USER_LEVEL=PubObj.USER_LEVEL;
string USER_OPTYX=PubObj.USER_OPTYX;
string USER_OPTDW=PubObj.USER_OPTDW;
string vXNXQ="",SJ_flag="",vPJLC="",vPJLX="",PostValue="";
int R=0;

//USER_ID="2003023";


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
		try{Response.Output.Write (pSub.DrawRptMainWSKPJSP_WJ(vXNXQ,USER_ID,vPJLC));
		}catch(Exception){}
	}
	else
	{
		Response.Redirect ("../_help/Sorry.aspx?str=NO_DATA");
	}
}
Response.Output.Write (PubObj.HtmlTrail());

%>
<FONT face="宋体"></FONT>
<script language="JavaScript" type="text/JavaScript">
function MM_openBrWindow(theURL,winName,features){window.open(theURL,winName,features);}
</script>
<script language="javascript" src="../include/Scr/ind_subPublic.js"></script>
