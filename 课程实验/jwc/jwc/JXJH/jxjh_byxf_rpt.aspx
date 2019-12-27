<%@Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	//Request-Data
	string vTitle="毕业学分要求列表",vRpt="",vNJ="",vZYStr="",vYX="";
	try{ vRpt=Request.Form["radCx"].ToString().Trim(); }catch(Exception){}	
	try{ vNJ=Request.Form["sel_NJ"].ToString().Trim(); }catch(Exception){}	
	try{ vZYStr=Request.Form["sel_zy"].ToString().Trim(); }catch(Exception){}	
	try{ vYX=Request.Form["sel_xy"].ToString().Trim(); }catch(Exception){}	
	//object-class
	private_JXJH pJ=new private_JXJH(this);
	//Draw-Page-Head
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_Rpt"));
	//Draw-Rpt
	try{
		Response.Output.Write(pJ.view_byxf_rpt(vRpt,vNJ,vZYStr,vYX));
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	//Draw-Page-Bottom
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>

