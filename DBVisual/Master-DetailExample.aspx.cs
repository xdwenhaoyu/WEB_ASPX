using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBVisual
{
    public partial class Master_DetailExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btInsertC1_Click(object sender, EventArgs e)
        {
            DSC1.Insert();
        }

        protected void btInsertC2_Click(object sender, EventArgs e)
        {
            DSC2.Insert();
        }
    }
}