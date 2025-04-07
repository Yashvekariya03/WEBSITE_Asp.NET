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
    public partial class testimonials : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Kanku_db.mdf;Integrated Security=True";
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
           
            filldatalist();
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }

        DataSet fillTestimonials()
        {
            da = new SqlDataAdapter("SELECT * FROM Testimonial_Tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }


        void filldatalist()
        {
            
            dlTestimonials.DataSource = fillTestimonials();
            dlTestimonials.DataBind();
        }
    }
}