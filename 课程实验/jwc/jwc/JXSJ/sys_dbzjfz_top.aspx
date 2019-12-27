<%@ Page %>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<HTML>
	<HEAD>
		<title>毕业设计安排</title>
<%
BLL.JXSJ.BLL_jxsj pSub=new BLL.JXSJ.BLL_jxsj(this);
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;

string nj=Request["nj"];
string dw=Request["dw"];
string zy=Request["zy"];
string xz=Request["xz"];
string types=Request["types"];
int njs=Convert.ToInt32(nj)-Convert.ToInt32(xz);
BLL.JXSJ.jxzy_zsj jxzy=new BLL.JXSJ.jxzy_zsj();
string xq="0";string xn="";
try
{
  xq=BLL.include.ind_subPublic.Cur_xnxq.ToString().Substring(4,1);
  xn=BLL.include.ind_subPublic.Cur_xnxq.ToString().Substring(0,4);
}
catch{}
string theval=Request["theval"];
DAL.JXSJ.jxzy_zsj dat=new DAL.JXSJ.jxzy_zsj();
int Counts=0;
if(theval!="")
 {
    try{
       string[] theValue=theval.Split(';');
       Counts=theValue.Length;
       for(int i=0;i<Counts;i++)
       {
        try
        {  
            if(types=="1")
			   dat.insertZJ(njs.ToString(),zy.ToString(),theValue[i].ToString(),xn.ToString(),xq.ToString());
			 else if(types=="2")
			   dat.delZJ(njs.ToString(),zy.ToString(),theValue[i].ToString(),xn.ToString(),xq.ToString());
		}catch{}
       }
    }catch{}
 }
	Response.Output.Write(jxzy.Draw_bdzjfz_top(njs.ToString(),zy));
	//Response.Write(njs);
%>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		</head>
  <body MS_POSITIONING="GridLayout">
	
    <form id="Form1" method="post" runat="server">

     </form>
	
  </body>
</html>
