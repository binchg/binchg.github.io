<%@ Page %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<script language=C# runat=server>
private void Page_Load(object sender, System.EventArgs e)
{
	BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
	string[] vPV = new string[4];
	BLL.XSCJ.BLL_CJJZD pSub=new BLL_CJJZD();
	Response.Write (pSub.HtmlHear());
	pSub.ArrayDefine("XZBJKC");
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		
		try{vPV[0]=Request.Form["sel_kc"].ToString();}catch(Exception){vPV[0]="";}
		try{vPV[1]=Request.Form["sel_xzbj"].ToString();}catch(Exception){vPV[1]="";}
		try{vPV[2]=Request.Form["sel_xnxq"].ToString();}catch(Exception){vPV[2]="";}
		try{vPV[3]=Request.Form["hid_userid"].ToString();}catch(Exception){vPV[3]="";}
		try{Response.Write (pSub.DrawRptMain("XZBJKC",vPV));
		}catch(Exception ){}
	}

	Response.Write (pSub.HtmlTrail());

}
</script>

