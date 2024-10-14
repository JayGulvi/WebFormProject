<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index2.aspx.cs" Inherits="WebFormPrac2.Index2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ProdId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ProdId" HeaderText="ProdId" InsertVisible="False" ReadOnly="True" SortExpression="ProdId" />
                    <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                    <asp:BoundField DataField="ProdCategory" HeaderText="ProdCategory" SortExpression="ProdCategory" />
                    <asp:BoundField DataField="ProdPrice" HeaderText="ProdPrice" SortExpression="ProdPrice" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
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
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
        </div>
    </form>
</body>
</html>
