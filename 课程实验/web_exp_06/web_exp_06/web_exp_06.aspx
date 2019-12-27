<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web_exp_06.aspx.cs" Inherits="web_exp_06.web_exp_06" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <style> 
.Freezing 
   { 
    
   position:relative ; 
   table-layout:fixed;
   top:expression(this.offsetParent.scrollTop);   
   z-index: 10;
   }

.Freezing th{text-overflow:ellipsis;overflow:hidden;white-space: nowrap;padding:2px;}

.boxing{
    width:200px;
    background:rgba(17, 120, 172, 0.93);
    font-size:20px;
    color:#ffffff;
    padding:0px;
    border:#fff;

}
.choose{
    width:50px;
    height:30px;
    background:#006699;
    color:#ffffff;
    padding:2px;
    border:#fff;
}
.showing input
{
    width:auto;
    height:30px;
    background:#ffffff;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
           <asp:TextBox ID="we_id" runat="server"   CssClass="boxing" ></asp:TextBox>
           <asp:TextBox ID="we_theme" runat="server"  CssClass="boxing" ></asp:TextBox>
           <asp:TextBox ID="we_title" runat="server"  CssClass="boxing" ></asp:TextBox>
           <asp:TextBox ID="we_content" runat="server"  CssClass="boxing" ></asp:TextBox>
           <asp:Button ID="Button1" runat="server" OnClick="ButtonAdd_Click"  Text="添加" CssClass="choose"/> 
         </div>
        <div style="overflow-y: scroll; height: auto;width:auto;" id="dvBody">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
        ForeColor="#333333" GridLines="None" DataKeyNames="we_id" 
        AllowSorting="True" PageSize="5"
        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
        OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" 
        OnRowDataBound="GridView1_RowDataBound" OnSorting="GridView1_Sorting"  
        onpageindexchanging="GridView1_PageIndexChanging" 
              >
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <Columns>
                 <asp:BoundField DataField="we_id" HeaderText="微博ID" SortExpression="we_id" ReadOnly="True" />
                 <asp:BoundField DataField="we_theme" HeaderText="微博主题" SortExpression="we_theme"/>
                 <asp:BoundField DataField="we_title" HeaderText="微博标题" SortExpression="we_title"/>
                 <asp:BoundField DataField="we_content" HeaderText="微博内容" SortExpression="we_content"/>
                 <asp:CommandField ShowDeleteButton="True"  />
                 <asp:CommandField ShowEditButton="True"/>
                 <asp:CommandField ShowSelectButton="True" />

                
          </Columns>
                        <RowStyle ForeColor="#000066"  CssClass="showing"  />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" CssClass="Freezing"/>
            </asp:GridView>
       </div>
    </form>
</body>
</html>