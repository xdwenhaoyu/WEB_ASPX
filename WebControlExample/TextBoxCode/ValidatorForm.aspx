<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidatorForm.aspx.cs" Inherits="TextBoxCode.ValidatorForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        必选验证器<asp:TextBox ID="tbRequiredField" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="tbRequiredField" ErrorMessage="RequiredFieldValidator" 
            ForeColor="Red">错误提示：此栏目为必填字段</asp:RequiredFieldValidator>
        <br />
        <br />
        对比验证器<asp:TextBox ID="tbCompare1" runat="server"></asp:TextBox>
        <asp:TextBox ID="tbCompare2" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="tbCompare1" ControlToValidate="tbCompare2" 
            ErrorMessage="CompareValidator" ForeColor="Red" Operator="Equal">错误提示：两栏目必须相同</asp:CompareValidator>
        <br />
        <br />
        匹配验证器<asp:TextBox ID="tbRegularExpression" runat="server" Width="287px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="tbRegularExpression" 
            ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">错误提示：此栏目必须为电子邮件地址</asp:RegularExpressionValidator>
        <br />
        <br />
        范围验证器<asp:TextBox ID="tbRange" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="tbRange" ErrorMessage="RangeValidator" ForeColor="Red" 
            MaximumValue="80" MinimumValue="18" Type="Integer">错误提示：此栏目必须填写18-80之间的整数</asp:RangeValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="测试" />
    
    </div>
    </form>
</body>
</html>
