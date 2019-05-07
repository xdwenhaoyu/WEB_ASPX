using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloASPX
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Hello World!";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "你好，世界!";
        }
    }
}