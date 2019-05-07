using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TextBoxCode
{
    public partial class RadioButtonForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
                Label1.Text = "你的选择是男";
            if (RadioButton2.Checked)
                Label1.Text = "你的选择是女";
        }
    }
}