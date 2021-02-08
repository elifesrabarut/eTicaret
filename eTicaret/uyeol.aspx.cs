using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eTicaret
{
    public partial class uyeol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-TC405AQ\SQLEXPRESS;Initial Catalog=YokYok;Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into USER_(USERNAME_,NAME_,SURNAME_,EPOSTA_,PASSWORD_)values(@username,@name,@surname,@mail,@password)",con);
            cmd.Parameters.AddWithValue("@username",kad.Text);
            cmd.Parameters.AddWithValue("@name", ad.Text);
            cmd.Parameters.AddWithValue("@surname", kSoy.Text);
            cmd.Parameters.AddWithValue("@mail", mail.Text);
            cmd.Parameters.AddWithValue("@password", sfr2.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}