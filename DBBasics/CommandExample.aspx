<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommandExample.aspx.cs" Inherits="DBBasics.CommandExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btInsert" runat="server" OnClick="btInsert_Click" Text="增加数据" />
            <asp:Button ID="btDelete" runat="server" OnClick="btDelete_Click" Text="删除数据" />
            <asp:Button ID="btUpdate" runat="server" OnClick="btUpdate_Click" Text="修改数据" />
            <asp:Button ID="btSelect" runat="server" OnClick="btSelect_Click" Text="查看数据" />
        </div>
    </form>
</body>
</html>
