using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace WindowsFormsApplication1
{
    public class EvDML1
    {
        public void EvEkle(EvBilgi Ev )
        {/* Form1.conn.Open();
        SqlCommand kontrol = new SqlCommand("SELECT * FROM Evbilgi", Form1.conn);
        SqlDataReader oku = kontrol.ExecuteReader();
        while (oku["YerBilgiIdFK"].ToString()==Ev.YerBilgiIdFK.ToString() && oku["BulunduguKat"].ToString()==Ev.BulunduguKat.ToString() && oku["OdaSayisi"].ToString()==Ev.OdaSayi.ToString)
        {
            
        }


        Form1.conn.Close();*/
        Form1.conn.Open();
            SqlCommand YeniEvEkle = new SqlCommand("INSERT INTO EvBilgi VALUES('"+Ev.YerBilgiIdFK+"','"+Ev.BulunduguKat+"','"+Ev.OdaSayi+"','"+Ev.MetreKare+"')", Form1.conn);
           YeniEvEkle.ExecuteNonQuery();
           Form1.conn.Close();
        }

    }
}
