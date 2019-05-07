<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetailsViewExample.aspx.cs" Inherits="DBVisual.DetailsViewExample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="MyDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>" SelectCommand="SELECT [AddressID], [AddressLine1] FROM [Person].[Address]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="MyDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>" DeleteCommand="DELETE FROM [Person].[Address] WHERE [AddressID] = @AddressID" InsertCommand="INSERT INTO [Person].[Address] ([AddressLine1], [City], [StateProvinceID], [PostalCode]) VALUES (@AddressLine1, @City, @StateProvinceID, @PostalCode)" SelectCommand="SELECT [AddressID], [AddressLine1], [City], [StateProvinceID], [PostalCode] FROM [Person].[Address] where [AddressID]=@AddressID" UpdateCommand="UPDATE [Person].[Address] SET [AddressLine1] = @AddressLine1, [City] = @City, [StateProvinceID] = @StateProvinceID, [PostalCode] = @PostalCode WHERE [AddressID] = @AddressID">
        <DeleteParameters>
            <asp:Parameter Name="AddressID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AddressLine1" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="StateProvinceID" Type="Int32" />
            <asp:Parameter Name="PostalCode" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="AddressID" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="AddressLine1" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="StateProvinceID" Type="Int32" />
            <asp:Parameter Name="PostalCode" Type="String" />
            <asp:Parameter Name="AddressID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h1 class="page-header">DetailsView控件</h1>

    <table style="width: 100%;">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataKeyNames="AddressID" DataSourceID="MyDataSource1" AllowSorting="True" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Width="90%">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </td>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="MyDataSource2" Height="50px" Width="316px" AutoGenerateRows="False" DataKeyNames="AddressID" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="AddressID" HeaderText="AddressID" InsertVisible="False" ReadOnly="True" SortExpression="AddressID" />
                        <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="StateProvinceID" HeaderText="StateProvinceID" SortExpression="StateProvinceID" />
                        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                </asp:DetailsView>
            </td>
        </tr>
    </table>

</asp:Content>
