<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HyperLinkForm.aspx.cs" Inherits="TextBoxCode.HyperLinkForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Button1" />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button2" />
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
