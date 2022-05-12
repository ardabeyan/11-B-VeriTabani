using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
    public static    SqlConnection conn = new SqlConnection("Data Source=LAB5-OGRETMEN;Initial Catalog=ardabeyanarslan1227VT;User ID=ardabeyanarslan1227;Password=1");
  
        void Listele() {
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM EvBilgi",Form1.conn);
        adp.Fill(dt);
        dataGridView1.DataSource = dt;
    
    
    
    }
        
        private void button1_Click(object sender, EventArgs e)
        {
            EvDML1 Edm = new EvDML1();
            EvBilgi Levbilgi = new EvBilgi();
            Levbilgi.YerBilgiIdFK = Convert.ToInt32(textBox1.Text);
            Levbilgi.BulunduguKat = Convert.ToInt32(comboBox3.Text);
            Levbilgi.OdaSayi = comboBox2.Text;
            Levbilgi.MetreKare = Convert.ToInt32(comboBox1.Text);
            MessageBox.Show("eklendi");
            Edm.EvEkle(Levbilgi);
            Listele();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Listele();
        }
    }
}
