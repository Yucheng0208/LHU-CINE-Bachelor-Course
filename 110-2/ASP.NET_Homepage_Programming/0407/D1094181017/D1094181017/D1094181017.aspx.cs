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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string[] Checkeng = { "A", "B", "C", "D", "E", "F", "G", "I", "J", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" };
            string Nationalidentificationnumber = Convert.ToString(TextBox1.Text); //轉換為字串格式
            string Firsteng = Nationalidentificationnumber.ToString().Substring(0, 1);
            
            int index = Array.IndexOf(Checkeng, Firsteng);
            int Firsteng2num = 0;
            int Asciiruler = 55;

            if (index > -1)
            {
                foreach (var Asciitransfer in Firsteng)
                {
                    Firsteng2num = Asciitransfer - Asciiruler;
                }
            }
            else
            {
                Label2.Text += "無效值！！！";
            }

            int eng1 = Convert.ToInt32(Convert.ToString(Firsteng2num).Substring(0, 1));
            int eng2 = Convert.ToInt32(Convert.ToString(Firsteng2num).Substring(1, 1));
            int num1 = Convert.ToInt32(Nationalidentificationnumber.Substring(1, 1));
            int num2 = Convert.ToInt32(Nationalidentificationnumber.Substring(2, 1));
            int num3 = Convert.ToInt32(Nationalidentificationnumber.Substring(3, 1));
            int num4 = Convert.ToInt32(Nationalidentificationnumber.Substring(4, 1));
            int num5 = Convert.ToInt32(Nationalidentificationnumber.Substring(5, 1));
            int num6 = Convert.ToInt32(Nationalidentificationnumber.Substring(6, 1));
            int num7 = Convert.ToInt32(Nationalidentificationnumber.Substring(7, 1));
            int num8 = Convert.ToInt32(Nationalidentificationnumber.Substring(8, 1));
            int num9 = Convert.ToInt32(Nationalidentificationnumber.Substring(9, 1));
            int Certification = (10 - (((eng1 * 1) + (eng2 * 9) + (num1*8) + (num2 * 7) + (num3 * 6) + (num4 * 5) + (num5 * 4) + (num6 * 3) + (num7 * 2) + (num8 * 1)) % 10));
            if (Certification == num9)
            {
                Label2.Text += "有效值！！！";
            }
            else 
            {
                Label2.Text += "無效值！！！";
            }
        }
    }
}