using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eTicaret
{
    public partial class urunozel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.QueryString["PRODUCT_ID"]))
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                string id = Request.QueryString["PRODUCT_ID"];
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-TC405AQ\SQLEXPRESS;Initial Catalog=YokYok;Integrated Security=True;");
                con.Open();
                SqlCommand cmd = new SqlCommand("Select*from PRODUCT_ where PRODUCT_ID= " + id, con);
                DataTable dt = new DataTable();
                tekrar.DataSource = dt;
                tekrar.DataBind();
                con.Close();
            }
            
        }
    }
}