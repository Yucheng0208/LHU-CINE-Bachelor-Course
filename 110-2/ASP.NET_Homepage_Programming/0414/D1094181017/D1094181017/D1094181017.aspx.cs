using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace D1094181017
{
    public partial class D1094181017 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
                Label1.Text = "Check Box is selected !!";
            else
                Label1.Text = "Check Box is not selected !!";
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected == true)
                {
                    Label2.Text += "CheckBoxList1.Items[" + i + "] is Selected" + "<br>"
                        + "CheckBoxList1.Items[" + i + "] Text ::" + CheckBoxList1.Items[i].Text + "<br>"
                        + "CheckBoxList1.Items[" + i + "] Value ::" + CheckBoxList1.Items[i].Value + "<br>";

                }
                else
                    Label2.Text += "CheckBoxList1.Items[" + i + "] is not Selected" + "<br>";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
                Label1.Text = "Check Box is selected !!";
            else
                Label1.Text = "Check Box is not selected !!";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected == true)
                {
                    Label2.Text += "Button CheckBoxList1.Items[" + i + "] is Selected" + "<br>"
                        + "Button CheckBoxList1.Items[" + i + "] Text ::" + CheckBoxList1.Items[i].Text + "<br>"
                        + "Button CheckBoxList1.Items[" + i + "] Value ::" + CheckBoxList1.Items[i].Value + "<br>";

                }
                else
                    Label2.Text += "Button CheckBoxList1.Items[" + i + "] is not Selected" + "<br>";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            CheckBoxList1.Items.Add(new ListItem(TextBox1.Text, TextBox2.Text));
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label3.Text = DropDownList1.SelectedItem.Text + " :: " + DropDownList1.SelectedValue;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label4.Text = RadioButtonList1.SelectedItem.Text + " :: " + RadioButtonList1.SelectedValue;
        }
    }
}