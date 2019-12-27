<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%
string vKC="",vXF="",vZXS="",vKCLB="",vKHFS="",vState="",vCS="",vXH="",vHKYY="";
BLL_kssw pSub=new BLL_kssw(this);
string vXNXQ=BLL_kssw.CUR_XNXQ;

if (Request.ServerVariables["REQUEST_METHOD"]=="POST")
{
	try{vKC=Request.Form["kcdm"].ToString();}catch(Exception){}
	try{vXF=Request.Form["xf"].ToString();}catch(Exception){}
	try{vZXS=Request.Form["zxs"].ToString();}catch(Exception){}
	try{vKCLB=Request.Form["kclb"].ToString();}catch(Exception){}
	try{vKHFS=Request.Form["khfs"].ToString();}catch(Exception){}
	try{vState=Request.Form["state"].ToString();}catch(Exception){}
	try{vCS=Request.Form["cs"].ToString();}catch(Exception){}
	try{vXH=Request.Form["xh"].ToString();}catch(Exception){}
	try{vHKYY=Request.Form["hkyy"].ToString();}catch(Exception){}
	vHKYY=pSub.RequestSafeValue(vHKYY);
	try{pSub._Stu_hksq_SetSQSX(vXH,vXNXQ,vCS,vKC,vXF,vZXS,vKCLB,vKHFS,vHKYY);
	}catch(Exception){}
    Response.Output.Write ("<script language=javascript>opener.location.href='Stu_xshksq_rpt.aspx';window.close();</script>" );
} 


try{vKC=Request.QueryString["vkc"].ToString();}catch(Exception){}
try{vXF=Request.QueryString["vxf"].ToString();}catch(Exception){}
try{vZXS=Request.QueryString["vzxs"].ToString();}catch(Exception){}
try{vKCLB=Request.QueryString["vkclb"].ToString();}catch(Exception){}
try{vKHFS=Request.QueryString["vkhfs"].ToString();}catch(Exception){}
try{vState=Request.QueryString["vstate"].ToString();}catch(Exception){}
try{vCS=Request.QueryString["vcs"].ToString();}catch(Exception){}
try{vXH=Request.QueryString["vxh"].ToString();}catch(Exception){}

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<title>缓考原因</title>
</head>

<body leftmargin="0" topmargin="20" marginwidth="0" marginheight="0">

<form name="form1" action="HKYY.aspx" method="post" >
<div align=center>
<table>
<tr><td>缓考原因<br><textarea name=hkyy  rows="5" style="width:210px;height:100px" wrap="soft" ></textarea></td></tr>
<tr><td align=center><input type="submit" name="Submit" value="确定" class=but20 >&nbsp;<input type="button" name="Submit" value="返回" class=but20 onclick="top.close();"></td></tr>
</table>
<input type=hidden name='kcdm' id=kcdm value=<%=vKC%>>
<input type=hidden name='xf' id=xf value=<%=vXF%> >
<input type=hidden name='zxs' id=zxs value=<%=vZXS%> >
<input type=hidden name='kclb' id=kclb value=<%=vKCLB%> >
<input type=hidden name='khfs' id=khfs value=<%=vKHFS%>>
<input type=hidden name='state' id=state value=<%=vState%>>
<input type=hidden name='cs' id=cs value=<%=vCS%>>
<input type=hidden name='xh' id=state value=<%=vXH%>>
</div>
</form>

</body>
</html>


