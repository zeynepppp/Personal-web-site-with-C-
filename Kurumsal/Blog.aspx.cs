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
    public partial class Blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
             SqlConnection conn = new SqlConnection("Server=.;Database=website; Integrated Security=SSPI;");


            SqlCommand cmd = new SqlCommand("SELECT *FROM tbl_Blog", conn);

            SqlDataReader reader;

            try
            {   
                

                conn.Open();
                reader = cmd.ExecuteReader();

                rpt_blog.DataSource = reader;
                rpt_blog.DataBind();
            
            }
            catch
            {
                Response.Write("bir hata olustu...");

            }
            finally
            {

                conn.Close();
            }


    

        }
    }
}