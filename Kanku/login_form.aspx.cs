﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Kanku
{
    public partial class login_form1 : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Kanku_db.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }

        DataSet getdata()
        {                
                da = new SqlDataAdapter("select * from User_Form_Tbl where Email='" + email.Text + "' and Password='" + password.Text + "' ", con);
                ds = new DataSet();
                da.Fill(ds);
                return ds;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(email.Text)) && !(string.IsNullOrEmpty(password.Text)))
            {
                ds = new DataSet();
                ds = getdata();
                if(ds.Tables[0].Rows.Count > 0)
                {
                    Session["user_id"] = ds.Tables[0].Rows[0][0];
                    Session["user_name"] = (ds.Tables[0].Rows[0][1]).ToString();
                    Session["user_email"] = (ds.Tables[0].Rows[0][2]).ToString();
                    Session["user_type"] = (ds.Tables[0].Rows[0][4]).ToString();

                    if (Session["user_type"].ToString() == "user")
                    {
                        Response.Redirect("index.aspx");
                    }
                    else //admin
                    {
                        Response.Redirect("admin/dashboard.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please enter valid Eamil or Password!');</script>");
                }
                

                
            }
            else
            {
                Response.Write("<script>alert('please Enter Eamil or Password!');</script>");
            }
        }
    }
}