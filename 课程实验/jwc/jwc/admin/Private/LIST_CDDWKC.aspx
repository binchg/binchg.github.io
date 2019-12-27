<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.admin"%>
<%
BLL_SetDoor pSub=new BLL_SetDoor();
%>

<%
   string vHTML="",vID="",vWD="";
   try{vID=Request.QueryString["id"].ToString();}catch(Exception){vID="";}
   try{vWD=Request.QueryString["wd"].ToString();}catch(Exception){vWD="";}
   vHTML=vHTML+(pSub.DrawOption("CDDWKC",vID,"","")); 
   Response.Output.Write (vHTML);
 %>