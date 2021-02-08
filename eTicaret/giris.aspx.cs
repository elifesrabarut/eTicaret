using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eTicaret
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"]!=null)
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (kad.Text==""|| sifrem.Text=="")
            {
                durum.Text = "Alanlar boş bırakılamaz";
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-TC405AQ\SQLEXPRESS;Initial Catalog=YokYok;Integrated Security=True;");
                con.Open();
                SqlCommand cmd = new SqlCommand("Select*from USER_ Where USERNAME_=@ad and PASSWORD_=@sifre", con);
                cmd.Parameters.AddWithValue("@ad", kad.Text);
                cmd.Parameters.AddWithValue("@sifre", sifrem.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session.Add("kullanici", dr[1].ToString());
                    Session.Timeout = 1;
                    Response.Redirect("default.aspx");    
                    //Session["Adi"] = dr["Adi"].ToString();
                    
                    //Response.Redirect("default.aspx");
                }
                else
                {
                    durum.Text = "Kullancı ad veya şifre Hatalı";
                }
            }
           
        }
    }
}