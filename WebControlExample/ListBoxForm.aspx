<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListBoxForm.aspx.cs" Inherits="TextBoxCode.ListBoxForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListBox ID="ListBox1" runat="server" Rows="3" SelectionMode="Multiple">
            <asp:ListItem>体育</asp:ListItem>
            <asp:ListItem>游戏</asp:ListItem>
            <asp:ListItem>音乐</asp:ListItem>
        </asp:ListBox>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" />
        你选择的爱好包括：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
