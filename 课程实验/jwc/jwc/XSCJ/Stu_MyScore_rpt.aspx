<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vRAD="",vXH="",vXNXQ="",vRpt="",vXN="",vXQ="",zfx_flag="";
int R=0,M=0;
string vKGValue="",msgstr="";
string schoolcode=(new BLL.include.ind_subPublic()).GetSchoolCode();
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vRpt=Request.Form["sj"].ToString();}catch(Exception){vRpt="";}
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vXN=Request.Form["sel_xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.Form["sel_xq"].ToString();}catch(Exception){vXQ="";}
	try{vRAD=Request.Form["SelXNXQ"].ToString();}catch(Exception){vRAD="";}
	try{zfx_flag=Request.Form["zfx_flag"].ToString();}catch(Exception){zfx_flag="";}
	try{vXH=Request.Form["txt_xm"].ToString();}catch(Exception){vXH="";}
	try{pSub.schoolcode=(new BLL.include.ind_subPublic()).GetSchoolCode();
	}catch(Exception){}
	try{R=pSub.GetTableDGXSCJ(vXN,vXQ,vXH,vRpt,vRAD,zfx_flag);
	}catch(Exception){}
	
	try{
		vKGValue=PubObj.DoorOnOff("CJ_OUTER_JOIN-KP");
		if(vKGValue=="1")
		{
			M=pSub.JudgeXSKP(vXN,vXQ,vXH,vRpt,vRAD);
			if (vRAD=="0")
				msgstr="入学以来有"+M.ToString()+"门课程未进行教学评价,不能查看成绩！"; 
			else if (vRAD=="1")
				msgstr="该学年"+M.ToString()+"门课程未进行教学评价,不能查看成绩！";
			else
				msgstr="该学期有"+M.ToString()+"门课程未进行教学评价,不能查看成绩！"; 
			
    		if (M>0)Response.Redirect ("../_help/sorry.aspx?str="+msgstr);
		}
	}catch(Exception){}
}
pSub.ArrayDefineDGXSCJ(vRpt);
if (R>0)
{
	try{
		if(schoolcode=="13235")	
			Response.Output.Write (pSub.DrawRptHearDGXSCJ_yx_13235(vRpt,vXH,true));
		else							
			Response.Output.Write (pSub.DrawRptMainDGXSCJ(vRpt,vXH,true));
		Response.Output.Write(pSub.CountXSBJPM(vXN,vXQ,vXH,vRpt,vRAD,zfx_flag));
	}catch(Exception){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="宋体"></FONT>
