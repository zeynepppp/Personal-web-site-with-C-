using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Kurumsal
{

    class Veritabani
    {

        public static SqlConnection conn= new SqlConnection("Server=.;Database=website; Integrated Security=SSPI;");

        public void connectt() {

            //
            conn = new SqlConnection("Server=.;Database=website; Integrated Security=SSPI;");
            conn.Open();



        }







    }
}