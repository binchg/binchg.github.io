<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKSLC="",vCDDW="",vKCID="",vValue="",vValue1="",vKSCS="",thetemp="",vTitle="提交需安排考试课程";
	string[] ThePer=new string[]{"9%","7%","5%","11%","15%","5%","5%","3%","15%","15%","10%"};
	string[] TheAlign=new string[]{"","center","right","center","","right","center","center","center","center",""};
	string[] TheHeadStr=new string[]{"任课教师","上课班级","上课人数","结束节序","行政班级","上课人数","确定考试","批次","起始日期","结束日期","考试时间"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	Response.Output.Write("\n<iframe name=rpt src=\"\" style='display:none;width:0;height:0' frameborder=0></iframe>\n");
	Response.Output.Write("<form name=\"form1\" method=\"post\" action=\"\" target=\"rpt\" >\n");
	
	try{ vXNXQ=Request.QueryString["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKSLC=Request.QueryString["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.QueryString["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKCID=Request.QueryString["sel_kc"].ToString().Trim();}catch(Exception){};
	
	//savesub
	try{ vValue=Request.QueryString["val"].ToString().Trim();}catch(Exception){};
	try{ vValue1=Request.QueryString["val1"].ToString().Trim();}catch(Exception){};
	try{ vKSCS=Request.QueryString["val2"].ToString().Trim();}catch(Exception){};
	
	if(vValue=="") vValue="0";
	int k=int.Parse(vValue);
	
	if(k>0){
		for(int i=1;i<=k;i++){
			try{ thetemp+=Request.Form["save"+i.ToString()].ToString().Trim()+"|";}catch(Exception){};
		}
	}
	
	try{
		Response.Output.Write((new BLL_kssw(this))._setPkkc_rpt(vXNXQ,vKSLC,vCDDW,vKCID,vValue,vValue1,vKSCS,thetemp,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write("</form>\n");
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language=javascript>
function op(theVP,theID,kcdm,skbj,bjdm)
{
 var i,theNum,thePc,theQssj,theJssj,theKssj,XzbjFlag,SkbjFlag,id;
 try{
    thePc=parent.document.all.sel_pc.value;
	id=parent.document.all.sel_ksrq;
 	theQssj=id.options[id.selectedIndex].value;
	if(theQssj==''){theQssj=id.options[1].value;}
	
	id=parent.document.all.sel_jsrq;
 	theJssj=id.options[id.selectedIndex].value;
	if(theJssj==''){theJssj=id.options[id.options.length-1].value;}
	
	//theKssj=parent.document.all.sel_kscc.value;
	id=parent.document.all.sel_kscc;
 	theKssj=id.options[id.selectedIndex].value;
	//if(theKssj==''){theKssj=id.options[1].value;}
	
	
 	if(parent.document.all.sel_chk1.checked==true){SkbjFlag='1';XzbjFlag='0';}
 	else{SkbjFlag='0';XzbjFlag='1';}
 	theNum=eval("document.all."+theVP+".all.tags('tr').length");
	if(theID.checked==true){
		if(SkbjFlag=='1'){
			for(i=1;i<=theNum;i++){
				if(eval("document.all.sel"+kcdm+i+".value=='"+skbj+"'")){
					eval("document.all.chk"+kcdm+i+".checked=true;");
					eval("document.all.selpc"+kcdm+i+".value='"+thePc+"';");
					eval("document.all.selqssj"+kcdm+i+".value='"+theQssj+"';");
					eval("document.all.seljssj"+kcdm+i+".value='"+theJssj+"';");
					eval("document.all.selkssj"+kcdm+i+".value='"+theKssj+"';");
				}
			}
		}
		else{
			for(i=1;i<=theNum;i++){
			    
				if(eval("document.all.sel"+kcdm+i+".value=='"+skbj+"'")&&eval("document.all.selbj"+kcdm+i+".value=='"+bjdm+"'")){
					eval("document.all.chk"+kcdm+i+".checked=true;");
					eval("document.all.selpc"+kcdm+i+".value='"+thePc+"';");
					eval("document.all.selqssj"+kcdm+i+".value='"+theQssj+"';");
					eval("document.all.seljssj"+kcdm+i+".value='"+theJssj+"';");
					eval("document.all.selkssj"+kcdm+i+".value='"+theKssj+"';");
				}
			}
		}
	}else{
		if(SkbjFlag=='1'){
			for(i=1;i<=theNum;i++){
				if(eval("document.all.sel"+kcdm+i+".value=='"+skbj+"'")){
					eval("document.all.chk"+kcdm+i+".checked=false;");
					eval("document.all.selpc"+kcdm+i+".value='';");
					eval("document.all.selqssj"+kcdm+i+".value='';");
					eval("document.all.seljssj"+kcdm+i+".value='';");
					eval("document.all.selkssj"+kcdm+i+".value='';");
				}
			}
		}
		else{
			for(i=1;i<=theNum;i++){
				if(eval("document.all.sel"+kcdm+i+".value=='"+skbj+"'")&&eval("document.all.selbj"+kcdm+i+".value=='"+bjdm+"'")){
					eval("document.all.chk"+kcdm+i+".checked=false;");
					eval("document.all.selpc"+kcdm+i+".value='';");
					eval("document.all.selqssj"+kcdm+i+".value='';");
					eval("document.all.seljssj"+kcdm+i+".value='';");
					eval("document.all.selkssj"+kcdm+i+".value='';");
				}
			}
		}
	}
 }
 catch(e){}
}
</script>