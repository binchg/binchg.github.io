<%@ Page %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<script language="JavaScript">
function ChkALL(){
var snz,i;
snz=document.all.snz.value;
if(snz>1000){window.status="正在进行全选处理……请稍等片刻"}
if (document.all.SelAll.checked)
for (i=1;i<=snz;i++){eval("document.all.Chk"+i+".checked=true");}
else
for (i=1;i<=snz;i++){eval("document.all.Chk"+i+".checked=false");} 
window.status=""
}
</script>
<%
string vYX="",vZY="",vNJ="";
string vbutton="",vXHstr="";
int R=0;
BLL.XSXJ.XSXJ_XQZC xsxj=new BLL.XSXJ.XSXJ_XQZC();
BLL.XSXJ.XSXJ_XSDA PubObj=new BLL.XSXJ.XSXJ_XSDA(this);
Response.Output.Write(xsxj.HtmlHear());
Response.Output.Write("<form action='h_BYXSLXWL_rpt.aspx' method='post' name='form1'>");
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vbutton=Request.QueryString["button"].ToString();}catch(Exception){vbutton="";}
	if(vbutton=="1")
	{
		try{vXHstr=Request.QueryString["vStr"].ToString();}catch(Exception){vXHstr="";}
		xsxj.SetXSLW(vXHstr,"zx");
	}
	try{vYX=Request.Form["sel_xy"].ToString();}catch(Exception){vYX="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vNJ=Request.Form["sel_nj"].ToString();}catch(Exception){vNJ="";}
	R=xsxj.GetTableBYSLS(vNJ,vYX,vZY,"lx");
}
xsxj.strHead("BYSLS");
Response.Output.Write(xsxj.DrawHearBYSLS());
if (R>0)
{
	Response.Output.Write(xsxj.DrawMainBYSLS());
}
Response.Output.Write("<input type=hidden name='snz' id=snz value="+R+" >");
Response.Output.Write("<input type=hidden name='sel_xy' value="+vYX+" >");
Response.Output.Write("<input type=hidden name='sel_zy' value="+vZY+" >");
Response.Output.Write("<input type=hidden name='sel_nj' value="+vNJ+" >");
Response.Output.Write("</form>");
Response.Output.Write(xsxj.HtmlTrail());
%>
