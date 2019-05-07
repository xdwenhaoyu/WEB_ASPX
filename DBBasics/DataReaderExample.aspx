<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataReaderExample.aspx.cs" Inherits="DBBasics.DataReaderExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btTableClient" runat="server" Text="客户端表格" OnClick="btTableClient_Click" />
            <br />
            <asp:Button ID="btTableServer" runat="server" OnClick="btTableServer_Click" Text="服务器端表格" />
            <asp:Table ID="Table1" runat="server" GridLines="Both">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">编号</asp:TableCell>
                    <asp:TableCell runat="server">地址</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Button ID="btRepeater" runat="server" OnClick="btRepeater_Click" Text="Repeater控件" />
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table border="1" width="100%">
                        <tr>
                            <th>编号
                            </th>
                            <th>地址
                            </th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%#Eval("AddressID")%>
                        </td>
                        <td>
                            <%#Eval("AddressLine1")%>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <br />
        </div>
    </form>
</body>
</html>
