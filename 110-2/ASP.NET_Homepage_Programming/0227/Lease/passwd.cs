using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lease
{
    public partial class passwd : Form
    {
        public passwd()
        {
            InitializeComponent();
        }

        private void passwd_Load(object sender, EventArgs e)
        {

        }

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form1 f = new Form1();//產生Form2的物件，才可以使用它所提供的Method
            this.Visible = false;//將Form1隱藏。由於在Form1的程式碼內使用this，所以this為Form1的物件本身
            f.Visible = true;//顯示第二個視窗
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(textBox1.Text) == true || string.IsNullOrEmpty(textBox5.Text) == true)
            {
                MessageBox.Show("請輸入帳號及密碼", "系統提示");
            }
            else
            {
                MessageBox.Show("帳號或密碼錯誤請再試一次", "系統提示");
            }
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            MessageBox.Show("請聯繫管理者或五分鐘後再是一次！！！", "系統提示");
        }
    }
}
