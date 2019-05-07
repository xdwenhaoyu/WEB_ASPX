<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Master-DetailExample.aspx.cs" Inherits="DBVisual.Master_DetailExample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="DSC1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>" DeleteCommand="DELETE FROM [Production].[ProductCategory] WHERE [ProductCategoryID] = @ProductCategoryID" InsertCommand="INSERT INTO [Production].[ProductCategory] ([Name]) VALUES (@Name)" SelectCommand="SELECT [ProductCategoryID], [Name] FROM [Production].[ProductCategory]" UpdateCommand="UPDATE [Production].[ProductCategory] SET [Name] = @Name WHERE [ProductCategoryID] = @ProductCategoryID">
        <DeleteParameters>
            <asp:Parameter Name="ProductCategoryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="tbC1Name" Name="Name" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ProductCategoryID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="DSC2" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>" DeleteCommand="DELETE FROM [Production].[ProductSubcategory] WHERE [ProductSubcategoryID] = @ProductSubcategoryID" InsertCommand="INSERT INTO [Production].[ProductSubcategory] ([ProductCategoryID], [Name]) VALUES (@ProductCategoryID, @Name)" SelectCommand="SELECT [ProductSubcategoryID], [ProductCategoryID], [Name] FROM [Production].[ProductSubcategory] where [ProductCategoryID]=@ProductCategoryID" UpdateCommand="UPDATE [Production].[ProductSubcategory] SET [ProductCategoryID] = @ProductCategoryID, [Name] = @Name WHERE [ProductSubcategoryID] = @ProductSubcategoryID">
        <DeleteParameters>
            <asp:Parameter Name="ProductSubcategoryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ProductCategoryID" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="tbC2Name" Name="Name" PropertyName="Text" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ProductCategoryID" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductCategoryID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ProductSubcategoryID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <h1 class="page-header">主从结构</h1>

    <table style="width: 100%;">
        <tr>
            <td>
                <h3>一级分类</h3>
            </td>
            <td>&nbsp;</td>
            <td>
                <h3>二级分类</h3>
            </td>
        </tr>
        <tr>
            <td style="height: 28px">名称<asp:TextBox ID="tbC1Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbC1Name" ErrorMessage="必须填写名称" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:Button ID="btInsertC1" runat="server" OnClick="btInsertC1_Click" Text="添加" ValidationGroup="1" />
            </td>
            <td style="height: 28px"></td>
            <td style="height: 28px">名称<asp:TextBox ID="tbC2Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbC2Name" ErrorMessage="必须填写名称" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                <asp:Button ID="btInsertC2" runat="server" OnClick="btInsertC2_Click" Text="添加" ValidationGroup="2" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td valign="top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductCategoryID" DataSourceID="DSC1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="ProductCategoryID" HeaderText="ProductCategoryID" InsertVisible="False" ReadOnly="True" SortExpression="ProductCategoryID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <span id="message" onclick="JavaScript:return confirm('注意：删除一级分类也会删除二级分类和分类中产品。确定要删除吗？')">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                        Text="删除"></asp:LinkButton>
                                </span>
                            </ItemTemplate>
                            <HeaderStyle Width="30px" />
                        </asp:TemplateField>
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
            <td>&nbsp;</td>
            <td valign="top">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductSubcategoryID" DataSourceID="DSC2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="ProductSubcategoryID" HeaderText="ProductSubcategoryID" InsertVisible="False" ReadOnly="True" SortExpression="ProductSubcategoryID" />
                        <asp:BoundField DataField="ProductCategoryID" HeaderText="ProductCategoryID" SortExpression="ProductCategoryID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <span id="message" onclick="JavaScript:return confirm('注意：删除二级分类也会删除分类中产品。确定要删除吗？')">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                        Text="删除"></asp:LinkButton>
                                </span>
                            </ItemTemplate>
                            <HeaderStyle Width="30px" />
                        </asp:TemplateField>
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
        </tr>
    </table>

</asp:Content>
