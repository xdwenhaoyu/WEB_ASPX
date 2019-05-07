using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBVisual
{
    public partial class DataSourceWithCRUD_CSS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSelect_Click(object sender, EventArgs e)
        {
            //由于采用了参数源的可视化配置，下面这一行就不再需要了。
            //MyDataSource.SelectParameters["简称"].DefaultValue = tbShortForSelect.Text;
        }

        protected void btInsert_Click(object sender, EventArgs e)
        {
            if (MyDataSource.Insert() >= 1)
                Response.Write("<script>alert('添加成功')</script>");
        }

        protected void btUpdate_Click(object sender, EventArgs e)
        {
            if (MyDataSource.Update() >= 1)
                Response.Write("<script>alert('修改成功')</script>");
        }

        protected void btDelete_Click(object sender, EventArgs e)
        {
            if (MyDataSource.Delete() >= 1)
                Response.Write("<script>alert('删除成功')</script>");
        }
    }
}