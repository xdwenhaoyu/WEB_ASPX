<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioButtonForm.aspx.cs" Inherits="TextBoxCode.RadioButtonForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
            GroupName="sex" Text="男" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sex" Text="女" />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
