<%@Import NameSpace="BLL.include"%>
<%@Import NameSpace="BLL.admin"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vChk="",vID="",vIP="";
	string[] ThePer,TheAlign,TheHeadStr;
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	
	try{ vChk=Request.Form["snz"].ToString().Trim();}catch(Exception){};
	try{ vID=Request.Form["txtLogID"].ToString().Trim();}catch(Exception){};
	try{ vIP=Request.Form["txtIP"].ToString().Trim();}catch(Exception){};

	ThePer=new string[]{"5%","18%","30%","15%","17%","10%","5%"};
	TheAlign=new string[]{"center","","","center","center","center",""};
	TheHeadStr=new string[]{"序号","管理人员","角色","指定访问IP标记","指定访问时间标记","禁用标记","备注"};

	try{
		 Response.Output.Write((new purviewManage(this)).S_UserQry_rpt(vChk,vID,vIP,ThePer,TheAlign,TheHeadStr));
	}catch(Exception ex){
		Response.Output.Write("发生如下异常:"+ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language="javascript">
function MouseOver(arg){arg.style.cursor='hand';arg.style.color='red';}
function MouseOut(arg){arg.style.color='#2A7CB1';}

function openWin(theID,vT)
{	
    var theURL,w,h,Tform,scr,IsNew;
	scr="no";IsNew='-1';	

	if(vT=='InfoUser'){w=550,h=380;
	eval("Tform='width="+w+",height="+h+"'");
	theURL = '../Admin/S_UserQryInfo.aspx?id='+theID.value;
	scr="yes"
        }
	
    KingoWin(theURL,w,h,"青果软件",scr,IsNew); 
	//pop=window.open(theURL,'KingoEdu-WEB',Tform);pop.moveTo(0,75);	
}
function KingoWin(theURL,w,h,titleWord,scr,IsMove)
{ 
if(IsMove==-1) 
pop=window.open(theURL,"winKPT","width="+w+",height="+h+",scrollbars="+scr+",resizable=no");
else 
pop=window.open(theURL,"winKPT","width="+w+",height="+h+",scrollbars="+scr+",resizable=yes");
pop.moveTo((screen.Width-w)/2,(screen.Height-h)/2);
}
</script>
