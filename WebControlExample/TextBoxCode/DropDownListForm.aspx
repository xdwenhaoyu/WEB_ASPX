<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownListForm.aspx.cs" Inherits="TextBoxCode.DropDownListForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        民族<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>汉族</asp:ListItem>
            <asp:ListItem>回族</asp:ListItem>
            <asp:ListItem>壮族</asp:ListItem>
            <asp:ListItem>满足</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" />
        您选择的民族是：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
