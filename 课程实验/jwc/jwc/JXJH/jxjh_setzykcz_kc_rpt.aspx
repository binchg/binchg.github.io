<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.JXJH" %>
<%@ Import NameSpace="DAL.JXJH"%>
<META http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language="C#" runat="server">
public string vKCZ="";
private void Page_Load(object sender,System.EventArgs e)
{	
	string [] ThePer=new string[]{"7%","30%","25%","13%","25%"};
	string [] TheAlign=new string[]{"center","","","center",""};
	string [] TheHeadStr=new string[]{"选择","课程名称","课程类别","学分","课组"};
	
	private_JXJH pJ=new private_JXJH(this);
	CourseTache cT=new CourseTache();
	
	Response.Output.Write(pJ.page_Head_HTML("提交专业课程组","styles_rpt"));
	Response.Output.Write("<form action=\"jxjh_setzykcz_kc_rpt.asp\" method=\"post\" name=\"form1\">");
	Response.Output.Write(pJ.DrawHead_Local(ThePer,TheAlign,TheHeadStr,"150"));
	
	if(Request.ServerVariables["REQUEST_METHOD"].ToString().Trim()=="POST"){
		string vState="",vYX="",vNJ="",vZY="",vRpt="",code1="",code2="",vKCZDM="",zfx_flag="";
		try{
			vState=Request["button"].ToString().Trim();
		}catch(Exception){}
		
		try{
			vYX=Request["Sel_XY"].ToString().Trim();
		}catch(Exception){}
		try{
			vNJ=Request["Sel_nj"].ToString().Trim();
		}catch(Exception){}
		try{
			vZY=Request["Sel_ZY"].ToString().Trim();
		}catch(Exception){}
		try{
			vRpt=Request["radCx"].ToString().Trim();
		}catch(Exception){}
		try{
			vKCZ=Request["KCZ"].ToString().Trim();
		}catch(Exception){}
		
		try{zfx_flag=Request["zfx_flag"].ToString().Trim();
		}catch(Exception){}
		DrawInput(vNJ,vYX,vZY,vRpt,vKCZ,zfx_flag);
		
		try{
			code1=Request["code1"].ToString().Trim();
		}catch(Exception){}
		try{
			code2=Request["code2"].ToString().Trim();
		}catch(Exception){}
		try{
			vKCZDM=Request["kczdm"].ToString().Trim();
		}catch(Exception){}
		
	
		
		if(vState=="edit"){
		// updatekcz()
		//	try{
					cT.updatekcz_kc(vNJ,vZY,vKCZ,code1,code2,zfx_flag);
		//	}catch(Exception t){
		//		Response.Output.Write(t.Message.ToString());
		//	}
		}else if(vState=="add"){
		//addkcz
			try{
					cT.addkcz_kc(vNJ,vZY,vKCZDM,code1,code2,zfx_flag);
				}catch(Exception t){
					Response.Output.Write(t.Message.ToString());
				}
		}else if(vState=="del"){
		//delkcz
			try{
					cT.delkcz_kc(vKCZDM,zfx_flag);
				}catch(Exception t){
					Response.Output.Write(t.Message.ToString());
				}
		}
		
		Response.Output.Write(pJ.SetZYKCZ_KC_Rpt(vNJ,vZY,vRpt,vKCZ,zfx_flag,ThePer,TheAlign,TheHeadStr).ToString());
	}
	Response.Output.Write("</form>");
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
<script language="C#" runat="server">
private void DrawInput(string vNJ,string vYX,string vZY,string vRpt,string vKCZ,string zfx_flag){
	Response.Output.Write("<input type=hidden name=sel_nj value='"+vNJ+"'>");
	Response.Output.Write("<input type=hidden name=sel_xy value='"+vYX+"'>");
	Response.Output.Write("<input type=hidden name=sel_zy value='"+vZY+"'>");
	Response.Output.Write("<input type=hidden name=radCx value='"+vRpt+"'>");
	Response.Output.Write("<input type=hidden name=zfx_flag value='"+zfx_flag+"'>");
	Response.Output.Write("<input type=hidden name=KCZ value='"+vKCZ+"'>");
	Response.Output.Write("<input type=hidden name=kclb value='' OneID=''>");
	
}
</script>
</FORM>
<CENTER></CENTER>
<script language="JavaScript">	
function Setkc(theID){					//选择课程后的处理
var XH=theID.XH;
var ID,kczhx;
if (parent.main1.document.all.sfxz.value!="1" && '<%=vKCZ%>'!='XZ') /////如没有选中课组则不能选课程
{theID.checked=xzhu(XH)}					    /////end
else
{   if(parent.document.all.savekcz.disabled){parent.document.all.savekcz.disabled=false;}
	if(document.all.kclb.value=='')//保证同一课组内的课程类别2相同
	{
		document.all.kclb.OneID=eval("document.all.sx"+XH+".id")+";"
		document.all.kclb.value=eval("document.all.sx"+XH+".KCLB2")
	} 
	else
	{
		if(!chkKclb(theID,XH))
		{
			alert('同一课组内的课程类2别必须相同！');
			return false;
		}
	}											  /////////////////////////end	
		if('<%=vKCZ%>'=='XZ')									///////////////自动计算后选课数	
	{																				
	if(theID.checked){parent.main1.document.all.kczhx.value=parseFloat(parent.main1.document.all.kczhx.value)+1;}
	else {parent.main1.document.all.kczhx.value=parseFloat(parent.main1.document.all.kczhx.value)-1;}
	}
		else
	{ID=parent.main1.document.all.sfxz.XZID.substr(1);
 	kczhx=eval("parent.main1.document.all.T4"+ID+".value");
		if(theID.checked){kczhx=parseFloat(kczhx)+1}
	else{kczhx=parseFloat(kczhx)-1}
	parent.main1.document.all("T4"+ID).value=kczhx;
	}
}   												////////////////////////////end
}



function xzhu(XH)  //恢复复选框值										
{
if(eval("document.all.sx"+XH+".SFYS")=='false')
	{return false;}
	else 
	{return true;}
}

function chkKclb(theID,XH)
{
	if(theID.checked)
	{
		if(document.all.kclb.value!=eval("document.all.sx"+XH+".KCLB2"))
		{
			theID.checked=xzhu(XH)
			return false
		}
		else
		{
			document.all.kclb.OneID+=eval("document.all.sx"+XH+".id")+";"
		}
	}
	else
	{
		document.all.kclb.OneID=document.all.kclb.OneID.replace(eval("document.all.sx"+XH+".id")+";","")
		if(document.all.kclb.OneID=="")
		{
			document.all.kclb.value="";
		}
	}
	return true
}
</script>
