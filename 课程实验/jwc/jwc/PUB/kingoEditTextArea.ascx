<%@ Control Language="c#" AutoEventWireup="false" Codebehind="kingoEditTextArea.ascx.cs" Inherits="KingosoftFrame.kingoEditTextArea" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script type=text/javascript src="./html/EditText.js"></script>
<asp:Literal ID="DrawHtml" Runat="server"></asp:Literal>
<script language=javascript>
	//初始化在线编辑框
	HtmlEdit.document.designMode="on";
	initHtmlEdit();
	function initHtmlEdit()
	{
		if(document.all("HtmlTextCode").value!="")
		{
			HtmlEdit.document.clear();
			HtmlEdit.document.open();
			HtmlEdit.document.write(document.all("HtmlTextCode").value);
			HtmlEdit.document.close();		
		}
	}
</script>