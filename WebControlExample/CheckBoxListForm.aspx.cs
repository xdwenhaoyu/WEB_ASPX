using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TextBoxCode
{
    public partial class CheckBoxListForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "你的爱好包括：";
            if (CheckBoxList1.Items[0].Selected)
                Label1.Text = Label1.Text + "体育；";
            if (CheckBoxList1.Items[1].Selected)
                Label1.Text = Label1.Text + "游戏；";
            if (CheckBoxList1.Items[2].Selected)
                Label1.Text = Label1.Text + "音乐；";
        }
    }
}