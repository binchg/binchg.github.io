<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
 private void Page_Load(object sender,System.EventArgs e)
 {
	 try
	 {
		Response.Output.Write((new ind_subPublic()).page_Head_HTML("Index","styles_Qry"));
		Response.Output.Write("<"+"script language='JavaScript' src='../PUB/Scr/ind_HTML_hr.js'>"+"<"+"/script>");
	    string vID="",str="";
	    try{ vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
	    switch(vID.ToUpper())
			{
				case "NEWS":
					str="教务动态";
					break;
				case "DOWN":
					str="文件下载";
					break;
				case "LINK":
					str="友情链接";
					break;
			}
		
		DrawPage(vID,str);
		Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
	 }catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	 }
 }
 
private void DrawPage(string id,string str)
{
	Response.Output.Write("<table align=\"center\" width=\"660px\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" height=\"100%\">\n");
	Response.Output.Write("<tr>\n");
	Response.Output.Write("<td valign=\"middle\" align=\"center\">\n");
	
	Response.Output.Write("<table width=\"660px\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" height='26'>\n");
	Response.Output.Write("<tr>\n<td valign=\"bottom\" align=\"center\"><b>"+str+"</b></td>\n</tr>\n");
	Response.Output.Write("<tr>\n<td valign=\"bottom\" align=\"center\"><"+"Script language=\"JavaScript\">Draw_HR('99.5%')<"+"/script></td>\n</tr>\n");
	Response.Output.Write("</table>\n");
	
	Response.Output.Write("</td>\n</tr>\n");
	Response.Output.Write("<tr>\n<td valign=\"top\" align=\"center\" height=\"100%\" width=\"99%\">\n");
	Response.Output.Write("<iframe name=main src=\"Index_Rpt.aspx?id="+id+"\" width=\"100%\" height=\"100%\" frameborder=0></iframe>\n");
	Response.Output.Write("</td>\n</tr>\n</table>\n");
 }
</script>