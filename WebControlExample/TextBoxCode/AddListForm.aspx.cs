using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TextBoxCode
{
    public partial class AddListForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {}

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Add(new ListItem("汉族"));
            ListBox1.Items.Add(new ListItem("回族"));
            ListBox1.Items.Add("壮族");
            ListBox1.Items.Add("维吾尔族");
        }
    }
}