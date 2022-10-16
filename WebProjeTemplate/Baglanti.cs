using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebProjeTemplate
{
    public class Baglanti
    {
        public SqlConnection con;
        public Baglanti()
        {
            con = new SqlConnection("Data Source=DESKTOP-4EVACPL;Initial Catalog=db_Polikinlik;Integrated Security=True");
        }
    }
}