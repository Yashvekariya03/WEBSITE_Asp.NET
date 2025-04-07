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
    public partial class update_testimonials : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Kanku_db.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                filltext();
            }

        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }
        void imgupload()
        {
            if (testimonial_img.HasFile)
            {
                fnm = "../img/" + testimonial_img.FileName;
                testimonial_img.SaveAs(Server.MapPath(fnm));
            }

        }
        DataSet select(int id)
        {
            da = new SqlDataAdapter("select * from Testimonial_Tbl where T_Id='" + id + "' ", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        void filltext()
        {
            if (Request.QueryString["id"] != null)
            {
                id = Convert.ToInt32(Request.QueryString["id"]);
                ds = select(id);
                testimonial_id.Text = id.ToString();
                testimonial_name.Text = (ds.Tables[0].Rows[0][1]).ToString();
                testimonial_data.Text = (ds.Tables[0].Rows[0][2]).ToString();
                fnm = (ds.Tables[0].Rows[0][3]).ToString();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            // Get the original values from the database
            DataSet originalData = select(Convert.ToInt32(Request.QueryString["id"]));
            string originalName = originalData.Tables[0].Rows[0]["T_Name"].ToString();
            string originalT_Data = originalData.Tables[0].Rows[0]["T_Data"].ToString();
            string originalImage = originalData.Tables[0].Rows[0]["T_Image"].ToString();

            // Check if the values have been changed
            bool nameChanged = (testimonial_name.Text != originalName);
            bool dataChanged = (testimonial_data.Text != originalT_Data);
            bool imageChanged = testimonial_img.HasFile;

            // If either the name or image has been changed, update the database
            if (nameChanged || imageChanged || dataChanged)
            {
                imgupload();
                string newName = nameChanged ? testimonial_name.Text : originalName;
                string newData = nameChanged ? testimonial_data.Text : originalT_Data;
                string newImage = imageChanged ? fnm : originalImage;

                cmd = new SqlCommand("update Testimonial_Tbl set T_Name='" + newName + "',T_Data='"+newData+"', T_Image='" + newImage + "' where T_Id='" + Request.QueryString["id"] + "'", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Testimonial Details updated');</script>");

            }
            else
            {
                Response.Write("<script>alert('No changes detected');</script>");
            }
            Response.Write("<script>window.location.href='manage-testimonials.aspx'</script>");
        }
    }
}