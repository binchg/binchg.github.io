<%@ Import NameSpace="BLL.JXJH"%>
<%@ Import NameSpace="System.Text"%>
<%@ Page Language="C#" %>

<script language=C# runat=server>
private void Page_Load(object sender,System.EventArgs e){
  string vID="",vNJ="",vZY="";
	try{
		vID=Request.QueryString["id"].ToString();
		vNJ=Request.QueryString["nj"].ToString();
		vZY=Request.QueryString["zy"].ToString();
		private_JXJH pj=new private_JXJH(this);
		Response.Output.Write(pj.ScriptBolck_InnerHTML("theZY",pj.LIST_JHSet_YXZY(vID,vNJ,vZY)));
	}catch(Exception){}
}
</script>
<script language=C# runat=server>
  
</script>

