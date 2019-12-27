
<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<script language=C# runat=server>
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA xsxj=new BLL.XSXJ.XSXJ_XSDA(this);
			string htmla="",vBJ="",vZY="",vYX="",vXNXQ="";
			xsxj.strHead("XSMC");
			htmla+=xsxj.HtmlHear();
			if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
			{
				try{vBJ=Request["sel_bj"].ToString();}catch(Exception){}
				try{vZY=Request["sel_zy"].ToString();}catch(Exception){}
				try{vYX=Request["sel_xy"].ToString();}catch(Exception){}
				try{vXNXQ=Request["sel_xnxq"].ToString();}catch(Exception){}
				htmla+=xsxj.Draw_xsmc(vBJ,vYX,vZY,vXNXQ);
			}
			else
			{
				htmla+=xsxj.DrawHead(9,0);
			}
			
			Response.Write(htmla);
			
			
		}
</script>

<script language=javascript src=../include/Scr/ind_subPublic.js></script>

