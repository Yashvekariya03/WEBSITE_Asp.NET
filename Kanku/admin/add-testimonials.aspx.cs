using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Kanku.admin
{
    public partial class add_testimonials : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Kanku_db.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }
        void imgupload()
        {
            fnm = "../img/" + testimonial_img.FileName;
            testimonial_img.SaveAs(Server.MapPath(fnm));
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            imgupload();
            cmd = new SqlCommand("insert into Testimonial_Tbl (T_Name, T_Data, T_Image) values('" + testimonial_name.Text + "','" + testimonial_data.Text + "', '" + fnm + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Testimonial added successfully');</script>");
            Response.Write("<script>window.location.href='manage-testimonials.aspx'</script>");
        }
    }
}