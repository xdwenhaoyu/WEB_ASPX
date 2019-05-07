using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TextBoxCode
{
    public partial class ListBoxForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {}

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            foreach (ListItem a in ListBox1.Items)
            {
                if (a.Selected)
                    Label1.Text = Label1.Text + a.Value+" ";
            }

        }
    }
}