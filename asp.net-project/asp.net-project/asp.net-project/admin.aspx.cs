﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace asp.net_project
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["hash"] == null)
            {
                Response.Redirect("logowanie.aspx");
            }    
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            string unbase64 = System.Text.Encoding.UTF8.GetString(System.Convert.FromBase64String(Request.QueryString["hash"]));
            cmd.CommandText = "select * from admins where username ='"+unbase64+"'" ;
            SqlDataReader reader = cmd.ExecuteReader();
           if(!reader.HasRows)
            {
                Response.Redirect("logowanie.aspx");
            }
    

            con.Close();


        }

<<<<<<< HEAD
=======
        protected void Add_Post(object sender, EventArgs e)
        {
            Response.Redirect("./addPost.aspx");
        }

        protected void Mange_Users(object sender, EventArgs e)
        {
            Response.Redirect("./manageUsers.aspx");
        }

>>>>>>> 2096ab23c7e5d0878a7a3bbc1ad2256468e67d7a
    }
}