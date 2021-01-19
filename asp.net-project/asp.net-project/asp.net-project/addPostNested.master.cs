using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace asp.net_project
{
    public partial class NestedMasterPage5 : System.Web.UI.MasterPage
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
            cmd.CommandText = "select * from admins where username ='" + unbase64 + "'";
            SqlDataReader reader = cmd.ExecuteReader();
            if (!reader.HasRows)
            {
                Response.Redirect("logowanie.aspx");
            }


            con.Close();
        }

        protected void Add_Post(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO users (Author,Title,Content,Thumbnail,Published,Category)VALUES('"+author.Value+ "','" + title.Value + "','" + postContent.Value + "','" + thumbnail.Value + "',GETDATE(),'"+category.Value+"')";
            SqlDataReader reader = cmd.ExecuteReader();
            con.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}