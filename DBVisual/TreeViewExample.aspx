<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TreeViewExample.aspx.cs" Inherits="DBVisual.TreeViewExample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="page-header">TreeView控件</h1>

    <table style="width: 100%;">
        <tr>
            <td valign="top">
                <asp:SqlDataSource ID="DSProd" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:AdventureWorksConnectionString.ProviderName %>"
                    SelectCommand="SELECT ProductID, Name, ProductNumber, Size, ProductSubcategoryID FROM Production.Product where ProductSubcategoryID=@ProductSubcategoryID ">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="tvCatalog" Name="ProductSubcategoryID" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:TreeView ID="tvCatalog" runat="server" MaxDataBindDepth="2" OnTreeNodePopulate="tvCatalog_TreeNodePopulate" ImageSet="Arrows">
                    <HoverNodeStyle Font-Bold="True" Font-Underline="True" ForeColor="#5555DD" />
                    <Nodes>
                        <asp:TreeNode PopulateOnDemand="True" SelectAction="Expand" Text="产品分类" Value="产品分类"></asp:TreeNode>
                    </Nodes>
                    <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="False" />
                    <SelectedNodeStyle Font-Bold="True" Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
            </td>
            <td valign="top">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="DSProd" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="ProductNumber" HeaderText="ProductNumber" SortExpression="ProductNumber" />
                        <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                        <asp:BoundField DataField="ProductSubcategoryID" HeaderText="ProductSubcategoryID" SortExpression="ProductSubcategoryID" />
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
