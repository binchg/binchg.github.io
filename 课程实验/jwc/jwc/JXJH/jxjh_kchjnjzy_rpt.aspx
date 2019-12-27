<%@Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e){
	string vRpt="",vKC="",vNJ1="",vNJ2="",zfx_flag="",vTitle="课程对应年级/专业表";
	private_JXJH pJ=new private_JXJH(this);
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_Rpt"));
	
	string [] ThePer=new string[]{"5%","10%","20%","18%","4%","4%","4%","4%","4%","12%","5%","10%"};
	string [] TheAlign=new string[]{"center","center","","","right","right","right","right","right","center","center","center"};
	string [] TheHeadStr=new string[]{"序号","年级","专业","课程类别","总学时","讲授<br>学时","实验<br>学时","上机<br>学时","其它<br>学时","开设学年学期","考核方式","备注"}; 

	try{ vRpt=Request.Form["radgs"].ToString().Trim();}catch(Exception){}
	try{ vKC=Request.Form["sel_kc"].ToString().Trim();}catch(Exception){}
	try{ vNJ1=Request.Form["sel_nj1"].ToString().Trim();}catch(Exception){}
	try{ vNJ2=Request.Form["sel_nj2"].ToString().Trim();}catch(Exception){}
	try{ zfx_flag=Request.Form["zfx_flag"].ToString().Trim();}catch(Exception){}
	if(vRpt=="2"){
		ThePer=new string[]{"5%","10%","20%","20%","9%","9%","27%"};
		TheAlign=new string[]{"center","center","","","center","center","center"};
		TheHeadStr=new string[]{"序号","年级","专业","内容与要求","学分","周数","开设学年学期"};
		try{ vKC=Request.Form["sel_hj"].ToString().Trim();}catch(Exception){}
	}
	try{
		Response.Output.Write(pJ.View_KCHJNJZY_Rpt(vRpt,vKC,vNJ1,vNJ2,zfx_flag,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
