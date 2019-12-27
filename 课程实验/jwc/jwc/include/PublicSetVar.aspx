<%@ Page %>
<%@ Import NameSpace="BLL.JXJH" %>
<script language=C# runat=server>
 private void Page_Load(object sender,System.EventArgs e)
 {
	string p="";
	string id="";
	string flag="";
	string nj="";
	string zy="";
	string kc="";
	string syxm="";
	string sys="";
	
	try{p=Request["p"].ToString();}catch(Exception){}
	try{id=Request["id"].ToString();}catch(Exception){}
	try{flag=Request["flag"].ToString();}catch(Exception){}
	try{nj=Request["nj"].ToString();}catch(Exception){}
	try{zy=Request["zy"].ToString();}catch(Exception){}
	try{kc=Request["kc"].ToString();}catch(Exception){}
	try{syxm=Request["syxm"].ToString();}catch(Exception){}
	try{sys=Request["sys"].ToString();}catch(Exception){}
	BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH();
	try
	{
		Response.Output.Write(pSub.JXJH_SetVar(p,id,flag,nj,zy,kc,syxm,sys));
	}
	catch(Exception)
	{
		
	}
 }
</script>