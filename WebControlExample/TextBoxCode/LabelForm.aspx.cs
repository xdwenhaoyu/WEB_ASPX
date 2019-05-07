using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TextBoxCode
{
    public partial class LabelForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Hello World!";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Hello, Again!";
        }
    }
}