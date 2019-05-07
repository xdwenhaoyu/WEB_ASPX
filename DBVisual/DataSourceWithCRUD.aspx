<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataSourceWithCRUD.aspx.cs" Inherits="DBVisual.DataSourceWithCRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="MyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>" SelectCommand="SELECT top 10 [AddressID],[AddressLine1],[City],[StateProvinceID],[PostalCode] FROM [Person].[Address] WHERE [City]=@City" DeleteCommand="DELETE FROM Person.Address WHERE (City =@City)" InsertCommand="INSERT INTO Person.Address(AddressLine1, City, StateProvinceID, PostalCode) VALUES (@AddressLine1, @City, @StateProvinceID, @PostalCode)" UpdateCommand="UPDATE Person.Address SET AddressLine1 =@AddressLine1 , City =@City , StateProvinceID =@StateProvinceID , PostalCode =@PostalCode where AddressID=@AddressID">
        <DeleteParameters>
            <asp:ControlParameter ControlID="tbCityForDelete" Name="City" PropertyName="Text" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="tbAddressLine1forInsert" Name="AddressLine1" PropertyName="Text" />
            <asp:ControlParameter ControlID="tbCityforInsert" Name="City" PropertyName="Text" />
            <asp:ControlParameter ControlID="tbStateProvinceIDforInsert" Name="StateProvinceID" PropertyName="Text" />
            <asp:ControlParameter ControlID="tbPostalCodeforInsert" Name="PostalCode" PropertyName="Text" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="tbCityForSelect" Name="City" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="tbAddressLine1forUpdate" Name="AddressLine1" PropertyName="Text" />
            <asp:ControlParameter ControlID="tbCityforUpdate" Name="City" PropertyName="Text" />
            <asp:ControlParameter ControlID="tbStateProvinceIDforUpdate" Name="StateProvinceID" PropertyName="Text" />
            <asp:ControlParameter ControlID="tbPostalCodeforUpdate" Name="PostalCode" PropertyName="Text" />
            <asp:ControlParameter ControlID="tbAddressIDforUpdate" Name="AddressID" PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <div>
        <h3>查询</h3>
        城市：<asp:TextBox ID="tbCityForSelect" runat="server"></asp:TextBox>
        <asp:Button ID="btSelect" runat="server" OnClick="btSelect_Click" Text="查询" />
        <br />
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="MyDataSource">
            <HeaderTemplate>
                <table border="1" width="100%">
                    <tr>
                        <th>编号</th>
                        <th>地址</th>
                        <th>城市</th>
                        <th>州号</th>
                        <th>邮编</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("AddressID")%></td>
                    <td><%#Eval("AddressLine1")%></td>
                    <td><%#Eval("City")%></td>
                    <td><%#Eval("StateProvinceID")%></td>
                    <td><%#Eval("PostalCode")%></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>

    <div>
        <h3>增加</h3>
        地址<asp:TextBox ID="tbAddressLine1forInsert" runat="server"></asp:TextBox>
        &nbsp; 城市<asp:TextBox ID="tbCityforInsert" runat="server"></asp:TextBox>
        &nbsp; 州号<asp:TextBox ID="tbStateProvinceIDforInsert" runat="server"></asp:TextBox>
        &nbsp; 邮编<asp:TextBox ID="tbPostalCodeforInsert" runat="server"></asp:TextBox>
        <asp:Button ID="btInsert" runat="server" OnClick="btInsert_Click" Text="添加" />
    </div>

    <div>
        <h3>修改</h3>
        编号<asp:TextBox ID="tbAddressIDforUpdate" runat="server"></asp:TextBox>
        地址<asp:TextBox ID="tbAddressLine1forUpdate" runat="server"></asp:TextBox>
        &nbsp; 城市<asp:TextBox ID="tbCityforUpdate" runat="server"></asp:TextBox>
        &nbsp; 州号<asp:TextBox ID="tbStateProvinceIDforUpdate" runat="server"></asp:TextBox>
        &nbsp; 邮编<asp:TextBox ID="tbPostalCodeforUpdate" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="btUpdate_Click" Text="修改" />
    </div>

    <div>
        <h3>删除</h3>
        城市：<asp:TextBox ID="tbCityForDelete" runat="server"></asp:TextBox>
        <asp:Button ID="btDelete" runat="server" OnClick="btDelete_Click" Text="删除" />
    </div>
</asp:Content>
