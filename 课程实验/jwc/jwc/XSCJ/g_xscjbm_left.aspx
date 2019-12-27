<%@ Page %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vBJ="",vNJ="",vZY="",vYX="",vXN="",vXQ="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXN=Request.Form["sel_xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.Form["sel_xq"].ToString();}catch(Exception){vXQ="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vNJ=Request.Form["sel_nj"].ToString();}catch(Exception){vNJ="";}
	try{vBJ=Request.Form["sel_bj"].ToString();}catch(Exception){vBJ="";}
	try{R=pSub.GetTableXSCJBMKC(vXN,vXQ,vNJ,vYX,vZY,vBJ);
	}catch(Exception ){}
}
pSub.ArrayDefineXSCJBMKC();
Response.Output.Write (pSub.DrawRptHearXSCJBMKC());
if (R>0)
{
	try{
		Response.Output.Write (pSub.DrawMainXSCJBMKC());
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="宋体"></FONT>
<script language="javascript">
function ChkAll(theID)
{
	var iR=0;
	try{iR=window.ID_Table.rows.length;}catch(err){iR=0;}
	if(iR<1) return false;
	if(iR>1000) window.status="正在进行全选处理……请稍等片刻";
	if(theID.checked)
	{
		for(i=1;i<=iR;i++) 
			document.all("chk"+i).checked=true; 
	}
	else
	{
		for(i=1;i<=iR;i++) 
			document.all("chk"+i).checked=false; 
	}
	if(iR>1000) window.status="";
}
</script>
