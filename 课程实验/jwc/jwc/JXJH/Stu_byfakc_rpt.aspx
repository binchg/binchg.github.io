<%@ Import NameSpace="BLL.JXJH"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	//学号
	BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
	string USER_ID="";
	USER_ID=pSub.USER_ID;
	
	string vTitle="分专业按理论课程开课计划";
	string[] ThePer=new string[]{"4%","20%","22%","4%","16%","5%","4%","4%","4%","4%","4%","4%","5%"};
	string[] TheAlign=new string[]{"center","center","","right","","center","right","right","right","right","right","right","center"};
	string[] TheHeadStr=new string[]{"序号","学年学期","课程","学<br>分","课程类别","考核<br>方式","总<br>学时","讲授<br>学时","实验<br>学时","上机<br>学时","其它<br>学时","周<br>学时","备注"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_Rpt"));
	try{
		Response.Output.Write((new private_JXJH()).STU_BYFAKC(USER_ID,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language="javascript">
function openWin(theID,vT)
{	
	var theURL,w,h,Tform,scr,IsNew;
	scr="no";IsNew='0';	

	if(vT=='kc'){w=480,h=300;
	eval("Tform='width="+w+",height="+h+"'");
	theURL = '../JXJH/INFO_KC.aspx?id='+theID.value;

	}
	//KingoWin(theURL,w,h,"青果软件",scr,IsNew); 
	pop=window.open(theURL,'winKPT',Tform);pop.moveTo(0,75);	
}
</script>
<script language="javascript">
function MouseOver(arg){arg.style.cursor='hand';arg.style.color='red';}
function MouseOut(arg){arg.style.color='#2A7CB1';}
</script>