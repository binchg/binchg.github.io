<%@ Page %>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="System.Data"%>
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
DAL.JXSJ.jxzy_zsj jxzyData=new DAL.JXSJ.jxzy_zsj();
DataSet ds=jxzyData.sql_sj_CommitExpert(nj,zy);
if(xz=="")
  xz=ds.Tables[0].Rows[0][6].ToString() ;
int njs=Convert.ToInt32(nj)-Convert.ToInt32(xz);
BLL.JXSJ.jxzy_zsj jxzy=new BLL.JXSJ.jxzy_zsj();
Response.Output.Write(jxzy.Draw_qdbdzj_top(njs.ToString(),dw));
	//Response.Write(njs);
%>
<script language="JavaScript">
function sel(theID,sss)
{
  //alert(theID.name);
}
</script>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		</head>
  <body MS_POSITIONING="GridLayout">	
  </body>
</html>
