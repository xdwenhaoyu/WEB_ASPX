<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataSourceAndRepeater.aspx.cs" Inherits="DBVisual.DataSourceAndRepeater" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="MyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>" SelectCommand="SELECT TOP (10) AddressID, AddressLine1 FROM Person.Address"></asp:SqlDataSource>
    <h1 class="page-header">数据源控件</h1>

    <asp:Button ID="btRepeater" runat="server" OnClick="btRepeater_Click"
        Text="重新绑定Repeater控件" />

    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table border="1" width="100%">
                <tr>
                    <th>编号</th>
                    <th>地址</th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%#Eval("AddressID")%></td>
                <td><%#Eval("AddressLine1")%></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

</asp:Content>
