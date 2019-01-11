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
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=.;Database=website; Integrated Security=SSPI;");

            SqlCommand cmd = new SqlCommand("SELECT *FROM tbl_Genel",conn);

            SqlDataReader rdr;

            try {

                conn.Open();
            rdr = cmd.ExecuteReader();

            rpt_Iletisim.DataSource = rdr;
            rpt_Iletisim.DataBind();
            }
            catch {
                Response.Write("vir sorun olustu..");
            }
            finally {
                conn.Close();

            }
           



        }
    }
}