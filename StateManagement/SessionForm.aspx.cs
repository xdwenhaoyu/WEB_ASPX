using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagement
{
    public partial class SessionForm : System.Web.UI.Page
    {
        public static List<string> entries;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["entries"] == null)
            {
                entries = new List<string>();
                Session["entries"] = entries;
            }

            bindData();
        }

        private void bindData()
        {
            BulletedList1.DataSource = Session["entries"];
            BulletedList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            entries = (List<string>)Session["entries"];
            entries.Add(TextBox1.Text);
            Session["entries"] = entries;

            //((List<string>)Session["entries"]).Add(TextBox1.Text);
            
            bindData();
        }

    }
}