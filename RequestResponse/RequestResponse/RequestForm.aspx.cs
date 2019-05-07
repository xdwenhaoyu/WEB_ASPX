using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RequestResponse
{
    public partial class RequestForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

        }
    }
}