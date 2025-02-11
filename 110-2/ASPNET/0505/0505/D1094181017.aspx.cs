using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _0505
{
    public partial class D1094181017 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "顯示所選擇的日期：<br>"
                + Calendar1.SelectedDate.Year.ToString() + "年<br>"
                + Calendar1.SelectedDate.Month.ToString() + "月<br>"
                + Calendar1.SelectedDate.Day.ToString() + "日";
        }
    }
}