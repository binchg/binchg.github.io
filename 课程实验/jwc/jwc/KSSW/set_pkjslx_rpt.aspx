<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string s="",vXNXQ="",vXN="",vKS="",vCDDW="",vKC="",vTitle="提交课程需要的教室类型";
	string snz="",xn="",xq="",ksdm="",kcdmStr="",pcStr="",jslxStr="";
	
	string[] ThePer=new string[]{"20%","39%","8%","8%","25%"};
	string[] TheAlign=new string[]{"","","right","center","center"};
	string[] TheHeadStr=new string[]{"承担单位","课程","学分","批次","排考需要的教室类型"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	
	//rpt
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
	
	//save
	try{ s=Request.Form["s"].ToString().Trim();}catch(Exception){};
	try{ snz=Request.Form["snz"].ToString().Trim();}catch(Exception){};
	try{ xn=Request.Form["xn"].ToString().Trim();}catch(Exception){};
	try{ xq=Request.Form["xq"].ToString().Trim();}catch(Exception){};
	try{ ksdm=Request.Form["ksdm"].ToString().Trim();}catch(Exception){};
	
	try{
		if(snz=="") snz="0";
		int m=int.Parse(snz);
		if(m>0){
			for(int i=1;i<=m;i++){
				try{ kcdmStr+=Request.Form["kcdm"+i.ToString()].ToString().Trim()+"|"; }catch(Exception){};
				try{ pcStr+=Request.Form["pc"+i.ToString()].ToString().Trim()+"|"; }catch(Exception){};
				try{ jslxStr+=Request.Form["seljslx"+i.ToString()].ToString().Trim()+"|"; }catch(Exception){};
			}
		}
	}catch(Exception ec){
		Response.Output.Write("发生如下异常："+ec.Message.ToString());
	}
		
		
	try{
		Response.Output.Write((new BLL_kssw(this))._setPkjslx_rpt(vXNXQ,vKS,vCDDW,vKC,s,snz,xn,xq,ksdm,kcdmStr,pcStr,jslxStr,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
		
	Response.Output.Write("</form>\n");
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>