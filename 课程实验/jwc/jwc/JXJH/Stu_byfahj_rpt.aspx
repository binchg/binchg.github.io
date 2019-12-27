<%@Import NameSpace="BLL.JXJH"%>
<%@Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{

	BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);

   //学号
   string USER_ID="";
   USER_ID=pSub.USER_ID;
   
   string[] ThePer=new string[]{"7%","21%","30%","8%","9%","9%","8%","8%"};
   string[] TheAlign=new string[]{"center","center","","right","","center","right","center"};
   string[] TheHeadStr=new string[]{"序号","学年学期","环节","学分","环节类别","考核方式","周数","备注"};
   
   Response.Output.Write((new ind_subPublic()).page_Head_HTML("实践环节","Styles_Rpt"));
   try{
		//Draw-Rpt
		Response.Output.Write((new private_JXJH()).STU_BYFAHJ(USER_ID,ThePer,TheAlign,TheHeadStr).ToString());
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

	if(vT=='hj'){w=480,h=300;
	eval("Tform='width="+w+",height="+h+"'");
	theURL = '../JXJH/INFO_HJ.aspx?id='+theID.value;

	}
	//KingoWin(theURL,w,h,"青果软件",scr,IsNew); 
	pop=window.open(theURL,'winKPT',Tform);pop.moveTo(0,75);	
}
</script>
<script language="javascript">
function MouseOver(arg){arg.style.cursor='hand';arg.style.color='red';}
function MouseOut(arg){arg.style.color='#2A7CB1';}
</script>