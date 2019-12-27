<%@Import NameSpace="BLL.JXJH"%>
<%@Import NameSpace="DAL.JXJH"%>
<%@Import NameSpace="System.Data"%>
<%@ Page Language="C#" %>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTitle="",vRpt="",vNJ="",vZYID="",pydx="",vZYName="",pycc="",pyccName="",fx_flag="";
	float gbxk=0.0f,grxk=0.0f,zbxk=0.0f,zxxk=0.0f,zrxk=0.0f, XJ=0.0f,ZJ=0.0f,sjk=0.0f;
	private_JXJH pJ=new private_JXJH(this);
	DataSet ds=new DataSet();
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_Qry"));
	
	Response.Output.Write(pJ.ScriptBolck(scriptRefresh_ZY()));
	
	try{
			vZYID=Request["zy"].ToString().Trim();
			vNJ=Request["nj"].ToString().Trim();
			vRpt=Request["fx"].ToString().Trim();
		}catch(Exception){}
		string vButton="";
		if(vZYID!=""){
			try{
				vButton=Request["button"].ToString().Trim();
				
			}catch(Exception){}
		}
		
		if(vButton!=""){
		//Addbyxfyq()
		
			string gbxk1="0",grxk1="0";
			try{gbxk1=Request["gbxk"].ToString().Trim();}catch(Exception){}
			try{grxk1=Request["grxk"].ToString().Trim();}catch(Exception){}
			try{zbxk=float.Parse(Request["zbxk"].ToString().Trim());}catch(Exception){}
			try{zxxk=float.Parse(Request["zxxk"].ToString().Trim());}catch(Exception){}
			
			try{zrxk=float.Parse(Request["zrxk"].ToString().Trim());}catch(Exception){}
			try{sjk=float.Parse(Request["sjk"].ToString().Trim());}catch(Exception){}
			try{pycc=Request["pycc"].ToString().Trim();}catch(Exception){}
			try{pydx=Request["pydx"].ToString().Trim();}catch(Exception){}
			
			if(gbxk1=="")
			   gbxk=0.0f;
			else
			   gbxk=float.Parse(gbxk1);
			
			if(grxk1=="")
				grxk=0.0f;
			else
			   grxk=float.Parse(grxk1);
			   
			try{   
				Response.Output.Write(pJ.Addbyxfyq(vNJ,vZYID,pycc,pydx,gbxk,grxk,zbxk,zxxk,zrxk,sjk,vRpt));
			}catch(Exception ek){
				Response.Output.Write(ek.Message.ToString());
			}
		}
		
	//默认值
	if(vRpt=="1")
	{
		DataSet ds1=new DataSet();
		try{ 
			ds1=(new CourseTache()).Set_mrkcxf_Rpt(vNJ,vZYID);
			if(ds1.Tables[0].Rows.Count>0)
			{
				try{gbxk=float.Parse(ds1.Tables[0].Rows[0][0].ToString().Trim());}catch(Exception){}
				try{zbxk=float.Parse(ds1.Tables[0].Rows[0][1].ToString().Trim());}catch(Exception){}
			}
		}catch(Exception ek){
					Response.Output.Write(ek.Message.ToString());
		}
		
		try{
			ds1=(new CourseTache()).Set_mrhjxf_Rpt(vNJ,vZYID);
			if(ds1.Tables[0].Rows.Count>0)
			{
				try{sjk=float.Parse(ds1.Tables[0].Rows[0][0].ToString().Trim());}catch(Exception){}
			}
		}catch(Exception ek){
					Response.Output.Write(ek.Message.ToString());
		}
	}
	
	
	try{
		ds=(new CourseTache()).Set_BYXFYQ_Rpt(vNJ,vZYID,vRpt);
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	if(ds.Tables[0].Rows.Count>0){
	 foreach(DataRow dr in ds.Tables[0].Rows){
		pydx=dr["pydx_id"].ToString().Trim();
		pycc=dr["pycc_id"].ToString().Trim();
		pyccName=dr["mc"].ToString().Trim();
		if(dr[2].ToString().Trim()!="") 
			gbxk=float.Parse(dr[2].ToString().Trim());
		else
			gbxk=0;
		if(dr[3].ToString().Trim()!="")
			grxk=float.Parse(dr[3].ToString().Trim());
		else 
			grxk=0;
		if(dr[4].ToString().Trim()!="")
			zbxk=float.Parse(dr[4].ToString().Trim());
		else
			zbxk=0;
		if(dr[5].ToString().Trim()!="")
			zxxk=float.Parse(dr[5].ToString().Trim());
		else
			zxxk=0;
		if(dr[6].ToString().Trim()!="")
			zrxk=float.Parse(dr[6].ToString().Trim());
		else
			zrxk=0;
		if(dr[8].ToString().Trim()!="")
			sjk=float.Parse(dr[8].ToString().Trim());
		else
			sjk=0;	
	 }
	}
	DataSet ds2=new DataSet();
	try{
		ds2=(new CourseTache()).Set_Byxf_SpecialityInfo(vZYID);
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	if(ds2.Tables[0].Rows.Count>0){
		foreach(DataRow dr in ds2.Tables[0].Rows){
			vZYName=dr[1].ToString().Trim();
			pycc=dr[2].ToString().Trim();
			pyccName=dr[4].ToString().Trim();
			pydx=dr[3].ToString().Trim();
			fx_flag=dr[5].ToString().Trim();
		}
	}
	XJ=gbxk+grxk+zbxk+zxxk+zrxk;
	ZJ=XJ+sjk;
	DrawTable(vRpt,vTitle,vZYID,vNJ,vZYName,pyccName,XJ,ZJ,gbxk,grxk,zbxk,zxxk,zrxk,sjk,pycc,pydx);
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
<script language="C#" runat="server">
private void DrawTable(string vRpt,string vTitle,string vZYID,string vNJ,string vZYName,string pyccName,float XJ,float ZJ,float gbxk,float grxk,float zbxk,float zxxk,float zrxk,float sjk,string pycc,string pydx){
 Response.Output.Write("\n<form name=\"form1\" method=\"post\" action=\"jxjh_setbyxfyq_rpt.aspx\">\n");             
 Response.Output.Write("<table align=center valign=center width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" height=\"100%\" >\n");
 Response.Output.Write("<tr><td width=100% valign=\"middle\" align=\"center\" >\n");
 if(vRpt!="0" && vRpt!="2"){
	 Response.Output.Write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
	 Response.Output.Write("<tr><td colspan=3 align=center><b>{0}</b></td></tr>\n",vTitle);
     Response.Output.Write("<tr>\n");
     Response.Output.Write("<td width=\"21%\" >年级:<font style=\"text-decoration:underline\">{0}</font></td>\n",vNJ);
     Response.Output.Write("<td width=\"43%\" >专业:<font style=\"text-decoration:underline\">{0}</font></td>\n",vZYName);
     Response.Output.Write("<td width=\"36%\" align=right>培养层次:<font style=\"text-decoration:underline\">{0}</font></td>",pyccName);
     Response.Output.Write("</tr>\n</table>\n");

     Response.Output.Write("<table width=\"100%\" height=\"90\" border=\"2px\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#f4fef9\">\n");
     Response.Output.Write("<tr>\n"); 
     Response.Output.Write("<td width=\"9%\" rowspan=\"3\" valign=middle align=center>理论<br>课程</td>\n");
     Response.Output.Write("<td colspan=\"2\" align=\"center\">公共</td>\n");
     Response.Output.Write("<td colspan=\"3\" align=\"center\">专业</td>\n");
     Response.Output.Write("<td width=\"14%\" align=\"center\">小计</td>\n");
     Response.Output.Write("<td width=\"16%\" align=\"center\">总学分</td>\n");
     Response.Output.Write("</tr>\n");
     Response.Output.Write("<tr>\n"); 
     Response.Output.Write("<td width=\"13%\" align=\"center\">必修</td>\n");
     Response.Output.Write("<td width=\"12%\" align=\"center\">任选</td>\n");
     Response.Output.Write("<td width=\"12%\" align=\"center\">必修</td>\n");
     Response.Output.Write("<td width=\"12%\" align=\"center\">限选</td>\n");
     Response.Output.Write("<td width=\"12%\" align=\"center\">任选</td>\n");
     Response.Output.Write("<td width=\"14%\" rowspan=\"2\" align=\"center\"><input type=\"text\" name=\"xj\"  maxlength=\"5\" size=\"4\" value='{0}' readonly style='background-color:#E8E8E8'></td>\n",XJ.ToString());
     Response.Output.Write("<td width=\"16%\" rowspan=\"3\" align=\"center\"><input type=\"text\" name=\"zj\"  maxlength=\"5\" size=\"4\" value='{0}' readonly style='background-color:#E8E8E8'></td>\n",ZJ.ToString());
     Response.Output.Write("</tr>\n");
     Response.Output.Write("<tr>\n"); 
     Response.Output.Write("<td align=\"center\"><input type=\"text\"  maxlength=\"5\" name=\"gbxk\" size=\"4\" value='{0}' onblur=\"ChkValue(this)\"></td>\n",gbxk.ToString());
     Response.Output.Write("<td align=\"center\"><input type=\"text\"  maxlength=\"5\" name=\"grxk\" size=\"4\" value='{0}' onblur=\"ChkValue(this)\"></td>\n",grxk.ToString());
     Response.Output.Write("<td align=\"center\"><input type=\"text\"  maxlength=\"5\" name=\"zbxk\" size=\"4\" value='{0}' onblur=\"ChkValue(this)\"></td>\n",zbxk.ToString());
     Response.Output.Write("<td align=\"center\"><input type=\"text\"  maxlength=\"5\" name=\"zxxk\" size=\"4\" value='{0}' onblur=\"ChkValue(this)\"></td>\n",zxxk.ToString());
     Response.Output.Write("<td align=\"center\"><input type=\"text\"  maxlength=\"5\" name=\"zrxk\" size=\"4\" value='{0}' onblur=\"ChkValue(this)\"></td>\n",zrxk.ToString());
     Response.Output.Write("</tr>\n");
     Response.Output.Write("<tr>\n"); 
     Response.Output.Write("<td height=\"51\" valign=middle align=center>实践<br>环节</td>\n");
     Response.Output.Write("<td colspan=\"5\" align=\"center\"><input type=\"text\" name=\"sjk\" maxlength=\"5\" size=\"4\" value='{0}' onblur=\"ChkValue(this)\"></td>\n",sjk.ToString());
     Response.Output.Write("<td align=\"center\"><input type=\"text\" name=\"xsjk\" maxlength=\"5\" size=\"4\" readonly value='{0}' style='background-color:#E8E8E8'></td>\n",sjk.ToString());
     Response.Output.Write("</tr>\n");
     Response.Output.Write("</table>\n");
 }else{
     Response.Output.Write("<table width=\"100%\" border=\"0\">\n");
	 Response.Output.Write("<tr><td colspan=3 align=center><b>{0}</b></td></tr>\n",vTitle);
     Response.Output.Write("<tr>\n");
     Response.Output.Write("<td width=\"21%\" >年级:<font style=\"text-decoration:underline\">{0}</font></td>\n",vNJ);
     Response.Output.Write("<td width=\"43%\" >专业:<font style=\"text-decoration:underline\">{0}</font></td>\n",vZYName);
     Response.Output.Write("<td width=\"36%\" align=right>培养层次:<font style=\"text-decoration:underline\">{0}</font></td>\n",pyccName);
     Response.Output.Write("</tr>\n");
     Response.Output.Write("</table>\n");
     Response.Output.Write("<table width=\"100%\" height=\"90\" border=\"2px\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#f4fef9\">\n");
     Response.Output.Write("<tr>\n"); 
     Response.Output.Write("<td width=\"9%\" rowspan=\"3\" valign=middle align=center>理论<br>课程</td>\n");
     Response.Output.Write("<td colspan=\"3\" align=\"center\">专业</td>\n");
     Response.Output.Write("<td width=\"12%\" align=\"center\">小计</td>\n");
     Response.Output.Write("<td width=\"14%\" align=\"center\">总学分</td>\n");
     Response.Output.Write("</tr>\n");
     Response.Output.Write("<tr>\n"); 
     Response.Output.Write("<td width=\"24%\" align=\"center\">必修</td>\n");
     Response.Output.Write("<td width=\"23%\" align=\"center\">限选</td>\n");
     Response.Output.Write("<td width=\"20%\" align=\"center\">任选</td>\n");
     Response.Output.Write("<td width=\"12%\" rowspan=\"2\" align=\"center\"><input type=\"text\" name=\"xj\" size=\"4\" maxlength=\"5\" value='{0}' readonly style='background-color:#E8E8E8'></td>\n",XJ.ToString());
     Response.Output.Write("<td width=\"14%\" rowspan=\"3\" align=\"center\"><input type=\"text\" name=\"zj\" size=\"4\" maxlength=\"5\" value='{0}' readonly style='background-color:#E8E8E8'></td>\n",ZJ.ToString());
     Response.Output.Write("</tr>\n<tr>\n"); 
     Response.Output.Write("<td align=\"center\"><input type=\"text\" name=\"zbxk\" size=\"4\" maxlength=\"5\" value='{0}' onblur=FXValue(this)></td>\n",zbxk.ToString());
     Response.Output.Write("<td align=\"center\"><input type=\"text\" name=\"zxxk\" size=\"4\" maxlength=\"5\" value='{0}' onblur=FXValue(this)></td>\n",zxxk.ToString());
     Response.Output.Write("<td align=\"center\"><input type=\"text\" name=\"zrxk\" size=\"4\" maxlength=\"5\" value='{0}' onblur=FXValue(this)></td>\n",zrxk.ToString());
     Response.Output.Write("</tr>\n<tr>\n"); 
     Response.Output.Write("<td height=\"9%\" valign=middle align=center>实践<br>环节</td>\n");
     Response.Output.Write("<td colspan=\"3\" align=\"center\"><input type=\"text\" name=\"sjk\" size=\"4\" maxlength=\"5\" value='{0}' onblur=FXValue(this)></td>\n",sjk.ToString());
     Response.Output.Write("<td align=\"center\"><input type=\"text\" name=\"xsjk\" size=\"4\" maxlength=\"5\" value='{0}' readonly style='background-color:#E8E8E8'></td>\n",sjk.ToString());
     Response.Output.Write("</tr>\n");
     Response.Output.Write("</table>\n");
  }
Response.Output.Write("<input type=hidden name=zy value='{0}'>\n",vZYID);
Response.Output.Write("<input type=hidden name=nj value='{0}'>\n",vNJ);
Response.Output.Write("<input type=hidden name=fx value='{0}'>\n",vRpt);
Response.Output.Write("<input type=hidden name=pycc value='{0}'>\n",pycc);
Response.Output.Write("<input type=hidden name=pydx value='{0}'>\n",pydx);
Response.Output.Write("</td>\n</tr>\n");
Response.Output.Write("</table>\n");
Response.Output.Write("</form>\n");
}
</script>
<script language="JavaScript">
function ChkValue(theID){
  var gbxk,grxk,zbxk,zxxk,zrxk
  if(isNaN(theID.value)){alert("请用数字输入学分下限");theID.focus();theID.select();return;}
  if(theID.value==""){theID.value=0;}
  gbxk=parseFloat(document.all.gbxk.value);
  grxk=parseFloat(document.all.grxk.value);
  zbxk=parseFloat(document.all.zbxk.value);
  zxxk=parseFloat(document.all.zxxk.value);
  zrxk=parseFloat(document.all.zrxk.value);
  document.all.xj.value=gbxk+grxk+zbxk+zxxk+zrxk;
  document.all.xsjk.value=parseFloat(document.all.sjk.value);
  document.all.zj.value=parseFloat(document.all.xj.value)+parseFloat(document.all.xsjk.value);
}

function FXValue(theID){
  var zbxk,zxxk,zrxk
  if(isNaN(theID.value)){alert("请用数字输入学分下限");theID.focus();theID.select();return;}
  if(theID.value==""){theID.value=0;}
  zbxk=parseFloat(document.all.zbxk.value);
  zxxk=parseFloat(document.all.zxxk.value);
  zrxk=parseFloat(document.all.zrxk.value);
  document.all.xj.value=zbxk+zxxk+zrxk;
  document.all.xsjk.value=parseFloat(document.all.sjk.value);
  document.all.zj.value=parseFloat(document.all.xj.value)+parseFloat(document.all.xsjk.value);  
}

</script>
<script language=C#  runat=server>
private string scriptRefresh_ZY(){
  string str=" \n function Refresh_ZY(){ \n";
		 str+="parent.form1.action=\"jxjh_setbyxfyq_left.aspx\";\n";
		 str+="parent.form1.target=\"frameleft\";\n";
		 str+="parent.form1.submit();\n";
		 str+="parent.form1.action=\"jxjh_setbyxfyq_right.aspx\";\n";
		 str+="parent.form1.target=\"frameright\";\n";
		 str+="parent.form1.submit();\n}\n";
 return str;
}
</script>
