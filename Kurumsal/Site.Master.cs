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
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=.;Database=website; Integrated Security=SSPI;");


            //ggggggggggggggggggggenellllllllllllllllllllllllllllllllllllllll
            SqlCommand cmd = new SqlCommand("SELECT *FROM tbl_Genel",conn);

            SqlDataReader reader;
          
            try
            {

                conn.Open();
                reader = cmd.ExecuteReader();

                rpt_usttel.DataSource = reader;
                rpt_usttel.DataBind();
                rpt_logo.DataSource = reader;
                rpt_logo.DataBind();
                rpt_msosyal.DataSource = reader;
                rpt_msosyal.DataBind();


            }
            catch
            {
                Response.Write("bir hata olustu...");

            }
            finally {

                conn.Close();
            }
            //llllllllllllllllogoooooooooooooooooooooooooooooooooooooooooooo

            try
            {

                conn.Open();
                reader = cmd.ExecuteReader();
 
                rpt_logo.DataSource = reader;
                rpt_logo.DataBind();
                 

            }
            catch
            {
                Response.Write("logo da bir hata olustu...");

            }
            finally
            {

                conn.Close();
            }

            //ssssssssssssssssssssssssssssosoyalllllllllllllllllllllllllllllll
            try
            {

                conn.Open();
                reader = cmd.ExecuteReader();
                 
                rpt_msosyal.DataSource = reader;
                rpt_msosyal.DataBind();


            }
            catch
            {
                Response.Write("sosyal m kısmında bir hata olustu...");

            }
            finally
            {

                conn.Close();
            }

            //fffffffffffffffffffffoterrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
            try
            {

                conn.Open();
                reader = cmd.ExecuteReader();

                rpt_Iletisim.DataSource = reader;
                rpt_Iletisim.DataBind();


            }
            catch
            {
                Response.Write("fotor iletisim kısmında bir hata olustu...");

            }
            finally
            {

                conn.Close();
            }

           
            try
            {

                conn.Open();
                reader = cmd.ExecuteReader();

                rpt_title.DataSource = reader;
                rpt_title.DataBind();


            }
            catch
            {
                Response.Write("title kısmında bir hata olustu...");

            }
            finally
            {

                conn.Close();
            }
            //sssssssssssssssssssssssskilllllllllllllllllllllllllllllllllllllll

            SqlCommand cmdskl = new SqlCommand("SELECT * FROM  tbl_Skill",conn);
            SqlDataReader skillread;
            try
            {

                conn.Open();
                skillread = cmdskl.ExecuteReader();

                rpt_skills.DataSource =skillread;
                rpt_skills.DataBind();


            }
            catch
            {
                Response.Write("skill kısmında bir hata olustu...");

            }
            finally
            {

                conn.Close();
            }


            //mmmmmmmmmmmmmmmmmmmmmmmmmmmenuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu


            SqlCommand cmdlist = new SqlCommand("SELECT * FROM  tbl_Blog", conn);
            SqlDataReader blogread ;
            
            try
            {

                conn.Open();
                blogread  = cmdlist.ExecuteReader();

                rpt_menuist.DataSource = blogread ;
                rpt_menuist.DataBind();
                rpt_menugaleri.DataSource = blogread;
                rpt_menugaleri.DataBind();

            }
            catch
            {
                Response.Write("skill kısmında bir hata olustu...");

            }
            finally
            {

                conn.Close();
            }
            //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmegeeeeeeeeeeeeeeaaaaaaaaaaaaaaaaaa

         
            SqlDataReader blogread2;
            try
            {

                conn.Open();
                blogread2 = cmdlist.ExecuteReader();

                rpt_menugaleri.DataSource = blogread2;
                rpt_menugaleri.DataBind();
                Response.Write("mega menu kısmında bir hata olusmadı...");
            }
            catch
            {
                Response.Write("mega menu kısmında bir hata olustu...");

            }
            finally
            {

                conn.Close();
            }

        }
    }
}