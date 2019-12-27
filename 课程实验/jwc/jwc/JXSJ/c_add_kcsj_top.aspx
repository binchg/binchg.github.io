<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e){
 string vTitle="由承担单位提交课程设计→课程设计题目",vID="",vKTBH="",vKCID="",vTMMC="",vLRYQ="",vBZ="",action="";
 Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
 
 try{ vID=Request.QueryString["vid"].ToString().Trim();}catch(Exception){};
 try{ action=Request.QueryString["action"].ToString().Trim();}catch(Exception){};
  
 try{ vKTBH=Request["ktbh"].ToString().Trim();}catch(Exception){};
 try{ vKCID=Request["kcid"].ToString().Trim();}catch(Exception){};
 try{ vTMMC=Request.Form["tmmc"].ToString().Trim();}catch(Exception){};
 try{ vLRYQ=Request.Form["lryq"].ToString().Trim();}catch(Exception){};
 try{ vBZ=Request.Form["bz"].ToString().Trim();}catch(Exception){}; 
 try{
	 Response.Output.Write((new BLL_jxsj(this))._add_kcsj_top_rpt(action,vID,vKCID,vKTBH,vTMMC,vLRYQ,vBZ).ToString());
 }catch(Exception ex){
	Response.Output.Write(ex.Message.ToString());
 }

 Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>