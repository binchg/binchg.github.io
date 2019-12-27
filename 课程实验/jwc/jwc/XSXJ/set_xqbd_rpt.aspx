<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<script language=C# runat=server>
BLL.XSXJ.XSXJ_XQZC xsxj=new BLL.XSXJ.XSXJ_XQZC();
		private void Page_Load(object sender, System.EventArgs e)
		{
			xsxj.strHead("YXBBLZCL");
			string flag=Request["flag"];
			string htmlb=xsxj.java_rpt();
			Response.Write(htmlb);
			if (flag=="firstload")
			{
				string htmla=xsxj.HtmlHear();
				htmla+=xsxj.Body_else_yxszxqzc("未报到学生");
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string vYX=Request["sel_yx"];
				string vZY=Request["sel_zy"];
				string vBJ=Request["sel_bj"];
				string vNJ=Request["sel_nj"];
				string vXMXH=Request["xmxh"];
				string vXNXQ=xsxj.return_xnxq();
				string vXN="";
				string vXQ="";
				if(vXNXQ.Length==5)
				{
					vXN=vXNXQ.Substring(0,4);
					vXQ=vXNXQ.Substring(4,1);
				}
				string html=xsxj.HtmlHear();
				html+=xsxj.Draw_yxbblxqbdl(vXN,vXQ,vNJ,vYX,vZY,vBJ,vXMXH);
				Response.Write(html);				
			}
			else if(flag=="addbd")
			{
			    string thevalue=Request["theval"];
			    string vXNXQ=xsxj.return_xnxq();
				string vXN="";
				string vXQ="";
				if(vXNXQ.Length==5)
				{
					vXN=vXNXQ.Substring(0,4);
					vXQ=vXNXQ.Substring(4,1);
				}
			    int i=Convert.ToInt32(Request["i"].ToString());
			    //string htmla=xsxj.java_rpt();
			    string htmla=xsxj.adds(thevalue,i,vXN,vXQ);			    	    
				Response.Write(htmla);
			}
			else if(flag=="delbd")
			{
				string thevalue=Request["theval"];
			    string vXNXQ=xsxj.return_xnxq();
				string vXN="";
				string vXQ="";
				if(vXNXQ.Length==5)
				{
					vXN=vXNXQ.Substring(0,4);
					vXQ=vXNXQ.Substring(4,1);
				}
			    int i=Convert.ToInt32(Request["i"].ToString());
			   // string htmla=xsxj.java_rpt();
			     string htmla=xsxj.dels(thevalue,i,vXN,vXQ);
			    Response.Write(htmla);
			}
			else if(flag=="addbbd")
			{
			    string yy=Request["yy"];
				string thevalue=Request["theval"];
			    string vXNXQ=xsxj.return_xnxq();
				string vXN="";
				string vXQ="";
				if(vXNXQ.Length==5)
				{
					vXN=vXNXQ.Substring(0,4);
					vXQ=vXNXQ.Substring(4,1);
				}
			    int i=Convert.ToInt32(Request["i"].ToString());			    
			    string htmla=xsxj.addbs(thevalue,i,vXN,vXQ,yy);
			    Response.Write(htmla);
			}
			else if(flag=="delbbd")
			{
				string thevalue=Request["theval"];
			    string vXNXQ=xsxj.return_xnxq();
				string vXN="";
				string vXQ="";
				if(vXNXQ.Length==5)
				{
					vXN=vXNXQ.Substring(0,4);
					vXQ=vXNXQ.Substring(4,1);
				}
			    int i=Convert.ToInt32(Request["i"].ToString());			    
			    string htmla=xsxj.delbs(thevalue,i,vXN,vXQ);
			    Response.Write(htmla);
			}
			
		}
</script>
