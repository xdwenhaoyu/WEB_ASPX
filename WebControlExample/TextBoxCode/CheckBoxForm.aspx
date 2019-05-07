<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxForm.aspx.cs" Inherits="TextBoxCode.CheckBoxForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="体育" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="游戏" />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="音乐" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
