<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Converter.aspx.cs" Inherits="UnitConverter.Converter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>单位换算器</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="tbOriginalValue" runat="server" ValidationGroup="1"></asp:TextBox>
            <asp:DropDownList ID="ddlOriginalUnit" runat="server" ValidationGroup="1">
                <asp:ListItem Value="1000000">吨</asp:ListItem>
                <asp:ListItem Value="1000">千克</asp:ListItem>
                <asp:ListItem Value="1">克</asp:ListItem>
                <asp:ListItem Value="500">市斤</asp:ListItem>
                <asp:ListItem Value="453.59237">磅</asp:ListItem>
                <asp:ListItem Value="28.3495231">盎司</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btConvert" runat="server" OnClick="btConvert_Click"
                Text="换算" ValidationGroup="1" />
            <asp:Label ID="lbResult" runat="server" Text="目标值"></asp:Label>

            <asp:DropDownList ID="ddlTargetUnit" runat="server" ValidationGroup="1">
            </asp:DropDownList>
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                ValidationGroup="1" />
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server"
                ControlToCompare="ddlOriginalUnit" ControlToValidate="ddlTargetUnit"
                ErrorMessage="原单位和目标单位一致，没有转换的必要。" Operator="NotEqual" Display="None"
                ValidationGroup="1"></asp:CompareValidator>
            <br />
            <asp:RangeValidator ID="RangeValidator1" runat="server"
                ControlToValidate="tbOriginalValue" Display="None"
                ErrorMessage="输入的数量超出限制，要求在0到1000之间。" MaximumValue="1000" MinimumValue="0"
                Type="Double" ValidationGroup="1"></asp:RangeValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="tbOriginalValue" Display="None" ErrorMessage="必须填写数量。"
                ValidationGroup="1"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                ControlToValidate="tbOriginalValue" Display="None"
                ErrorMessage="必须输入数字，小数点后可以保留两位。" ValidationExpression="\d+(\.\d{0,2})?"
                ValidationGroup="1"></asp:RegularExpressionValidator>
            <br />
        </div>
    </form>
</body>
</html>
