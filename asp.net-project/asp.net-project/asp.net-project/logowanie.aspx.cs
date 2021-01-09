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

        protected void AdminLogin(object sender, EventArgs e)
        {
            string username = login.Value;
            string pwd = password.Value;
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from admins where username = '"+username+"' AND passwd ='"+pwd+"'";
            SqlDataReader reader = cmd.ExecuteReader();
            if(reader.HasRows)
            {
                Response.Redirect("admin.aspx?"+username);
            }
            con.Close();
        }
    }
}