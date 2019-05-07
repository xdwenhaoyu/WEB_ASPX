<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxListForm.aspx.cs" Inherits="TextBoxCode.CheckBoxListForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
            RepeatDirection="Horizontal">
            <asp:ListItem>体育</asp:ListItem>
            <asp:ListItem>游戏</asp:ListItem>
            <asp:ListItem>音乐</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
