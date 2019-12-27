<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.JXKP.BLL_subPrivate_JXKP SelObj =new BLL_subPrivate_JXKP();
%>

<%
   string vHTML="",vID="",vWD="";
   try{vID=Request.QueryString["id"].ToString();}catch(Exception){vID="";}
   try{vWD=Request.QueryString["wd"].ToString();}catch(Exception){vWD="";}
   vHTML=vHTML+(SelObj.DrawOption("KC",vID,"","")); 
   Response.Output.Write (vHTML);
 %>