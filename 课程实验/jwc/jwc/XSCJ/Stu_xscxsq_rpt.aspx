<%@ Page %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="DAL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System.Data.SqlClient" %>
			
<script language="JavaScript" src='../include/Scr/ind_subPublic.js'></script>
<FONT face=宋体></FONT>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.include.ind_subPublic pub_param=new BLL.include.ind_subPublic(); 
BLL.XSCJ.BLL_STU pSub=new BLL_STU();
DAL.XSCJ.DAL_STU dSub=new DAL_STU();

DataSet rs=new DataSet();
DataSet rs1=new DataSet();
string USER_ID=PubObj.USER_ID;
string USER_ZH=PubObj.USER_ZH;
string USER_NAME=PubObj.USER_NAME;
string USER_LVID=PubObj.USER_LVID;
string USER_BJID=PubObj.USER_BJID;
string USER_LEVEL=PubObj.USER_LEVEL;
string USER_OPTYX=PubObj.USER_OPTYX;
string USER_OPTDW=PubObj.USER_OPTDW;
string schoolcode=pub_param.GetSchoolCode();
//USER_ID="01212026";
string vXNXQ="",vCXXNXQ="",SJ_flag="";
string[] PV=new string[11];
int R=0;
int i=1;
string C_IP=Request.ServerVariables["REMOTE_HOST"].ToString().Trim();
Response.Output.Write (PubObj.HtmlHear("","","Stu_xscxsq_rpt.aspx"));
try{vXNXQ=Request["xnxq"].ToString();}catch(Exception){}
try{SJ_flag=Request["time"].ToString();}catch(Exception){}

if(SJ_flag!="1")
{
	Response.Redirect ("../_help/sorry.aspx?str=非重修报名时间！");
}
if(schoolcode=="12920"||schoolcode=="10078")		//南京化工需求
{
	rs=dSub.sql_cxms(vXNXQ);
	if(rs.Tables[0].Rows.Count>0)
	{
		int ms=(int)rs.Tables[0].Rows[0]["ms"];   //重修报名的课程门数上限	
		rs1=dSub.sql_cxbm(vXNXQ,USER_ID);   
		int cxms=(int)rs1.Tables[0].Rows.Count;  //预选表中已重修报名的课程门数
		
		if (Request.Form["state"]=="申请")
		{	
			if((i+cxms)<=ms)
			{
				PV[0]=vXNXQ.Substring(0,4);
				PV[1]=vXNXQ.Substring(vXNXQ.Length-1,1);
				PV[2]=USER_ID;
				PV[3]=Request.Form["kcdm"].ToString();
				vCXXNXQ=Request.Form["cxxnxq"].ToString();
				PV[4]=vCXXNXQ.Substring(0,4);
				PV[5]=vCXXNXQ.Substring(vCXXNXQ.Length-1,1);
				PV[6]=Request.Form["kclb"].ToString();
				PV[7]=Request.Form["kclb1"].ToString();
				PV[8]=Request.Form["kclb2"].ToString();
				PV[9]=Request.Form["khfs"].ToString();
				PV[10]=Request.Form["ip"].ToString();
				i=pSub.SetSQCXSQ1(PV);			
			}
			else
			{
				Response.Write("<script language=javascript>parent.document.all.theStr.innerHTML='<font color=red>重修报名课程已达到上限："+ms+"门</font>';</script>");
			}
		}
		else if (Request.Form["state"]=="取消") 
		{
			PV[3]=Request.Form["kcdm"].ToString();
			PV[6]=Request.Form["kclb"].ToString();
			pSub.SetQXCXSQ(vXNXQ,USER_ID,PV[3],PV[6]);
			Response.Write("<script language=javascript>parent.document.all.theStr.innerHTML='';</script>");
		}
	}
	else
	{
		if (Request.Form["state"]=="申请")
		{	
			PV[0]=vXNXQ.Substring(0,4);
			PV[1]=vXNXQ.Substring(vXNXQ.Length-1,1);
			PV[2]=USER_ID;
			PV[3]=Request.Form["kcdm"].ToString();
			vCXXNXQ=Request.Form["cxxnxq"].ToString();
			PV[4]=vCXXNXQ.Substring(0,4);
			PV[5]=vCXXNXQ.Substring(vCXXNXQ.Length-1,1);
			PV[6]=Request.Form["kclb"].ToString();
			PV[7]=Request.Form["kclb1"].ToString();
			PV[8]=Request.Form["kclb2"].ToString();
			PV[9]=Request.Form["khfs"].ToString();
			PV[10]=Request.Form["ip"].ToString();
			pSub.SetSQCXSQ(PV);				
		}
		else if (Request.Form["state"]=="取消") 
		{
			PV[3]=Request.Form["kcdm"].ToString();
			PV[6]=Request.Form["kclb"].ToString();
			pSub.SetQXCXSQ(vXNXQ,USER_ID,PV[3],PV[6]);
		}
	}	
}
else
{
	if (Request.Form["state"]=="申请")
	{	
		PV[0]=vXNXQ.Substring(0,4);
		PV[1]=vXNXQ.Substring(vXNXQ.Length-1,1);
		PV[2]=USER_ID;
		PV[3]=Request.Form["kcdm"].ToString();
		vCXXNXQ=Request.Form["cxxnxq"].ToString();
		PV[4]=vCXXNXQ.Substring(0,4);
		PV[5]=vCXXNXQ.Substring(vCXXNXQ.Length-1,1);
		PV[6]=Request.Form["kclb"].ToString();
		PV[7]=Request.Form["kclb1"].ToString();
		PV[8]=Request.Form["kclb2"].ToString();
		PV[9]=Request.Form["khfs"].ToString();
		PV[10]=Request.Form["ip"].ToString();
		pSub.SetSQCXSQ(PV);				
	}
	else if (Request.Form["state"]=="取消") 
	{
		PV[3]=Request.Form["kcdm"].ToString();
		PV[6]=Request.Form["kclb"].ToString();
		pSub.SetQXCXSQ(vXNXQ,USER_ID,PV[3],PV[6]);
	}
}

pSub.ArrayDefineCXSQ();
try{R=pSub.GetTableCXSQ(vXNXQ,USER_ID);
}catch(Exception){}
Response.Output.Write(pSub.DrawRptHead(USER_ID,vXNXQ,R,true));
if (R>0)
{
	try{Response.Output.Write(pSub.DrawRptMainCXSQ(vXNXQ,USER_ID));
	}catch(Exception){}
}
else
{
	Response.Redirect ("../_help/sorry.aspx?str=NO_DATA");
}
Response.Output.Write ("<input type=hidden name=time value="+SJ_flag+">");
Response.Output.Write ("<input type=hidden name=ip value="+C_IP+">");		
Response.Output.Write (PubObj.HtmlTrail());
%>
<script language="JavaScript">
function SQSet(theID)
{
  var nj,zy,kc,state,xnxq,kclb,kclb1,kclb2,khfs
  try{
	state=theID.value;nj=theID.NJ;zy=theID.ZY;kc=theID.KC;xnxq=theID.XNXQ
	kclb=theID.KCLB;kclb1=theID.KCLB1;kclb2=theID.KCLB2;khfs=theID.KHFS;
  }
  catch(e){alert("未知错误,操作终止！");return false;}
  document.all.kclb.value=kclb;
  document.all.kclb1.value=kclb1;
  document.all.kclb2.value=kclb2;
  document.all.khfs.value=khfs;
  document.all.kcdm.value=kc;
  document.all.cxxnxq.value=xnxq;
  document.all.state.value=state;
  theID.disabled=true;
  form1.submit()
}
</script>

