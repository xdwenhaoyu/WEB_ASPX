using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagement
{
    public partial class CookieForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["userName"] != null)
                {
                    Label1.Text = "你是" + Request.Cookies["userName"].Value + "吗？欢迎你回来！";
                }
                else
                {
                    Label1.Text = "你是谁啊？我不记得你！";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["userName"].Value = TextBox1.Text;
            Response.Cookies["userName"].Expires = DateTime.Now.AddDays(1);
        }
    }
}