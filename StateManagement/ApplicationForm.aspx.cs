using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagement
{
    public partial class ApplicationForm : System.Web.UI.Page
    {
        public static List<string> entries;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["entries"] == null)
            {
                entries = new List<string>();
                Application["entries"] = entries;
            }

            bindData();
        }

        private void bindData()
        {
            BulletedList1.DataSource = Application["entries"];
            BulletedList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            entries = (List<string>)Application["entries"];
            entries.Add(TextBox1.Text);
            Application["entries"] = entries;

            //((List<string>)Application["entries"]).Add(TextBox1.Text);

            bindData();
        }

    }
}