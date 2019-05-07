using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBVisual
{
    public partial class DataSourceAndRepeater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btRepeater_Click(object sender, EventArgs e)
        {
            Repeater1.DataSource = MyDataSource;
            Repeater1.DataBind();
        }
    }
}