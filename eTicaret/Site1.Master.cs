using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eTicaret
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"]==null)
            {
                kull.InnerHtml = "Merhaba Ziyaretçi";
                cikisd.Visible = false;            }
            else
            {
                kull.InnerHtml = "Merhaba" + Session["Kullanici"].ToString();
                girisd.Visible = false;
                cikisd.Visible = true;
            }
        }
    }
}