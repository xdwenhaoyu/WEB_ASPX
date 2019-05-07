<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GridViewExample.aspx.cs" Inherits="DBVisual.GridViewExample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="MyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>" DeleteCommand="DELETE FROM [Person].[Address] WHERE [AddressID] = @AddressID" InsertCommand="INSERT INTO [Person].[Address] ([AddressLine1], [City], [StateProvinceID], [PostalCode]) VALUES (@AddressLine1, @City, @StateProvinceID, @PostalCode)" SelectCommand="SELECT [AddressID], [AddressLine1], [City], [StateProvinceID], [PostalCode] FROM [Person].[Address]" UpdateCommand="UPDATE [Person].[Address] SET [AddressLine1] = @AddressLine1, [City] = @City, [StateProvinceID] = @StateProvinceID, [PostalCode] = @PostalCode WHERE [AddressID] = @AddressID">
        <DeleteParameters>
            <asp:Parameter Name="AddressID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AddressLine1" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="StateProvinceID" Type="Int32" />
            <asp:Parameter Name="PostalCode" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AddressLine1" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="StateProvinceID" Type="Int32" />
            <asp:Parameter Name="PostalCode" Type="String" />
            <asp:Parameter Name="AddressID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <h1 class="page-header">GridView控件</h1>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="MyDataSource" DataKeyNames="AddressID" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Horizontal" PageSize="20" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
                <HeaderStyle Width="100px" />
            </asp:CommandField>
            <asp:BoundField DataField="AddressID" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="AddressID">
                <HeaderStyle Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="AddressLine1" HeaderText="地址" SortExpression="AddressLine1" />
            <asp:BoundField DataField="City" HeaderText="城市" SortExpression="City" />
            <asp:BoundField DataField="StateProvinceID" HeaderText="州号" SortExpression="StateProvinceID" />
            <asp:BoundField DataField="PostalCode" HeaderText="邮编" SortExpression="PostalCode" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" Position="TopAndBottom" PreviousPageText="上一页" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>

</asp:Content>
