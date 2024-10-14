<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProd.aspx.cs" Inherits="WebFormPrac2.AddProd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Product Name :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Product Category :
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProdCategory" DataValueField="ProdCategory">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconn %>" SelectCommand="SELECT DISTINCT ProdCategory FROM products"></asp:SqlDataSource>
            <br />
            <br />
            Product Price:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
            <br />
        </div>
    </form>
</body>
</html>
