<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestForm.aspx.cs" Inherits="RequestResponse.RequestForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                //获取用户输入的信息
                Response.Write("用户输入信息为：" + Request.Form["abc"] + "<BR />");

                //获取浏览器端的信息
                Response.Write("客户端IP：" + Request.UserHostAddress + "<BR />");
                Response.Write("浏览器：" + Request.Browser.Browser + "<BR />");
                Response.Write("浏览器版本：" + Request.Browser.Version + "<BR />");
                Response.Write("浏览器类型：" + Request.Browser.Type + "<BR />");
                Response.Write("客户端操作系统：" + Request.Browser.Platform + "<BR />");
                Response.Write("是否支持Java：" + Request.Browser.JavaApplets + "<BR />");
                Response.Write("是否支持框架网页：" + Request.Browser.Frames + "<BR />");
                Response.Write("是否支持Cookie：" + Request.Browser.Cookies + "<BR />");
                Response.Write("JScript版本：" + Request.Browser.JScriptVersion + "<BR />");
                Response.Write("请求的虚拟路径：" + Request.Path + "<BR />");
                Response.Write("浏览器类型和版本：" + Request.ServerVariables["HTTP_USER_AGENT"] + "<BR />");
                Response.Write("用户的IP地址：" + Request.ServerVariables["REMOTE_ADDR"] + "<BR />");
                Response.Write("请求的方法：" + Request.ServerVariables["REQUEST_METHOD"] + "<BR />");
            %>
        </div>
    </form>
</body>
</html>
