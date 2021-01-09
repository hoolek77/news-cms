using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace asp.net_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login(object sender, EventArgs e)
        {
            string username = login.Value;
            string pwd = password.Value;
            bool userCheck = false;
            bool pwdCheck = false;
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from admins";
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                if(username == reader.GetString(reader.GetOrdinal("username")))
                {
                    userCheck = true;
                }
                if(pwd == reader.GetString(reader.GetOrdinal("pwd")))
                {
                    pwdCheck = true;
                }
            }
            if(pwdCheck && userCheck)
            {
                Response.Redirect("admin.aspx");
            }
            con.Close();
        }
    }
}