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
   string vHTML="",vID="",vWD="",vS="",vS1="",vS2="";
   try{vID=Request.QueryString["id"].ToString();}catch(Exception){vID="";}
   try{vS=Request.QueryString["s"].ToString();}catch(Exception){vS="";}
   try{vS1=vS.Split('|')[0];}catch(Exception){vS1="";}
   try{vS2=vS.Split('|')[1];}catch(Exception){vS2="";}
   try{vWD=Request.QueryString["wd"].ToString();}catch(Exception){vWD="";}
   vHTML=vHTML+(SelObj.DrawOption("XNXQKCJSSKBJ",vID,vS1,vS2)); 
   Response.Output.Write (vHTML);
 %>