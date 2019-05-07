using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UnitConverterCSS
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //在可视化设计中添加了下拉列表ddlOriginalUnit的一系列Item值，需要通过程序拷贝给ddlTargetUnit
                ListItem[] listItemArray = new ListItem[ddlOriginalUnit.Items.Count];
                ddlOriginalUnit.Items.CopyTo(listItemArray, 0);
                ddlTargetUnit.Items.AddRange(listItemArray);

                //或者用下面的foreach循环语句来实现DropDownList控件Items属性的拷贝
                //foreach (ListItem li in ddlOriginalUnit.Items)
                //{
                //    ddlTargetUnit.Items.Add(li);
                //}
            }
        }

        protected void btConvert_Click(object sender, EventArgs e)
        {
            double OriginalUnit = double.Parse(ddlOriginalUnit.SelectedValue);
            double TargetUnit = double.Parse(ddlTargetUnit.SelectedValue);
            double Ratio = OriginalUnit / TargetUnit;

            double OriginalValue = double.Parse(tbOriginalValue.Text);
            double TargetValue = OriginalValue * Ratio;
            lbResult.Text = TargetValue.ToString();
        }
    }
}
