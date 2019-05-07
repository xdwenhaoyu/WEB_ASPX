using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagement
{
    public partial class ViewStateForm : System.Web.UI.Page
    {
        public static List<string> entries;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                entries = new List<string>();
                ViewState["entries"] = entries;
            }
        }

        private void bindData()
        {
            BulletedList1.DataSource = ViewState["entries"];
            BulletedList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            entries = (List<string>)ViewState["entries"];
            entries.Add(TextBox1.Text);
            ViewState["entries"] = entries;

            //((List<string>)ViewState["entries"]).Add(TextBox1.Text);

            bindData();
        }

    }
}