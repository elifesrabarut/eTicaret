using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;

namespace eTicaret
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-TC405AQ\SQLEXPRESS;Initial Catalog=YokYok;Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select*from PRODUCT_", con);
            DataTable dt = new DataTable();
            tekrarlayici.DataSource = dt;
            tekrarlayici.DataBind();
            con.Close();
            

        }
    }
}