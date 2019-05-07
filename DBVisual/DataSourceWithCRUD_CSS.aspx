<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataSourceWithCRUD_CSS.aspx.cs" Inherits="DBVisual.DataSourceWithCRUD_CSS" %>

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

    <h1 class="page-header">数据源CRUD</h1>

    <div class="jumbotron">
        <h3>查询</h3>
        <div class="form-inline">
            <div class="form-group">
                <label for="MainContent_tbAddIDForSelect">城市</label>
                <asp:TextBox ID="tbCityForSelect" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btSelect" runat="server" OnClick="btSelect_Click" Text="查询" class="btn btn-default" />
        </div>

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="MyDataSource">
            <HeaderTemplate>
                <table border="1" width="100%" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>编号</th>
                            <th>地址</th>
                            <th>城市</th>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tbody>
                    <tr>
                        <td><%#Eval("AddressID")%></td>
                        <td><%#Eval("AddressLine1")%></td>
                        <td><%#Eval("City")%></td>
                    </tr>
                </tbody>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>

    <div class="jumbotron">
        <h3>增加</h3>
        <div class="form-inline">
            <div class="form-group">
                <label for="MainContent_tbAddressLine1forInsert">地址</label>
                <asp:TextBox ID="tbAddressLine1forInsert" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="MainContent_tbCityforInsert">城市</label>
                <asp:TextBox ID="tbCityforInsert" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="MainContent_tbStateProvinceIDforInsert">州号</label>
                <asp:TextBox ID="tbStateProvinceIDforInsert" runat="server" Width="40px"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="MainContent_tbPostalCodeforInsert">邮编</label>
                <asp:TextBox ID="tbPostalCodeforInsert" runat="server"></asp:TextBox>
            </div>

            <asp:Button ID="btInsert" runat="server" OnClick="btInsert_Click" Text="添加" class="btn btn-default" />
        </div>

    </div>

    <div class="jumbotron">
        <h3>修改</h3>
        <div class="form-inline">

            <div class="form-group">
                <label for="MainContent_tbAddressIDforUpdate">编号</label>
                <asp:TextBox ID="tbAddressIDforUpdate" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="MainContent_tbAddressLine1forUpdate">地址</label>
                <asp:TextBox ID="tbAddressLine1forUpdate" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="MainContent_tbCityforUpdate">城市</label>
                <asp:TextBox ID="tbCityforUpdate" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="MainContent_tbStateProvinceIDforUpdate">州号</label>
                <asp:TextBox ID="tbStateProvinceIDforUpdate" runat="server" Width="40px"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="MainContent_tbPostalCodeforUpdate">邮编</label>
                <asp:TextBox ID="tbPostalCodeforUpdate" runat="server"></asp:TextBox>
            </div>

            <asp:Button ID="btUpdate" runat="server" OnClick="btUpdate_Click" Text="修改" class="btn btn-default" />
        </div>
    </div>

    <div class="jumbotron">
        <h3>删除</h3>
        <div class="form-inline">
            <div class="form-group">
                <label for="MainContent_tbCityForDelete">城市</label>
                <asp:TextBox ID="tbCityForDelete" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btDelete" runat="server" OnClick="btDelete_Click" Text="删除" class="btn btn-default" />
        </div>

    </div>
</asp:Content>
