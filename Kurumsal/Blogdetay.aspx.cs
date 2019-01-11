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
    public partial class Blogdetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=.;Database=website; Integrated Security=SSPI;");

           


            int Id = Convert.ToInt16(Request.QueryString["blogId"]);

            //  Response.Write("değişken değeri= "+Request.QueryString["blogId"]);

            SqlCommand Da = new SqlCommand("SELECT * FROM tbl_Blog WHERE blogId = " + Id + "", conn);


           // SqlCommand Da = new SqlCommand("SELECT * FROM tbl_Blog,tbl_Kategori WHERE blogId = " + Id + "= kategoriId", conn);

            SqlCommand kategori = new SqlCommand("SELECT * FROM tbl_Blog");


            SqlDataReader reader;
            SqlDataReader sqlDataReader2;
       
     
           
            try
            {
               conn.Open();

                reader = Da.ExecuteReader();
                rpt_blogdetay.DataSource = reader;
                rpt_blogdetay.DataBind();

            


            }
            catch
            {
                Response.Write(" " +
                    " bir hata oluştu");
            }
            finally
            {

                conn.Close();
            }


            try
            {
                conn.Open();
                

                sqlDataReader2 = kategori.ExecuteReader();
                rpt_lastposts.DataSource = sqlDataReader2;
                rpt_lastposts.DataBind();


            }
            catch
            {
                Response.Write(" " +
                    "son yazılar kısmında  bir hata oluştu");
            }
            finally
            {

                conn.Close();
            }

        }
    }
}