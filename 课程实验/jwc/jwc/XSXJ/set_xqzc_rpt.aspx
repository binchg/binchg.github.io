<%@ Import NameSpace="System.Data.SqlClient"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System"%>
<%@ Page %>
<script language="C#" runat="server">
BLL.XSXJ.XSXJ_XQZC xsxj=new BLL.XSXJ.XSXJ_XQZC();
BLL.XSXJ.XSXJ_XSDA PubObj=new BLL.XSXJ.XSXJ_XSDA();
		private void Page_Load(object sender, System.EventArgs e)
		{
			xsxj.strHead("YXBBLZCL");
			string flag=Request["flag"];
			string htmlb=xsxj.java_rpt_zc();
			Response.Write(htmlb);
			if (flag=="firstload")
			{
				//string htmla=xsxj.HtmlHear();
				string htmla=xsxj.Body_else_yxszxqzc("Î´×¢²áÑ§Éú");
				//htmla+=xsxj.test_();
				htmla+=xsxj.HtmlTrail();
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string vBDFlag="0";
				string vYX=Request["sel_yx"];
				string vZY=Request["sel_zy"];
				string vBJ=Request["sel_bj"];
				string vNJ=Request["sel_nj"];
				
				string vXMXH=Request["xmxh"];
				string vXNXQ=xsxj.return_xnxq_zc();
				string vXN="";
				string vXQ="";
				vBDFlag=Request["bdflag"];
				if(vXNXQ.Length==5)
				{
					vXN=vXNXQ.Substring(0,4);
					vXQ=vXNXQ.Substring(4,1);
				}
				string html=xsxj.HtmlHear();
				html+=xsxj.Draw_yxbblxqzcl(vXN,vXQ,vNJ,vYX,vZY,vBJ,vXMXH,vBDFlag);
				//html+=xsxj.HtmlTrail();
				Response.Write(html);				
			}
			else if(flag=="addzc")
			{
			string vBJ=Request["sel_bj"];
			    string thevalue=Request["theval"];
			    string vXNXQ=xsxj.return_xnxq_zc();
				string vXN="";
				string vXQ="";
				if(vXNXQ.Length==5)
				{
					vXN=vXNXQ.Substring(0,4);
					vXQ=vXNXQ.Substring(4,1);
				}
			    int i=Convert.ToInt32(Request["i"].ToString());
			    string htmla=xsxj.addzc(thevalue,i,vXN,vXQ,vBJ);
			    //htmla+=xsxj.HtmlTrail();			    	    
				Response.Write(htmla);
			}
			else if(flag=="delzc")
			{
				string thevalue=Request["theval"];
			    string vXNXQ=xsxj.return_xnxq_zc();
				string vXN="";
				string vXQ="";
				if(vXNXQ.Length==5)
				{
					vXN=vXNXQ.Substring(0,4);
					vXQ=vXNXQ.Substring(4,1);
				}
			    int i=Convert.ToInt32(Request["i"].ToString());
			    string htmla=xsxj.delzc(thevalue,i,vXN,vXQ);
			    //htmla+=HtmlTrail();
			    Response.Write(htmla);
			}
	}
</script>
<FONT face="ËÎÌå"></FONT>
