<%@ Import NameSpace="BLL.JXJH"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
 //学号
    BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
    string USER_ID="";  //01011001  
    USER_ID=pSub.USER_ID;

	Response.Output.Write((new ind_subPublic()).page_Head_HTML("毕业学分要求","styles_rpt"));
	try{
		Response.Output.Write((new private_JXJH()).Stu_byxfyq(USER_ID).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
 Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>