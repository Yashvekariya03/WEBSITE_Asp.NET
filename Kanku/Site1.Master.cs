using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kanku
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void imgbtnProfile_Click(object sender, ImageClickEventArgs e)
        {
            if(Session["user_id"]!=null)
            {
                Response.Redirect("profile.aspx");
            }
            else
            {
                Response.Redirect("login_form.aspx");
            }
        }
        protected void imgbtnCart_Click(object sender, ImageClickEventArgs e)
        {
            
                Response.Redirect("cart.aspx");
        }
        protected void imgbtnWishlist_Click(object sender, ImageClickEventArgs e)
        {
                Response.Redirect("wishlist.aspx");
        }
    }
}