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
    public partial class Hakkimda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=.;Database=website; Integrated Security=SSPI;");

            SqlCommand cmdhakkimda = new SqlCommand("SELECT * FROM tbl_Hakkimda",conn);

             
            SqlDataReader readerhakkimda;
            
            try
            {
                conn.Open();
                readerhakkimda=cmdhakkimda.ExecuteReader();
                rpt_hakkımda.DataSource = readerhakkimda;
                rpt_hakkımda.DataBind();
                


            }
            catch {
                Response.Write("hakkimda kısmında hata var");
            }
            finally {
                conn.Close();
            }

            //sssssssssssssssssssssssskilllllllllllllllllllllllllllll
            SqlCommand cmdskill = new SqlCommand("SELECT * FROM tbl_Skill", conn);
            SqlDataReader skillread;
            try
            {
                conn.Open();
                skillread = cmdskill.ExecuteReader();
                rpt_skill.DataSource = skillread;
                rpt_skill.DataBind();
                 
            }
            catch
            {
                Response.Write("skill kısmında hata var");
            }
            finally
            {
                conn.Close();
            }

        }
    }
}