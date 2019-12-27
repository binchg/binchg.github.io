<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.include"%>
<%@Import NameSpace="BLL.JXJH"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{  //define-data
	string vZY="",vXNXQ="",vTitle="公共任选课列表";
    string[] ThePer=new string[]{"4%","27%","5%","6%","6%","6%","6%","6%","5%","21%","8%"};
    string[] TheAlign=new string[]{"center","","center","center","center","center","center","center","center","","center"};
    string[] TheHeadStr=new string[]{"序号","课程","学分","总<br>学时","讲授<br>学时","实验<br>学时","上机<br>学时","其它<br>学时","周<br>学时","承担单位","适应年级<br>专业"};
    ind_subPublic iP=new ind_subPublic();
    //Draw-HTML-Head
    Response.Output.Write(iP.page_Head_HTML(vTitle,"styles_Rpt"));
     try{ vZY=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
     try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
     
     //Draw-Rpt
     try{
		Response.Output.Write((new private_JXJH(this)).GGRX_Rpt(vZY,"",vXNXQ,ThePer,TheAlign,TheHeadStr).ToString());
     }catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	 }
	 
    //Draw-HTML-Bottom
    Response.Output.Write(iP.page_Bottom_HTML());
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

	}else if(vT=='hj'){w=480,h=260;
	eval("Tform='width="+w+",height="+h+"'");
        theURL = '../JXJH/INFO_HJ.aspx?id='+theID.value;

	}else if(vT=='KC_Change'){w=500,h=350; //IsNew=false;
	eval("Tform='width="+w+",height="+h+"'");
	theURL = './INFO_KC_Change.aspx?id='+theID.value;

       	}else if(vT=='HJ_Change'){w=500,h=240; //IsNew=false;
	eval("Tform='width="+w+",height="+h+"'");
	theURL = './INFO_HJ_Change.aspx?id='+theID.value;

        }else if(vT=='mod_kc'){w=690,h=260;
	eval("Tform='width="+w+",height="+h+"'");
        theURL = '../JXJH/mod_KC.aspx?id='+theID.value;
        
	}else if(vT=='mod_hj'){w=580,h=240;
	eval("Tform='width="+w+",height="+h+"'");
        theURL = '../JXJH/mod_HJ.aspx?id='+theID.value;

	}else if(vT=='syzy'){w=500,h=300; scr="yes";
	eval("Tform='width="+w+",height="+h+"'");
	theURL = './INFO_SYZY.aspx?id='+theID.value;       
        }

	
	//KingoWin(theURL,w,h,"青果软件",scr,IsNew); 
	pop=window.open(theURL,'winKPT',Tform);pop.moveTo(0,75);	
}
</script>
<script language="javascript">
function MouseOver(arg){arg.style.cursor='hand';arg.style.color='red';}
function MouseOut(arg){arg.style.color='#2A7CB1';}
</script>
