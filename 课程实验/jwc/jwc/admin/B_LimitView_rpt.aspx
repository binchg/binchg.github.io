<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<%@Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string radKG1="",radKG2="",radKG3="";

	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Qry"));
	BLL_SetDoor pSub=new BLL_SetDoor();
	try{ radKG1=Request.Form["radKG1"].ToString().Trim();}catch(Exception){};
	try{ radKG2=Request.Form["radKG2"].ToString().Trim();}catch(Exception){};
	try{ radKG3=Request.Form["radKG3"].ToString().Trim();}catch(Exception){};

	if(Request.ServerVariables["REQUEST_METHOD"]=="POST")
	{
		try{
			Response.Output.Write(pSub.SaveBBS_XSYHXX(radKG1,radKG2,radKG3));
		}catch(Exception ex){
			Response.Output.Write(ex.Message.ToString());
		}
	}
	try{
		Response.Output.Write((new BLL_SetDoor()).BBS_ViewUserInfo_Rpt().ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>