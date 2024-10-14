<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebFormPrac2.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProdId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ProdId" HeaderText="ProdId" InsertVisible="False" ReadOnly="True" SortExpression="ProdId" />
                <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                <asp:BoundField DataField="ProdCategory" HeaderText="ProdCategory" SortExpression="ProdCategory" />
                <asp:BoundField DataField="ProdPrice" HeaderText="ProdPrice" SortExpression="ProdPrice" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbconn %>" DeleteCommand="DELETE FROM [products] WHERE [ProdId] = @original_ProdId AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdCategory] = @original_ProdCategory) OR ([ProdCategory] IS NULL AND @original_ProdCategory IS NULL)) AND (([ProdPrice] = @original_ProdPrice) OR ([ProdPrice] IS NULL AND @original_ProdPrice IS NULL))" InsertCommand="INSERT INTO [products] ([ProdName], [ProdCategory], [ProdPrice]) VALUES (@ProdName, @ProdCategory, @ProdPrice)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [ProdName] = @ProdName, [ProdCategory] = @ProdCategory, [ProdPrice] = @ProdPrice WHERE [ProdId] = @original_ProdId AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdCategory] = @original_ProdCategory) OR ([ProdCategory] IS NULL AND @original_ProdCategory IS NULL)) AND (([ProdPrice] = @original_ProdPrice) OR ([ProdPrice] IS NULL AND @original_ProdPrice IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProdId" Type="Int32" />
                <asp:Parameter Name="original_ProdName" Type="String" />
                <asp:Parameter Name="original_ProdCategory" Type="String" />
                <asp:Parameter Name="original_ProdPrice" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="ProdCategory" Type="String" />
                <asp:Parameter Name="ProdPrice" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="ProdCategory" Type="String" />
                <asp:Parameter Name="ProdPrice" Type="Int32" />
                <asp:Parameter Name="original_ProdId" Type="Int32" />
                <asp:Parameter Name="original_ProdName" Type="String" />
                <asp:Parameter Name="original_ProdCategory" Type="String" />
                <asp:Parameter Name="original_ProdPrice" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" BackColor="Aqua" OnClick="Button1_Click" Text="Back" />
            <br />
        </div>
    </form>
</body>
</html>
