<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UnitConverterCSS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>单位换算器</h1>
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-3">
                <asp:TextBox ID="tbOriginalValue" runat="server" ValidationGroup="1" class="form-control  input-lg"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:DropDownList ID="ddlOriginalUnit" runat="server" ValidationGroup="1" class="form-control  input-lg">
                    <asp:ListItem Value="1000000">吨</asp:ListItem>
                    <asp:ListItem Value="1000">千克</asp:ListItem>
                    <asp:ListItem Value="1">克</asp:ListItem>
                    <asp:ListItem Value="500">市斤</asp:ListItem>
                    <asp:ListItem Value="453.59237">磅</asp:ListItem>
                    <asp:ListItem Value="28.3495231">盎司</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btConvert" runat="server" OnClick="btConvert_Click"
                    Text="换算" ValidationGroup="1" class="btn btn-primary btn-lg btn-block" />
            </div>
            <div class="col-md-3">
                <asp:Label ID="lbResult" runat="server" Text="目标值" class="form-control  input-lg"></asp:Label>
            </div>

            <div class="col-md-2">
                <asp:DropDownList ID="ddlTargetUnit" runat="server" ValidationGroup="1" class="form-control  input-lg">
                </asp:DropDownList>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-12">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="1" class="alert alert-danger" />

                <asp:CompareValidator ID="CompareValidator1" runat="server"
                    ControlToCompare="ddlOriginalUnit" ControlToValidate="ddlTargetUnit"
                    ErrorMessage="原单位和目标单位一致，没有转换的必要。" Operator="NotEqual" Display="None"
                    ValidationGroup="1"></asp:CompareValidator>

                <asp:RangeValidator ID="RangeValidator1" runat="server"
                    ControlToValidate="tbOriginalValue" Display="None"
                    ErrorMessage="输入的数量超出限制，要求在0到1000之间。" MaximumValue="1000" MinimumValue="0"
                    Type="Double" ValidationGroup="1"></asp:RangeValidator>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="tbOriginalValue" Display="None" ErrorMessage="必须填写数量。"
                    ValidationGroup="1"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ControlToValidate="tbOriginalValue" Display="None"
                    ErrorMessage="必须输入数字，小数点后可以保留两位。" ValidationExpression="\d+(\.\d{0,2})?"
                    ValidationGroup="1"></asp:RegularExpressionValidator>
            </div>
        </div>
    </div>

</asp:Content>
