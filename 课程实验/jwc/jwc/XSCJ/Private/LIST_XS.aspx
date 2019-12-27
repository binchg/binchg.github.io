<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ();
%>

<%
   string vHTML="",vID="",vxnxq="";
   try{vID=Request.QueryString["id"].ToString();}catch(Exception){vID="";}
   vHTML=vHTML+(SelObj.DrawOption("XS",vID,"","")); 
   Response.Write (vHTML);
 %>
