<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<SCRIPT Language='javascript'>
function SelAll(theID)
{
    var sn,j,s;
	sn=window.document.all.tnum.value;
    if(sn>0)
    {
		 if(window.document.all.selallr.checked==true){s=true;}
	     else{s=false;}
		 for(j=1;j<=sn;j++)eval("document.all.tchk"+j+".checked="+s+";");
	}	
}
</script>
<script language=C# runat=server>
BLL.XSXJ.XSXJ_XQZC xsxj=new BLL.XSXJ.XSXJ_XQZC();
BLL.XSXJ.XSXJ_XSDA PubObj=new BLL.XSXJ.XSXJ_XSDA();
		private void Page_Load(object sender, System.EventArgs e)
		{
			xsxj.strHead("YXBBLZCL");
			string flag=Request["flag"];
			if (flag=="firstload")
			{
				string htmla=xsxj.HtmlHear();
				htmla+="<input type=\"hidden\" name=\"tnum\" value=\"\">";
				htmla+=xsxj.Body_else_yxszxqzc("正常注册学生");
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string vYX=Request["sel_yx"];
				string vZY=Request["sel_zy"];
				string vBJ=Request["sel_bj"];
				string vNJ=Request["sel_nj"];
				string vXMXH=Request["xmxh"];
				string vXNXQ=xsxj.return_xnxq_zc();
				string vXN="";
				string vXQ="";
				if(vXNXQ.Length==5)
				{
					vXN=vXNXQ.Substring(0,4);
					vXQ=vXNXQ.Substring(4,1);
				}
				string html=xsxj.HtmlHear();
				html+=xsxj.Draw_yxbblxqzct(vXN,vXQ,vNJ,vYX,vZY,vBJ,vXMXH);
				Response.Write(html);				
			}
		}
</script>
