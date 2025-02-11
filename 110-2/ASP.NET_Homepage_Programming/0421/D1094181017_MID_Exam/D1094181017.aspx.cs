using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace D1094181017_MID_Exam
{
    public partial class D1094181017 : System.Web.UI.Page
    {
        String Department;
        int Gender, Rnd_output999;
        int Number= 0;
        int j=0, SumA, SumB, SumC, SumD, d0, d1, d2, d3, d4, d5, d6, d7;
        String[] Rnd_0 = { "0", "2", "4", "6", "8" };
        String[] Rnd_1 = { "1", "3", "5", "7", "9" };

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Department = Convert.ToString(DropDownList1.SelectedValue); //科系選擇
            Gender = Convert.ToInt32(RadioButtonList1.SelectedValue); //性別選擇
            Random Rnd = new Random(); //宣告迴圈
            int Index0 = Rnd.Next(Rnd_0.Length);
            int Index1 = Rnd.Next(Rnd_1.Length);
            Rnd_output999 = Rnd.Next(1, 999); //0~9迴圈
            switch (Department)
            {
                case "A":
                    Number = 2;
                    break;
                case "B":
                    Number = 3;
                    break;
                case "C":
                    Number = 5;
                    break;
                case "D":
                    Number = 7;
                    break;
                case "E":
                    Number = 11;
                    break;
                case "F":
                    Number = 13;
                    break;
                case "H":
                    Number = 17;
                    break;
                case "I":
                    Number = 19;
                    break;
                case "J":
                    Number = 23;
                    break;
            }
            if (Number <10)
            {
                d0 = 0;
                d1 = Number;
            }
            else
            {
                d0 = Convert.ToInt32(Convert.ToString(Number).Substring(0, 1));
                d1 = Convert.ToInt32(Convert.ToString(Number).Substring(1, 1));
            }

            if (Gender == 0)
            {
                d2 = Index0;
            }
            if (Gender == 1)
            {
                d2 = Index1;
            }
            d3 = Convert.ToInt32(Convert.ToString(Rnd_output999).Substring(0, 1));
            if (Rnd_output999 < 10)
            {
                d4 = 0;
            }
            else
            {
                d4 = Convert.ToInt32(Convert.ToString(Rnd_output999).Substring(1, 1));
            }
            if (Rnd_output999 < 100)
            {
                d5 = 0;
            }
            else
            {
                d5 = Convert.ToInt32(Convert.ToString(Rnd_output999).Substring(2, 1));
            }
            SumA = (d0 * 1 + d1 * 8 + d2 * 1 + d3 * 0 + d4 * 1 + d5 * 7);
            SumB = 100 - SumA % 100;
            d6 = Convert.ToInt32(Convert.ToString(SumB).Substring(0, 1));
            if (SumB < 10)
            {
                d6 = 0;
                d7 = Convert.ToInt32(Convert.ToString(SumB).Substring(0, 1));
            }
            else 
            {
                d6 = Convert.ToInt32(Convert.ToString(SumB).Substring(0, 1));
                d7 = Convert.ToInt32(Convert.ToString(SumB).Substring(1, 1));
            }
            
            SumC = (d0 * 1 + d1 * 8 + d2 * 1 + d3 * 0 + d4 * 1 + d5 * 7 + d6 + d7);
            SumD = 100 - d6 * 10 - d7;
            Label1.Text = Department + Convert.ToString(d2) + Convert.ToString(d3) + Convert.ToString(d4) + Convert.ToString(d5) + Convert.ToString(d6) + Convert.ToString(d7) + "</br>" + ":" + SumD;




        }
    }
}