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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=.;Database=website; Integrated Security=SSPI;");
          
            SqlCommand cmdaltyazi = new SqlCommand("SELECT *  FROM tbl_Altyazi", conn);
           // SqlCommand cmdslider = new SqlCommand("SELECT fotoUrl, slider_Baslik, sliderYazi  FROM tbl_Slider", conn);
            //SqlDataReader readerslider;
            SqlDataReader readeraltyazi;
            
            try
            {
                //Bağlantımı açıyorum.
                conn.Open();
                //Reader nesnem için sql komutumu çalıştırıyorum
                readeraltyazi = cmdaltyazi.ExecuteReader();
              //  readerslider = cmdslider.ExecuteReader();
                //Repeater nesnemi verime bağlama işlemi yapıyorum.
              //  rpt_slider.DataSource = readerslider;
              //  rpt_slider.DataBind();
                altYazi.DataSource = readeraltyazi;
                altYazi.DataBind();
                //Reader nesnemi kapatıyorum.
                readeraltyazi.Close();

            }
            catch
            {

                Response.Write("altyazı da bir hata oluştu");
            }
            finally {
                conn.Close();
            }

            //kkkkkkkkkkkkkkkkkkkkkkkkkolonnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
            String kolonadi = Request.QueryString["kolonBaslik"];

            SqlCommand cmdkolon = new SqlCommand("SELECT * FROM tbl_Kolon WEHERE ", conn);

            SqlDataReader kolonread;
            try {
                conn.Open();
                kolonread = cmdkolon.ExecuteReader();
                kolon.DataSource = kolonread;
                kolon.DataBind();
            }
            catch {
                Response.Write("kolon da bir hata oluştu");
            }
            finally {

                conn.Close();
            }

            // gggggggggggggggggggggaleriiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
            SqlCommand cmdgaleri = new SqlCommand("SELECT * FROM tbl_Blog", conn);

            SqlDataReader galeriread;
            try
            {
                conn.Open();
                galeriread = cmdgaleri.ExecuteReader();
                rpt_galeri.DataSource = galeriread;
                rpt_galeri.DataBind();
            }
            catch
            {
                Response.Write("galeri de bir hata oluştu");
            }
            finally
            {

                conn.Close();
            }


            //ssssssssssssssssssssssssssssssssssliderrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
             
            SqlCommand cmdslider = new SqlCommand("SELECT * FROM tbl_Slider ", conn);
            
            SqlDataReader sliderread;

         
            try
            {
                conn.Open();

                sliderread = cmdslider.ExecuteReader();
               
                rpt_slider.DataSource = sliderread;
                rpt_slider.DataBind();
            }
            catch
            {
                Response.Write("slider debir hata oluştu");
            }
            finally
            {

                conn.Close();
            }




            //sssssssssssssssssssssssssssssssssssosyalllllllmedyaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
             
            SqlCommand cmdsosyal = new SqlCommand("SELECT genelSiteFacebook,genelSiteTwitter,genelSiteYoutube,genelSiteLinkedin FROM tbl_Genel ", conn);

            SqlDataReader sosyalread;
             
            try
            {
                conn.Open();

                sosyalread = cmdsosyal.ExecuteReader();

                rpt_sosyal.DataSource = sosyalread;
                rpt_sosyal.DataBind();
            }
            catch
            {
                Response.Write("genel de bir hata oluştu");
            }
            finally
            {

                conn.Close();
            }


            //ssssssssssssssssssssssssssssssoneklenennnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
             //SqlCommand cmdson = new SqlCommand("SELECT blogFotoUrl,blogBaslik,blogOzet,blogEklenmeTarihi FROM tbl_Blog ", conn);
           SqlCommand cmdson = new SqlCommand("SELECT TOP 3 * FROM tbl_Blog Order by blogId desc", conn);

             

            SqlDataReader sonread;

            try
            {
                conn.Open();

                sonread = cmdson.ExecuteReader();

                rpt_soneklenen.DataSource = sonread;
                rpt_soneklenen.DataBind();
            }
            catch
            {
                Response.Write("blog son eklenen de bir hata oluştu");
            }
            finally
            {

                conn.Close();
            }


            //hhhhhhhhhhhhhhhhhhhhhhhhhhhhh kolon düzenleme  hhhhhhhhhhhhhhhhhhhh


         

        }
    }
}