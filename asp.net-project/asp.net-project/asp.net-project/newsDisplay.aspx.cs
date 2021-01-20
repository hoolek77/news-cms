using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace asp.net_project
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "SELECT * from users where PID = "+Request.QueryString["PID"];
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                title.InnerHtml = reader.GetString(reader.GetOrdinal("Title"));
                author.InnerHtml = reader.GetString(reader.GetOrdinal("Author"));
                content.InnerHtml = reader.GetString(reader.GetOrdinal("Content"));
                img.Attributes.Add("src", reader.GetString(reader.GetOrdinal("Thumbnail")));
            }
            con.Close();
        }
    }
}